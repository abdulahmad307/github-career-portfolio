#!/usr/bin/env python3
"""Ensure career-stage curated summaries have source fallbacks."""

from __future__ import annotations

import sys
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RAW_DIR = ROOT / "reference/career-stage-profiles"
CURATED_DIR = RAW_DIR / "curated"
PRODUCT_ORG_DIR = CURATED_DIR / "product-org"

PRODUCT_ORG_EXTENSIONS = {
    "business-program-management.md": {
        "family": "Business Program Management",
        "fallbacks": [ROOT / "reference/business-program-management-csp.txt"],
        "required_profiles": ["| P4 | G9 |", "| P5 | G10 |"],
    },
    "developer-advocacy.md": {
        "family": "Developer Advocacy",
        "fallbacks": [ROOT / "reference/developer-advocacy-csp.txt"],
        "required_profiles": ["| P4 | G9 |", "| P5 | G10 |"],
    },
    "product-management.md": {
        "family": "Product Management",
        "fallbacks": [
            ROOT / "reference/pm8-g8-m3.txt",
            ROOT / "reference/pm9-g9-p4.txt",
            ROOT / "reference/pm10-g10-p5.txt",
            ROOT / "reference/pm11-g11-p6.txt",
        ],
        "required_profiles": ["| P4 | G9 |", "| P5 | G10 |", "| P6 | G11 |"],
    },
    "product-operations.md": {
        "family": "Product Operations",
        "fallbacks": [ROOT / "reference/product-operations-csp.txt"],
        "required_profiles": ["| P4 | G9 |", "| P5 | G10 |"],
    },
    "technical-program-management.md": {
        "family": "Technical Program Management",
        "fallbacks": [ROOT / "reference/technical-program-management-csp.txt"],
        "required_profiles": ["| P4 | G9 |", "| P5 | G10 |"],
    },
    "technical-writing.md": {
        "family": "Technical Writing",
        "fallbacks": [ROOT / "reference/technical-writing-csp.txt"],
        "required_profiles": ["| P4 | G9 |", "| P5 | G10 |"],
    },
}


def main() -> int:
    raw_profiles = sorted(path for path in RAW_DIR.glob("*.md") if path.name != "README.md")
    curated_profiles = sorted(path for path in CURATED_DIR.glob("*.md") if path.name != "README.md")

    failures: list[str] = []

    for raw in raw_profiles:
        curated = CURATED_DIR / raw.name
        if not curated.exists():
            failures.append(f"Missing curated summary for {raw.relative_to(ROOT)}")
            continue

        text = curated.read_text(encoding="utf-8")
        if "status: curated-summary" not in text:
            failures.append(f"{curated.relative_to(ROOT)} missing curated-summary status")
        if f"[`../{raw.name}`](../{raw.name})" not in text:
            failures.append(f"{curated.relative_to(ROOT)} missing raw fallback link")
        if "Profile summaries could not be extracted cleanly" in text:
            failures.append(f"{curated.relative_to(ROOT)} has no extracted grade progression")

    extra = {path.name for path in curated_profiles} - {path.name for path in raw_profiles}
    for name in sorted(extra):
        failures.append(f"Curated summary has no raw counterpart: {name}")

    for name, metadata in PRODUCT_ORG_EXTENSIONS.items():
        curated = PRODUCT_ORG_DIR / name
        if not curated.exists():
            failures.append(f"Missing Product Org curated extension: {curated.relative_to(ROOT)}")
            continue

        text = curated.read_text(encoding="utf-8")
        for raw_fallback in metadata["fallbacks"]:
            if not raw_fallback.exists():
                failures.append(f"Missing Product Org raw fallback: {raw_fallback.relative_to(ROOT)}")
                continue
            fallback = os.path.relpath(raw_fallback, curated.parent)
            if f"]({fallback})" not in text:
                failures.append(f"{curated.relative_to(ROOT)} missing raw fallback link to {fallback}")
        if "status: curated-product-org-summary" not in text:
            failures.append(f"{curated.relative_to(ROOT)} missing curated-product-org-summary status")
        for required_profile in metadata["required_profiles"]:
            if required_profile not in text:
                failures.append(f"{curated.relative_to(ROOT)} missing required progression: {required_profile}")

    product_org_index = PRODUCT_ORG_DIR / "README.md"
    if not product_org_index.exists():
        failures.append("Missing Product Org curated extension index")
    else:
        index_text = product_org_index.read_text(encoding="utf-8")
        main_index_text = (CURATED_DIR / "README.md").read_text(encoding="utf-8")
        for name, metadata in PRODUCT_ORG_EXTENSIONS.items():
            family = metadata["family"]
            if family not in index_text or name not in index_text:
                failures.append(f"Product Org curated extension index does not list {family}")
            if family not in main_index_text or f"product-org/{name}" not in main_index_text:
                failures.append(f"Main curated index does not list Product Org extension {family}")

    print(f"  Raw profiles checked: {len(raw_profiles)}")
    print(f"  Curated summaries checked: {len(curated_profiles)}")
    print(f"  Product Org extensions checked: {len(PRODUCT_ORG_EXTENSIONS)}")

    for failure in failures:
        print(f"  ❌ {failure}")

    if failures:
        return 1

    print("  ✅ Career-stage curated summaries have source fallbacks")
    return 0


if __name__ == "__main__":
    sys.exit(main())
