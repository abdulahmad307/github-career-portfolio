# Example: Copilot Onboarding Redesign

> **This is an example impact note.** Delete it or replace it after you've created your first real one using `/new-impact-note`.

**Date:** 2026-02-20

## Quick Capture

Redesigned the onboarding to 3 steps with an inline demo that triggers a real Copilot suggestion in step 1.

## Why It Mattered

New Copilot users were dropping off during initial setup. Activation analytics showed 40% of users who started the onboarding flow abandoned it before completing their first suggestion. The existing flow had 7 steps, required a VS Code restart, and did not surface the "wow moment" until step 5.

## What Changed

Launched the redesigned flow on Feb 18. Within two weeks, completion rates nearly doubled and support ticket volume around setup dropped significantly. Three enterprise customers mentioned the improved experience unprompted during scheduled calls.

## Evidence

| Metric | Before | After |
|---|---|---|
| Onboarding completion rate | 40% | 78% |
| Setup-related support tickets | Baseline | Down 60% |
| Enterprise customer calls with positive signal | None captured | 3 in first week |

## How I Worked

Worked with the extensions team on a hot-reload approach to cut the VS Code restart requirement. Chose to prioritize time-to-first-suggestion over comprehensive feature coverage. The trade-off: power users do not see advanced features during onboarding anymore, but they are more likely to find those features on their own after activation.

## Who Benefited

- All new Copilot individual users (estimated ~50K activations/month at current growth)
- Support team (fewer setup-related tickets)
- Sales engineering (shorter demo-to-activation cycle in enterprise pilots)

## Kudos and Feedback

> "The new onboarding is night and day. I set up two interns last week and they were productive in 10 minutes."
> Staff PM, Enterprise team (Slack, 2026-02-25)

> "Love that the suggestion happens immediately. That's the moment people get it."
> Design lead, Copilot (PR review comment)

> 🎉 3 emoji reactions + 12 thread replies on the Git Demos post
