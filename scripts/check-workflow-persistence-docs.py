#!/usr/bin/env python3
"""Validate workflow persistence guidance is documented consistently."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

CHECKS = {
    "README.md": [
        "What each workflow saves",
        "`/quarterly-reflection`",
        "`/draft-reflection`",
        "`/manager-reflection-reply`",
        "`/prep-1on1`",
        "temporary resume state",
        "reflections/.manager-reflection-reply-state.json",
        "reflections/manager-replies/YYYY-MM-DD-employee-name-manager-response.md",
    ],
    ".github/copilot-instructions.md": [
        "Workflow Persistence Policy",
        "Durable artifacts",
        "Temporary working state",
        "One-off prep output",
        "reflections/.manager-reflection-reply-state.json",
        "reflections/manager-replies/YYYY-MM-DD-employee-name-manager-response.md",
    ],
    ".github/skills/quarterly-reflection/SKILL.md": [
        "Persistence",
        "durable private career record",
        "reflections/FYXX-QN-reflection.md",
    ],
    ".github/skills/draft-reflection/SKILL.md": [
        "How this walkthrough saves progress",
        "reflections/.draft-reflection-state.json",
        "reflections/FYXX-HN-workday-draft.md",
    ],
    ".github/skills/manager-reflection-reply/SKILL.md": [
        "Session persistence",
        "reflections/.manager-reflection-reply-state.json",
        "save a Markdown copy by default",
        "reflections/manager-replies/YYYY-MM-DD-employee-name-manager-response.md",
        "Do not write the drafted manager response, grounding footers, or rendered manager review notes to the state file.",
    ],
    ".github/skills/prep-1on1/SKILL.md": [
        "Persistence",
        "Do not auto-save shareable talking points",
        "growth-plan/1on1-prep/YYYY-MM-DD.md",
    ],
    ".github/skills/help/SKILL.md": [
        "What gets saved",
        "temporary state",
        "temporary resume state",
        "does not auto-save shareable talking points",
    ],
}


def main() -> int:
    failures: list[str] = []

    for relative_path, phrases in CHECKS.items():
        path = ROOT / relative_path
        if not path.exists():
            failures.append(f"Missing file: {relative_path}")
            continue

        text = path.read_text(encoding="utf-8")
        for phrase in phrases:
            if phrase not in text:
                failures.append(f"{relative_path} missing phrase: {phrase}")

    for failure in failures:
        print(f"  ❌ {failure}")

    if failures:
        return 1

    print(f"  ✅ Workflow persistence guidance checked in {len(CHECKS)} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
