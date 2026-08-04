# Synthetic example: manager 1:1 prep

This example is synthetic. It is not real manager-prep material and should not be copied into a private portfolio.

## Purpose

Show how `/prep-1on1` separates private source notes from manager-safe talking points and asks.

## Scenario

The user has one recent impact note about improving a planning workflow, one feedback entry marked `Okay to reuse in manager prep`, and one open manager-calibration question about whether the work shows broader scope.

## Input

```text
Prepare for my next 1:1. I want to discuss whether the kickoff checklist work is strong evidence for broader-scope impact.
```

## Output

```md
### Private Source Notes

- `impact-notes/2026-05-05-project-kickoff-checklist-refresh.md`: Shows a shipped workflow improvement, but final usage signal is still missing.
- `feedback/FY26-Q4-peer-feedback.md`: One approved feedback entry says the decision summary made follow-up clearer.
- `growth-plan/manager-calibration.md`: Open question about whether this work demonstrates broader-scope impact or needs a stronger adoption signal.

### Shareable Talking Points

- I shipped an updated kickoff checklist that clarifies pre-work, owners, blockers, and decisions before planning meetings. Early feedback suggests the decision summary made follow-up clearer, but I still need a stronger usage signal.
- I want to calibrate whether this counts as broader-scope impact or whether it is better framed as operational clarity unless we can show adoption across more teams.

### Goal Check-In

My current goal around improving cross-functional planning is progressing, but the evidence is still strongest on clarity and workflow quality. The next proof point should show whether the checklist changed behavior across more than one group.

### Manager Asks

- Does this kickoff checklist work support the broader-scope growth area we discussed?
- What evidence would make this example stronger for reflection or promotion prep?
- Should I invest in adoption follow-up, or is this sufficient as a smaller operational improvement?

### Optional Follow-Up

- Add any manager calibration from this conversation to `growth-plan/manager-calibration.md`.
- Update the impact note once there is a usage, meeting-quality, or partner-feedback signal.
```

## Why it works

- It keeps source files and evidence gaps private.
- It turns selected evidence into manager-safe talking points.
- It asks for calibration instead of asking the manager to inspect the private repo.
- It does not use feedback unless the sharing preference allows manager prep.

## Privacy note

The example uses generic source paths and synthetic work. It contains no real names, links, issue numbers, PR numbers, Slack URLs, or manager feedback.

## Reuse path

Use this as a pattern for separating what you know privately from what you choose to say in a 1:1.
