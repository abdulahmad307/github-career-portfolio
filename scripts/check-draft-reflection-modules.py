#!/usr/bin/env python3
"""Validate that /draft-reflection stays decomposed but complete."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SKILL_DIR = ROOT / ".github/skills/draft-reflection"
SKILL_FILE = SKILL_DIR / "SKILL.md"

MODULES = [
    "session-and-safety.md",
    "setup-and-evidence.md",
    "drafting-and-feedback.md",
    "pressure-test-and-finalize.md",
]

REQUIRED_SKILL_PHRASES = [
    "Required workflow modules",
    "Client-compatible pause pattern",
    "Non-negotiable quality boundaries",
    "Phase map",
]

REQUIRED_MODULE_PHRASES = {
    "session-and-safety.md": [
        "State file location",
        "Untrusted data handling",
        "Late-arriving peer feedback",
    ],
    "setup-and-evidence.md": [
        "Phase 1: Setup and peer feedback kickoff",
        "Phase 2: Evidence gathering",
        "Gap-filling interview",
    ],
    "drafting-and-feedback.md": [
        "Phase 3: Draft generation and save",
        "Draft formatting rules",
        "Save pasted peer feedback",
    ],
    "pressure-test-and-finalize.md": [
        "Phase 4: Pressure test",
        "Phase 5: Refinement loop",
        "Phase 6: Finalize",
        "Special circumstances",
    ],
}


def main() -> int:
    failures: list[str] = []

    skill_text = SKILL_FILE.read_text(encoding="utf-8")
    for module in MODULES:
        if f"`{module}`" not in skill_text:
            failures.append(f"SKILL.md does not reference {module}")
        if not (SKILL_DIR / module).exists():
            failures.append(f"Missing draft-reflection module: {module}")

    for phrase in REQUIRED_SKILL_PHRASES:
        if phrase not in skill_text:
            failures.append(f"SKILL.md missing required section: {phrase}")

    for module, phrases in REQUIRED_MODULE_PHRASES.items():
        path = SKILL_DIR / module
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        for phrase in phrases:
            if phrase not in text:
                failures.append(f"{module} missing required guidance: {phrase}")

    all_text = "\n".join(
        path.read_text(encoding="utf-8") for path in [SKILL_FILE, *(SKILL_DIR / module for module in MODULES)] if path.exists()
    )
    if "vscode_askQuestions" in all_text:
        failures.append("/draft-reflection must not depend on VS Code-only prompt tooling")

    print(f"  Draft-reflection modules checked: {len(MODULES)}")
    for failure in failures:
        print(f"  ❌ {failure}")

    if failures:
        return 1

    print("  ✅ /draft-reflection modules are present and wired")
    return 0


if __name__ == "__main__":
    sys.exit(main())
