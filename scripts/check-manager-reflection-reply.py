#!/usr/bin/env python3
"""Validate /manager-reflection-reply safety and wiring."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

CHECKS = {
    ".github/skills/manager-reflection-reply/SKILL.md": [
        "copy-ready Workday response text",
        "Reference grounding check",
        "GitHub evidence grounding check",
        "Peer feedback grounding check",
        "Manager review notes",
        "reflections/.manager-reflection-reply-state.json",
        "reflections/manager-replies/YYYY-MM-DD-employee-name-manager-response.md",
        "AI draft note",
        "Continue iterating",
        "validate facts, adjust judgment and tone, add human taste",
        "Save the draft by default",
        "Do not write the drafted manager response, grounding footers, or rendered manager review notes to the state file.",
        "Parse the paste into questions and answers",
        "Accept raw Workday paste",
        "This will draft a Workday manager response to the employee's Reflection.",
        "Use a guided intake rather than asking for everything at once.",
        "Ask for the employee's name first.",
        "peer feedback requested by the employee",
        "Provided and used / Provided but not used / Not provided / Waiting",
        "Do not include peer names or quoted peer text in any footer unless the manager pastes the exact text and explicitly asks for direct attribution.",
        "names and quotes omitted unless explicitly requested",
        "Status: Successful / Not available / Not used",
        "Status: Successful / Not requested / Not available / Not used",
        "Reference competency or scope signal",
        "Evidence signal",
        "Ask before searching GitHub",
        "permission to search GitHub",
        "Employee GitHub handle if the manager grants GitHub search permission",
        "Do not include private source notes",
        "Do not infer performance ratings, promotion readiness, compensation outcomes, calibration sentiment, or hidden manager judgment.",
        "Do not include private source notes, critique packets, 1:1 prompts, rubric tables, or evidence maps in the final output.",
        "1:1 prompts",
        "ratings",
        "promotion",
        "compensation",
        "calibration",
        "private calibration PDFs",
        "Do not use private calibration PDFs",
        "Manual validation prompt shape",
        "reference/career-stage-profiles/curated/README.md",
        "reference/career-stage-profiles/curated/product-org/product-operations.md",
        "reference/career-stage-profiles-summary.md",
        "reference/product-operations-csp.txt",
        "Legacy Product Org reference available",
    ],
    "examples/manager-reflection-reply.md": [
        "synthetic calibration material",
        "not copied from a private portfolio",
        "Copy only the response text into Workday",
        "Reference grounding check",
        "GitHub evidence grounding check",
        "Peer feedback grounding check",
        "Manager review notes",
        "AI draft note",
        "Continue iterating",
        "Saved draft:",
        "reflections/manager-replies/",
        "names and quotes omitted",
        "The manager asked for any blind spots",
        "Raw Workday paste",
        "peer feedback",
        "- Status: Successful",
        "- Sources used:",
        "- Applied to:",
        "Reference competency or scope signal",
        "Evidence signal",
        "- How it shaped the draft:",
        "Thin-evidence variant",
        "Do not copy",
    ],
    "examples/README.md": [
        "manager-reflection-reply.md",
    ],
    "README.md": [
        "/manager-reflection-reply",
        "Workday manager response",
        "reflections/.manager-reflection-reply-state.json",
        "reflections/manager-replies",
        "peer feedback",
    ],
    ".github/skills/help/SKILL.md": [
        "/manager-reflection-reply",
        "Workday manager response",
        "raw Workday paste",
        "temporary resume state",
    ],
    ".github/skills/get-started/SKILL.md": [
        "/manager-reflection-reply",
    ],
    ".github/copilot-instructions.md": [
        "Manager Reflection Reply",
        "Reference grounding check",
        "GitHub evidence grounding check",
        "Peer feedback grounding check",
        "reflections/.manager-reflection-reply-state.json",
        "reflections/manager-replies",
        "parse questions from answers",
        "whether GitHub evidence was `Successful`, `Not requested`, `Not available`, or `Not used`",
        "Ask before searching GitHub",
        "Legacy Product Org reference available",
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

    skill_path = ROOT / ".github/skills/manager-reflection-reply/SKILL.md"
    if skill_path.exists():
        skill_text = skill_path.read_text(encoding="utf-8")
        forbidden_skill_phrases = [
            "Output a heading like `Manager response draft`",
            "Save the manager response",
            "Generate manager-private notes",
            "Create 1:1 prompts",
            "This workflow will produce one Workday manager response only",
            '"draft_response"',
            '"final_response"',
        ]
        for phrase in forbidden_skill_phrases:
            if phrase in skill_text:
                failures.append(f".github/skills/manager-reflection-reply/SKILL.md contains forbidden phrase: {phrase}")

    example_path = ROOT / "examples/manager-reflection-reply.md"
    if example_path.exists():
        example_text = example_path.read_text(encoding="utf-8")
        forbidden_example_markers = [
            "github.com/",
            "slack.com/",
            "Reflections_Questions",
            "Hemory",
            "### Manager response draft",
        ]
        for marker in forbidden_example_markers:
            if marker in example_text:
                failures.append(f"examples/manager-reflection-reply.md contains non-synthetic marker: {marker}")
        saved_draft_pattern = re.compile(
            r"reflections/manager-replies/\d{4}-\d{2}-\d{2}-[a-z0-9-]+-manager-response\.md"
        )
        if not saved_draft_pattern.search(example_text):
            failures.append(
                "examples/manager-reflection-reply.md missing saved draft path pattern: "
                "reflections/manager-replies/YYYY-MM-DD-employee-name-manager-response.md"
            )

    for failure in failures:
        print(f"  ❌ {failure}")

    if failures:
        return 1

    print(f"  ✅ /manager-reflection-reply safety and wiring checked in {len(CHECKS)} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
