#!/bin/bash
# Update safe workflow files from the canonical career-portfolio-starter.
# Personal portfolio content (impact notes, feedback, reflections, goals,
# calibration) is never touched.
#
# Usage:
#   ./scripts/update-safe-files.sh
#
# Authentication (in priority order):
#   1. gh CLI (if installed and authenticated for github.com)
#   2. GITHUB_TOKEN environment variable
#   3. Unauthenticated (public repos only)
#
# Override the source repo by setting environment variables:
#   PORTFOLIO_ORG=my-org PORTFOLIO_REPO=my-starter ./scripts/update-safe-files.sh

set -euo pipefail

ORG="${PORTFOLIO_ORG:-github}"
REPO="${PORTFOLIO_REPO:-career-portfolio-starter}"
BRANCH="${PORTFOLIO_BRANCH:-main}"
API_BASE="https://api.github.com/repos/${ORG}/${REPO}/contents"
RAW_BASE="https://raw.githubusercontent.com/${ORG}/${REPO}/${BRANCH}"
TREE_REF="${BRANCH//\//%2F}"
TREE_API="https://api.github.com/repos/${ORG}/${REPO}/git/trees/${TREE_REF}?recursive=1"

# --- Auth detection -----------------------------------------------------------

AUTH_METHOD="none"

if command -v gh &>/dev/null && gh auth status --hostname github.com &>/dev/null 2>&1; then
  AUTH_METHOD="gh"
elif [[ -n "${GITHUB_TOKEN:-}" ]]; then
  AUTH_METHOD="token"
fi

# --- Download helper ----------------------------------------------------------

download_file() {
  local file="$1"
  local tmp="$2"

  case "${AUTH_METHOD}" in
    gh)
      gh api --hostname github.com \
        "repos/${ORG}/${REPO}/contents/${file}?ref=${BRANCH}" \
        -H "Accept: application/vnd.github.raw" \
        > "$tmp" 2>/dev/null
      ;;
    token)
      curl -fsSL \
        -H "Authorization: token ${GITHUB_TOKEN}" \
        -H "Accept: application/vnd.github.raw" \
        "${API_BASE}/${file}?ref=${BRANCH}" \
        -o "$tmp" 2>/dev/null
      ;;
    none)
      curl -fsSL "${RAW_BASE}/${file}" -o "$tmp" 2>/dev/null
      ;;
  esac
}

fetch_repo_tree() {
  local tmp="$1"

  case "${AUTH_METHOD}" in
    gh)
      gh api --hostname github.com \
        "repos/${ORG}/${REPO}/git/trees/${TREE_REF}?recursive=1" \
        > "$tmp" 2>/dev/null
      ;;
    token)
      curl -fsSL \
        -H "Authorization: token ${GITHUB_TOKEN}" \
        "${TREE_API}" \
        -o "$tmp" 2>/dev/null
      ;;
    none)
      curl -fsSL "${TREE_API}" -o "$tmp" 2>/dev/null
      ;;
  esac
}

# --- Connectivity check -------------------------------------------------------

verify_repo_access() {
  local tmp
  tmp=$(mktemp)
  trap 'rm -f "'"$tmp"'"' RETURN

  if download_file ".portfolio-starter-version" "$tmp"; then
    return 0
  fi

  echo "Error: cannot access ${ORG}/${REPO}." >&2
  case "${AUTH_METHOD}" in
    gh)    echo "  gh CLI is authenticated but could not reach the repo." >&2
           echo "  Verify you have access: gh repo view ${ORG}/${REPO}" >&2 ;;
    token) echo "  GITHUB_TOKEN is set but the request failed." >&2
           echo "  Verify the token has 'contents: read' scope and SSO authorization." >&2 ;;
    none)  echo "  No credentials found. For private repos:" >&2
           echo "    - Install and authenticate gh CLI: gh auth login" >&2
           echo "    - Or set GITHUB_TOKEN with a PAT that has 'contents: read' scope" >&2 ;;
  esac
  return 1
}

# --- Safe files ---------------------------------------------------------------

# Single files that are starter-owned and safe to refresh in private copies.
ROOT_SAFE_FILES=(
  ".github/copilot-instructions.md"
  "impact-notes/TEMPLATE.md"
  "impact-inbox/README.md"
  "scripts/update-safe-files.sh"
  ".portfolio-starter-version"
  "CHANGELOG.md"
)

# Directories whose upstream files are starter-owned and safe to refresh.
SAFE_DIRECTORIES=(
  ".github/skills"
  "examples"
  "reference"
)

SAFE_FILES=()

add_safe_file() {
  local file="$1"
  local existing

  for existing in "${SAFE_FILES[@]}"; do
    if [[ "$existing" == "$file" ]]; then
      return 0
    fi
  done

  SAFE_FILES+=("$file")
}

parse_tree_files() {
  local tree_file="$1"

  awk -F'"' '
    /"path":/ { path = $4 }
    /"type": "blob"/ {
      if (path != "") {
        print path
      }
      path = ""
    }
  ' "$tree_file"
}

build_safe_files() {
  local tree_file
  local listed_file
  local safe_file
  local safe_dir

  for safe_file in "${ROOT_SAFE_FILES[@]}"; do
    add_safe_file "$safe_file"
  done

  tree_file=$(mktemp)
  if ! fetch_repo_tree "$tree_file"; then
    rm -f "$tree_file"
    echo "Error: cannot read file list from ${ORG}/${REPO} (${BRANCH})." >&2
    return 1
  fi

  while IFS= read -r listed_file; do
    for safe_dir in "${SAFE_DIRECTORIES[@]}"; do
      case "$listed_file" in
        "$safe_dir"/*) add_safe_file "$listed_file" ;;
      esac
    done
  done < <(parse_tree_files "$tree_file" | sort)

  rm -f "$tree_file"
}

# Starter-owned files that were removed or replaced by newer releases.
# These are safe to delete from private copies because they are workflow
# plumbing, not personal career evidence.
DEPRECATED_FILES=(
  ".github/prompts/get-started.prompt.md"
  ".github/prompts/help.prompt.md"
  ".github/prompts/new-impact-note.prompt.md"
  ".github/prompts/capture-feedback.prompt.md"
  ".github/prompts/discover-impact.prompt.md"
)

# --- Main ---------------------------------------------------------------------

echo "Updating safe files from ${ORG}/${REPO} (${BRANCH})..."
case "${AUTH_METHOD}" in
  gh)    echo "  (authenticated via gh CLI)" ;;
  token) echo "  (authenticated via GITHUB_TOKEN)" ;;
  none)  echo "  (unauthenticated -- if the repo is private, install gh CLI or set GITHUB_TOKEN)" ;;
esac
echo ""

verify_repo_access

build_safe_files

UPDATED=0
FAILED=0
REMOVED=0

for f in "${SAFE_FILES[@]}"; do
  mkdir -p "$(dirname "$f")"
  tmp=$(mktemp)
  if download_file "$f" "$tmp" && [[ -s "$tmp" ]]; then
    mv "$tmp" "$f"
    echo "  Updated $f"
    UPDATED=$((UPDATED + 1))
  else
    rm -f "$tmp"
    echo "  SKIPPED $f (not found upstream)"
    FAILED=$((FAILED + 1))
  fi
done

for f in "${DEPRECATED_FILES[@]}"; do
  if [[ -f "$f" ]]; then
    rm -f "$f"
    echo "  Removed deprecated $f"
    REMOVED=$((REMOVED + 1))
  fi
done

if [[ -d ".github/prompts" ]] && [[ -z "$(find ".github/prompts" -mindepth 1 -print -quit)" ]]; then
  rmdir ".github/prompts"
fi

echo ""
echo "Done. ${UPDATED} files updated, ${FAILED} skipped, ${REMOVED} deprecated files removed."
echo "Personal portfolio content was not changed."
