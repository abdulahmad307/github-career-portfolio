#!/usr/bin/env python3
"""Verify impact-note workflow surfaces share the same core evidence fields."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CORE_FIELDS = [
    "Work moment",
    "Why it mattered",
    "What changed",
    "Evidence",
    "How I worked",
    "Who benefited",
]


def normalized_headings(path: Path) -> set[str]:
    text = path.read_text(encoding="utf-8")
    headings = set()
    for match in re.finditer(r"^##+\s+(.+?)\s*$", text, re.MULTILINE):
        heading = re.sub(r"\s+\(optional\)$", "", match.group(1), flags=re.IGNORECASE)
        headings.add(heading.casefold())
    return headings


def missing_fields(label: str, path: Path) -> list[str]:
    headings = normalized_headings(path)
    missing = [field for field in CORE_FIELDS if field.casefold() not in headings]
    if missing:
        print(f"  ❌ {label} missing: {', '.join(missing)}")
    else:
        print(f"  ✅ {label} includes all core fields")
    return missing


def main() -> int:
    failures = 0

    checks = [
        ("impact note template", ROOT / "impact-notes/TEMPLATE.md"),
        ("impact note example", ROOT / "examples/impact-note.md"),
    ]

    for label, path in checks:
        failures += len(missing_fields(label, path))

    skill_text = (ROOT / ".github/skills/new-impact-note/SKILL.md").read_text(encoding="utf-8")
    for field in CORE_FIELDS:
        if f"**{field}:**" not in skill_text:
            print(f"  ❌ new-impact-note skill missing field instruction: {field}")
            failures += 1
    if failures == 0:
        print("  ✅ new-impact-note skill includes all core field instructions")

    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
