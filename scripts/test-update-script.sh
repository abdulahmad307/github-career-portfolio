#!/bin/bash
# Tests for scripts/update-safe-files.sh
# Run: ./scripts/test-update-script.sh
#
# Tests syntax, arithmetic safety, atomic writes, auth detection,
# and SAFE_FILES completeness.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
UPDATE_SCRIPT="$REPO_ROOT/scripts/update-safe-files.sh"

PASSED=0
FAILED=0

pass() { echo "  ✅ $1"; PASSED=$((PASSED + 1)); }
fail() { echo "  ❌ $1: $2"; FAILED=$((FAILED + 1)); }

safe_file_present() {
  local path="$1"
  sed -n '/^ROOT_SAFE_FILES=(/,/^)/p' "$UPDATE_SCRIPT" | grep -Fxq "  \"$path\""
}

safe_directory_present() {
  local path="$1"
  sed -n '/^SAFE_DIRECTORIES=(/,/^)/p' "$UPDATE_SCRIPT" | grep -Fxq "  \"$path\""
}

safe_file_covered() {
  local path="$1"
  local dir

  if safe_file_present "$path"; then
    return 0
  fi

  while IFS= read -r dir; do
    case "$path" in
      "$dir"/*) return 0 ;;
    esac
  done < <(sed -n '/^SAFE_DIRECTORIES=(/,/^)/p' "$UPDATE_SCRIPT" | grep -E '^  "[^"]+"' | sed -E 's/^  "([^"]+)".*/\1/')

  return 1
}

# ---------------------------------------------------------------------------
echo "🔧 Syntax & Structure:"

# Test 1: Script passes bash syntax check
if bash -n "$UPDATE_SCRIPT" 2>/dev/null; then
  pass "Script passes bash -n syntax check"
else
  fail "Script passes bash -n syntax check" "syntax error"
fi

# Test 2: Script is executable
if [[ -x "$UPDATE_SCRIPT" ]]; then
  pass "Script is executable"
else
  fail "Script is executable" "missing +x permission"
fi

# Test 3: Script uses set -euo pipefail
if head -20 "$UPDATE_SCRIPT" | grep -q "set -euo pipefail"; then
  pass "Uses strict mode (set -euo pipefail)"
else
  fail "Uses strict mode" "set -euo pipefail not found"
fi

# ---------------------------------------------------------------------------
echo ""
echo "🔢 Arithmetic Safety (set -e safe counters):"

# Test 4: No ((VAR++)) pattern (unsafe under set -e when VAR=0)
if grep -qE '\(\([A-Z_]+\+\+\)\)' "$UPDATE_SCRIPT"; then
  fail "No unsafe ((VAR++)) arithmetic" "found ((VAR++)) pattern which fails under set -e when VAR=0"
else
  pass "No unsafe ((VAR++)) arithmetic"
fi

# Test 5: Uses safe arithmetic for UPDATED counter
if grep -q 'UPDATED=\$((UPDATED + 1))' "$UPDATE_SCRIPT"; then
  pass "UPDATED counter uses safe arithmetic"
else
  fail "UPDATED counter uses safe arithmetic" "expected UPDATED=\$((UPDATED + 1))"
fi

# Test 6: Uses safe arithmetic for FAILED counter
if grep -q 'FAILED=\$((FAILED + 1))' "$UPDATE_SCRIPT"; then
  pass "FAILED counter uses safe arithmetic"
else
  fail "FAILED counter uses safe arithmetic" "expected FAILED=\$((FAILED + 1))"
fi

# Test 7: Counters increment correctly from 0
TEST_UP=0
TEST_FL=0
TEST_UP=$((TEST_UP + 1))
TEST_FL=$((TEST_FL + 1))
if [[ "$TEST_UP" -eq 1 && "$TEST_FL" -eq 1 ]]; then
  pass "Counters increment from 0 without error"
else
  fail "Counters increment from 0" "TEST_UP=$TEST_UP, TEST_FL=$TEST_FL"
fi

# ---------------------------------------------------------------------------
echo ""
echo "📥 Atomic Write Safety:"

# Test 8: Downloads to temp file, not directly to destination
if grep -q 'tmp=$(mktemp)' "$UPDATE_SCRIPT" && grep -q 'mv "$tmp" "$f"' "$UPDATE_SCRIPT"; then
  pass "Uses atomic write (mktemp + mv)"
else
  fail "Uses atomic write" "expected mktemp + mv pattern for safe file replacement"
fi

# Test 9: Cleans up temp file on failure
if grep -q 'rm -f "$tmp"' "$UPDATE_SCRIPT"; then
  pass "Cleans up temp file on download failure"
else
  fail "Cleans up temp file on download failure" "no rm -f \$tmp in failure path"
fi

# Test 10: Checks downloaded file is non-empty before replacing
if grep -q '\-s "$tmp"' "$UPDATE_SCRIPT"; then
  pass "Checks file is non-empty before replacing (-s)"
else
  fail "Checks file is non-empty" "missing -s check on temp file"
fi

# Test 11: Simulate atomic write preserves existing file on failure
TMPDIR_TEST=$(mktemp -d)
trap 'rm -rf "'"$TMPDIR_TEST"'"' EXIT
echo "original content" > "$TMPDIR_TEST/target.md"
tmp_dl=$(mktemp)
# Simulate failed download (empty file)
: > "$tmp_dl"
if [[ -s "$tmp_dl" ]]; then
  mv "$tmp_dl" "$TMPDIR_TEST/target.md"
else
  rm -f "$tmp_dl"
fi
if [[ "$(cat "$TMPDIR_TEST/target.md")" == "original content" ]]; then
  pass "Failed download does not clobber existing file"
else
  fail "Failed download does not clobber existing file" "file was overwritten"
fi

# ---------------------------------------------------------------------------
echo ""
echo "🔐 Auth Detection:"

# Test 12: Script checks gh auth for github.com specifically
if grep -q 'gh auth status --hostname github.com' "$UPDATE_SCRIPT"; then
  pass "Checks gh auth for github.com (not generic)"
else
  fail "Checks gh auth for github.com" "should scope to --hostname github.com"
fi

# Test 13: Script uses gh api for downloads (not raw.githubusercontent.com with gh token)
if grep -q 'gh api' "$UPDATE_SCRIPT"; then
  pass "Uses gh api for authenticated downloads"
else
  fail "Uses gh api for authenticated downloads" "expected gh api repos/ pattern"
fi

# Test 14: gh api calls are scoped to github.com
if grep 'gh api' "$UPDATE_SCRIPT" | grep -q '\-\-hostname github.com'; then
  pass "gh api calls use --hostname github.com"
else
  fail "gh api calls use --hostname github.com" "gh api without --hostname may hit GHES"
fi

# Test 15: Token-based curl uses API endpoint, not raw.githubusercontent
if grep -A5 'token)' "$UPDATE_SCRIPT" | grep -q 'api.github.com\|API_BASE'; then
  pass "Token auth uses API endpoint (not raw.githubusercontent.com)"
else
  fail "Token auth uses API endpoint" "should use api.github.com for token auth"
fi

# Test 16: Unauthenticated uses raw.githubusercontent.com
if grep -A5 'none)' "$UPDATE_SCRIPT" | grep -q 'raw.githubusercontent.com\|RAW_BASE'; then
  pass "Unauthenticated fallback uses raw.githubusercontent.com"
else
  fail "Unauthenticated fallback uses raw" "expected raw.githubusercontent.com for public repos"
fi

# Test 17: Script verifies repo access before downloading files
if grep -q 'verify_repo_access' "$UPDATE_SCRIPT"; then
  pass "Verifies repo access before downloading files"
else
  fail "Verifies repo access before downloading" "should check access before attempting all files"
fi

# ---------------------------------------------------------------------------
echo ""
echo "📋 SAFE_FILES Completeness:"

# Test 18: Safe file discovery covers expected starter-owned paths
EXPECTED_DIRS=(".github/skills" "reference" "examples")
ALL_DIRS_FOUND=true
MISSING_DIRS=""
for dir in "${EXPECTED_DIRS[@]}"; do
  if ! safe_directory_present "$dir"; then
    ALL_DIRS_FOUND=false
    MISSING_DIRS="$MISSING_DIRS $dir"
  fi
done
EXPECTED_ROOT_FILES=(".github/copilot-instructions.md" "impact-notes/TEMPLATE.md" "impact-inbox/README.md" "scripts/update-safe-files.sh" ".portfolio-starter-version" "CHANGELOG.md")
MISSING_ROOT_FILES=""
for root_file in "${EXPECTED_ROOT_FILES[@]}"; do
  if ! safe_file_present "$root_file"; then
    ALL_DIRS_FOUND=false
    MISSING_ROOT_FILES="$MISSING_ROOT_FILES $root_file"
  fi
done
if $ALL_DIRS_FOUND; then
  pass "Safe file discovery covers expected starter-owned paths"
else
  fail "Safe file discovery covers expected starter-owned paths" "missing dirs:$MISSING_DIRS missing files:$MISSING_ROOT_FILES"
fi

# Test 19: Repo has no prompt files
if [[ ! -d "$REPO_ROOT/.github/prompts" ]] || [[ -z "$(find "$REPO_ROOT/.github/prompts" -type f -print -quit)" ]]; then
  pass "Repo has no prompt files"
else
  fail "Repo has no prompt files" "found files under .github/prompts"
fi

# Test 20: SAFE_FILES includes every skill file
MISSING_SKILLS=""
while IFS= read -r skill; do
  rel="${skill#"$REPO_ROOT"/}"
  if ! safe_file_covered "$rel"; then
    MISSING_SKILLS="$MISSING_SKILLS $rel"
  fi
done < <(find "$REPO_ROOT/.github/skills" -type f | sort)
if [[ -z "$MISSING_SKILLS" ]]; then
  pass "Safe file discovery covers every skill file"
else
  fail "Safe file discovery covers every skill file" "missing:$MISSING_SKILLS"
fi

# Test 21: DEPRECATED_FILES lists retired prompt files
DEPRECATED_PROMPTS=(
  ".github/prompts/get-started.prompt.md"
  ".github/prompts/help.prompt.md"
  ".github/prompts/new-impact-note.prompt.md"
  ".github/prompts/capture-feedback.prompt.md"
  ".github/prompts/discover-impact.prompt.md"
)
MISSING_DEPRECATED_PROMPTS=""
DEPRECATED_FILE_LIST="$(sed -n '/^DEPRECATED_FILES=(/,/^)/p' "$UPDATE_SCRIPT")"
for prompt in "${DEPRECATED_PROMPTS[@]}"; do
  if ! grep -Fxq "  \"$prompt\"" <<< "$DEPRECATED_FILE_LIST"; then
    MISSING_DEPRECATED_PROMPTS="$MISSING_DEPRECATED_PROMPTS $prompt"
  fi
done
if [[ -z "$MISSING_DEPRECATED_PROMPTS" ]]; then
  pass "DEPRECATED_FILES lists retired prompt files"
else
  fail "DEPRECATED_FILES lists retired prompt files" "missing:$MISSING_DEPRECATED_PROMPTS"
fi

# Test 22: Empty prompt directory cleanup checks all entries
if grep -q 'find ".github/prompts" -mindepth 1 -print -quit' "$UPDATE_SCRIPT"; then
  pass "Empty prompt directory cleanup checks all entries"
else
  fail "Empty prompt directory cleanup checks all entries" "expected -mindepth 1 cleanup guard"
fi

# Test 23: SAFE_FILES includes every reference file
MISSING_REFERENCES=""
while IFS= read -r reference; do
  rel="${reference#"$REPO_ROOT"/}"
  if ! safe_file_covered "$rel"; then
    MISSING_REFERENCES="$MISSING_REFERENCES $rel"
  fi
done < <(find "$REPO_ROOT/reference" -type f | sort)
if [[ -z "$MISSING_REFERENCES" ]]; then
  pass "Safe file discovery covers every reference file"
else
  fail "Safe file discovery covers every reference file" "missing:$MISSING_REFERENCES"
fi

# Test 24: Safe file discovery covers every synthetic example file
MISSING_EXAMPLES=""
while IFS= read -r example; do
  rel="${example#"$REPO_ROOT"/}"
  if ! safe_file_covered "$rel"; then
    MISSING_EXAMPLES="$MISSING_EXAMPLES $rel"
  fi
done < <(find "$REPO_ROOT/examples" -type f | sort)
if [[ -z "$MISSING_EXAMPLES" ]]; then
  pass "Safe file discovery covers every synthetic example file"
else
  fail "Safe file discovery covers every synthetic example file" "missing:$MISSING_EXAMPLES"
fi

# Test 25: ROOT_SAFE_FILES entries exist in the repo
MISSING_SAFE_FILES=""
while IFS= read -r safe_path; do
  if [[ ! -f "$REPO_ROOT/$safe_path" ]]; then
    MISSING_SAFE_FILES="$MISSING_SAFE_FILES $safe_path"
  fi
done < <(sed -n '/^ROOT_SAFE_FILES=(/,/^)/p' "$UPDATE_SCRIPT" | grep -E '^  "[^"]+"' | sed -E 's/^  "([^"]+)".*/\1/' | sort)
if [[ -z "$MISSING_SAFE_FILES" ]]; then
  pass "ROOT_SAFE_FILES entries exist in the repo"
else
  fail "ROOT_SAFE_FILES entries exist in the repo" "missing:$MISSING_SAFE_FILES"
fi

# Test 26: SAFE_FILES includes version marker
if safe_file_present ".portfolio-starter-version"; then
  pass "SAFE_FILES includes .portfolio-starter-version"
else
  fail "SAFE_FILES includes .portfolio-starter-version" "version marker missing"
fi

# Test 27: SAFE_FILES includes CHANGELOG
if safe_file_present "CHANGELOG.md"; then
  pass "SAFE_FILES includes CHANGELOG.md"
else
  fail "SAFE_FILES includes CHANGELOG.md" "changelog missing from safe files"
fi

# Test 28: SAFE_FILES does NOT include personal content paths
PERSONAL_PATHS=("impact-notes/" "feedback/" "reflections/" "growth-plan/" "calibration/")
LEAKED=false
LEAKED_PATHS=""
for p in "${PERSONAL_PATHS[@]}"; do
  # Skip TEMPLATE.md which is a safe file
  matches=$(grep "\"$p" "$UPDATE_SCRIPT" | grep -v "TEMPLATE" || true)
  if [[ -n "$matches" ]]; then
    LEAKED=true
    LEAKED_PATHS="$LEAKED_PATHS $p"
  fi
done
if ! $LEAKED; then
  pass "SAFE_FILES excludes personal content directories"
else
  fail "SAFE_FILES excludes personal content" "found personal paths:$LEAKED_PATHS"
fi

# Test 29: SAFE_FILES does not include local editor settings
if safe_file_covered ".vscode/settings.json"; then
  fail "Safe file discovery excludes local editor settings" ".vscode/settings.json should not be updater-managed"
else
  pass "Safe file discovery excludes local editor settings"
fi

# Test 30: Script does not contain hardcoded usernames or personal data
if grep -qi "hemory\|jonjanego\|hemoryphifer" "$UPDATE_SCRIPT"; then
  fail "No hardcoded personal data" "found personal username in script"
else
  pass "No hardcoded personal data in script"
fi

# Test 31: No duplicate generated markdown files are present
DUPLICATE_MARKDOWN=$(find "$REPO_ROOT" -path "$REPO_ROOT/.git" -prune -o -type f -name '* 2.md' -print)
if [[ -z "$DUPLICATE_MARKDOWN" ]]; then
  pass "No duplicate generated markdown files"
else
  fail "No duplicate generated markdown files" "$DUPLICATE_MARKDOWN"
fi

# Test 32: Changelog top version matches .portfolio-starter-version
VERSION_FILE="$(tr -d '[:space:]' < "$REPO_ROOT/.portfolio-starter-version")"
CHANGELOG_VERSION="$(grep -m1 '^## \[' "$REPO_ROOT/CHANGELOG.md" | sed -E 's/^## \[([^]]+)\].*/\1/')"
if [[ "$VERSION_FILE" == "$CHANGELOG_VERSION" ]]; then
  pass "Changelog top version matches .portfolio-starter-version"
else
  fail "Changelog top version matches .portfolio-starter-version" "version=$VERSION_FILE changelog=$CHANGELOG_VERSION"
fi

# ---------------------------------------------------------------------------
echo ""
echo "🤖 CI Quality Gate:"

# Test 33: Quality workflow runs the shared quality gate script
if [[ -f "$REPO_ROOT/.github/workflows/quality.yml" ]] && \
   grep -q './scripts/check-quality-gates.sh' "$REPO_ROOT/.github/workflows/quality.yml"; then
  pass "Quality workflow runs shared quality gate script"
else
  fail "Quality workflow runs shared quality gate script" "expected .github/workflows/quality.yml to run ./scripts/check-quality-gates.sh"
fi

# ---------------------------------------------------------------------------
echo ""
echo "🌐 Live Download Test (requires gh auth):"

# Test 34: Actually download a small file to verify auth works
if command -v gh &>/dev/null && gh auth status --hostname github.com &>/dev/null 2>&1; then
  LIVE_TMP=$(mktemp)
  if gh api "repos/github/career-portfolio-starter/contents/.portfolio-starter-version?ref=main" \
       -H "Accept: application/vnd.github.raw" \
       > "$LIVE_TMP" 2>/dev/null && [[ -s "$LIVE_TMP" ]]; then
    pass "Live download via gh api works (.portfolio-starter-version)"
  else
    fail "Live download via gh api" "gh api request failed or returned empty"
  fi
  rm -f "$LIVE_TMP"
else
  echo "  ⏭️  Skipped (gh CLI not authenticated for github.com)"
fi

# ---------------------------------------------------------------------------
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Results: ${PASSED} passed, ${FAILED} failed"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ "$FAILED" -gt 0 ]]; then
  exit 1
fi
