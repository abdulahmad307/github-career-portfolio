# Accessibility Governance Workflow Automation

**Date:** 2026-08-11

## Work moment

While investigating incorrect labels on audit requests, I recognized that many accessibility governance scripts and workflows were understood only by the small group who ran them. I created a batch of issues to map and improve these processes, then automated two manually run workflows: `update-mas-data` and `report-reaudit-deadlines`.

## Why it mattered

The governance scripts depended on individuals running them from local machines, while their triggers, inputs, outputs, and usage were not broadly visible or documented. This concentration of operational knowledge made bugs harder for others to investigate and created person-dependent maintenance risk.

## What changed

I broke the broader governance problem into child issues covering automation and documentation. I then moved two manual processes into GitHub Actions workflows that now run weekly:

- `update-mas-data` runs automatically instead of relying on an individual to execute local scripts.
- `report-reaudit-deadlines` also runs automatically each week instead of being executed manually.

The Actions run history gives other Hubbers visibility into when these workflows run and provides a shared place to understand and troubleshoot their operation. The workflows still need refinement and documentation, but they reduce manual dependency and establish a more observable foundation.

## Evidence

- [Issue #4195: Incorrect audit-request labels that prompted the investigation](https://github.com/github/accessibility-scorecard/issues/4195)
- [Issue batch #10416: Governance workflow discovery, automation, and documentation work](https://github.com/github/accessibility/issues/10416)
- [PR #3312: Automate `update-mas-data`](https://github.com/github/accessibility-governance/pull/3312)
- [`update-mas-data` weekly Action runs](https://github.com/github/accessibility-governance/actions/workflows/update-mas-data.yml)
- [PR #3360: Automate `report-reaudit-deadlines`](https://github.com/github/accessibility-governance/pull/3360)
- [`report-reaudit-deadlines` weekly Action runs](https://github.com/github/accessibility-governance/actions/workflows/report-reaudit-deadlines.yml)
- Best evidence to add later: time saved, run reliability, number of people who can now troubleshoot the workflows, and links to completed documentation.

## How I worked

I looked beyond the immediate labeling bug and identified a broader maintainability and knowledge-sharing gap. I decomposed an unclear system into tractable discovery, automation, and documentation work, then delivered two concrete workflow improvements while preserving the remaining limitations as follow-up work.

## Who benefited

Hubbers who operate, maintain, or troubleshoot accessibility governance workflows, including people outside the small group who previously ran the scripts locally.

## Questions to answer later

- How much manual time and person-dependent risk did the two weekly automations remove?
- What reliability issues or refinements remain after observing the Action runs?
- Which workflow inputs, outputs, triggers, and troubleshooting steps still need documentation?
