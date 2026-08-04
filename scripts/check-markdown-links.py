#!/usr/bin/env python3
"""Check local Markdown links and anchors without requiring dependencies."""

from __future__ import annotations

import re
import string
import sys
from pathlib import Path
from urllib.parse import unquote, urlparse

ROOT = Path(__file__).resolve().parents[1]
LINK_PATTERN = re.compile(r"(?<!!)\[[^\]]+\]\(([^)]+)\)")
HEADING_PATTERN = re.compile(r"^(#{1,6})\s+(.+?)\s*$")


def is_external(target: str) -> bool:
    parsed = urlparse(target)
    return bool(parsed.scheme) or target.startswith("mailto:")


def split_target(raw_target: str) -> tuple[str, str]:
    target = raw_target.strip()
    if not target:
        return "", ""
    if " " in target and not target.startswith("<"):
        target = target.split(" ", 1)[0]
    if target.startswith("<") and target.endswith(">"):
        target = target[1:-1]
    path, _, fragment = target.partition("#")
    return unquote(path), unquote(fragment)


def github_anchor_slug(heading: str) -> str:
    heading = re.sub(r"<[^>]+>", "", heading).strip().lower()
    allowed = string.ascii_lowercase + string.digits + " -_"
    heading = "".join(ch for ch in heading if ch in allowed)
    heading = re.sub(r"\s+", "-", heading)
    heading = re.sub(r"-+", "-", heading).strip("-")
    return heading


def anchors_for(path: Path) -> set[str]:
    anchors: set[str] = set()
    counts: dict[str, int] = {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        match = HEADING_PATTERN.match(line)
        if not match:
            continue
        slug = github_anchor_slug(match.group(2))
        if not slug:
            continue
        count = counts.get(slug, 0)
        counts[slug] = count + 1
        anchors.add(slug if count == 0 else f"{slug}-{count}")
    return anchors


def markdown_files() -> list[Path]:
    return sorted(
        path
        for path in ROOT.rglob("*.md")
        if ".git" not in path.parts
    )


def main() -> int:
    anchor_cache: dict[Path, set[str]] = {}
    failures: list[str] = []
    files = markdown_files()

    for path in files:
        text = path.read_text(encoding="utf-8", errors="replace")
        for match in LINK_PATTERN.finditer(text):
            raw_target = match.group(1)
            target_path, fragment = split_target(raw_target)

            if not target_path and not fragment:
                continue
            if is_external(target_path):
                continue

            if target_path.startswith("/"):
                destination = ROOT / target_path.lstrip("/")
            elif target_path:
                destination = (path.parent / target_path).resolve()
            else:
                destination = path

            try:
                destination.relative_to(ROOT)
            except ValueError:
                failures.append(f"{path.relative_to(ROOT)} -> {raw_target} escapes repo")
                continue

            if target_path and not destination.exists():
                failures.append(f"{path.relative_to(ROOT)} -> {raw_target} missing file")
                continue

            if fragment and destination.suffix.lower() == ".md":
                anchors = anchor_cache.setdefault(destination, anchors_for(destination))
                if fragment.lower() not in anchors:
                    failures.append(f"{path.relative_to(ROOT)} -> {raw_target} missing anchor")

    print(f"  Markdown files checked: {len(files)}")
    print(f"  Local link failures: {len(failures)}")
    for failure in failures:
        print(f"  ❌ {failure}")

    if failures:
        return 1

    print("  ✅ Local Markdown links are valid")
    return 0


if __name__ == "__main__":
    sys.exit(main())
