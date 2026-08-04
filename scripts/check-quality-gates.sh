#!/bin/bash
# Run the canonical starter repo quality checks used by CI.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$REPO_ROOT"

echo "== Updater regression tests =="
./scripts/test-update-script.sh

echo ""
echo "== Markdown link checks =="
python3 ./scripts/check-markdown-links.py

echo ""
echo "== Impact note field checks =="
python3 ./scripts/check-impact-note-fields.py

echo ""
echo "== Curated career profile checks =="
python3 ./scripts/check-curated-career-profiles.py

echo ""
echo "== Draft reflection module checks =="
python3 ./scripts/check-draft-reflection-modules.py

echo ""
echo "== Manager reflection reply checks =="
python3 ./scripts/check-manager-reflection-reply.py

echo ""
echo "== Workflow persistence documentation checks =="
python3 ./scripts/check-workflow-persistence-docs.py

echo ""
echo "== Starter workflow regression checks =="

if grep -RIn "vscode_askQuestions" .github/skills/draft-reflection; then
  echo "Error: /draft-reflection must not depend on VS Code-only prompt tooling." >&2
  exit 1
fi
echo "  ✅ /draft-reflection uses client-compatible pause prompts"

if grep -n '"\.vscode/settings\.json"' scripts/update-safe-files.sh; then
  echo "Error: .vscode/settings.json must not be updater-managed." >&2
  exit 1
fi
echo "  ✅ Updater does not manage .vscode/settings.json"

if [[ ! -f ".github/workflows/quality.yml" ]]; then
  echo "Error: quality workflow is missing." >&2
  exit 1
fi
echo "  ✅ Quality workflow is present"
