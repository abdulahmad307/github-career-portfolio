# Completing Herb support to restore accessibility scorecard workflows

**Date:** 2026-11-23 (captured; work completed about a week earlier)

## Work moment

During my FR rotation, I took [github/code-stats-collector#1556](https://github.com/github/code-stats-collector/pull/1556) to the finish line. The PR had been started by another contributor and then picked up by Kendall. When her FR week ended, she asked me to finish it as the incoming FR.

The PR was almost done, but several high- and medium-severity Copilot review comments remained. I worked through each issue individually, addressed each in a separate commit, marked the PR ready for review, and merged it.

## Why it mattered

The main github and github-ui repositories had migrated from ERB to Herb for linting, but code-stats-collector had not been updated to account for that change. Its linting automation workflows were failing and no longer reporting data to third-party destinations.

That data feeds workflows and apps that generate issues and other automations for teams at GitHub. My accessibility team also uses it to report and calculate service scorecard scores. The missing data had caused our accessibility scorecard automations to fail for several days.

Finishing the existing PR was therefore not just review cleanup: it addressed an upstream dependency that was blocking our scoring workflows.

## What changed

- I completed and merged the existing PR, addressing the outstanding Copilot review issues rather than starting a replacement implementation.
- After the merge, the accessibility scorecard automations started working properly again.
- As of November 23, we have had a full week of successful scorecard scoring workflows since the fix.

## Evidence

- [Merged PR, github/code-stats-collector#1556](https://github.com/github/code-stats-collector/pull/1556): the existing change I completed following the FR handoff.
- Review work: I addressed each outstanding high- or medium-severity Copilot review issue individually and kept each fix in a separate commit.
- Outcome based on my observation:

| Signal | Before | After |
|---|---|---|
| Accessibility scorecard scoring workflows | Failing for several days because upstream linting data was not being reported | Working again after the merge, with a full week of successful scoring workflows as of November 23 |

## How I worked

- **Ownership and continuity:** I picked up the work from Kendall at the FR rotation boundary and carried the existing PR through the remaining review work to merge, preserving progress from earlier contributors.
- **AI leverage with deliberate review:** I went through each Copilot review comment, worked to understand the underlying problem, and used Copilot to help address each issue individually.
- **Reversibility:** I intentionally kept each issue's fix in a separate commit so I could return to and undo a specific change if needed, without undoing unrelated fixes.
- **Dependency awareness:** I understood the PR in the context of the upstream linting migration and its downstream impact on the accessibility team's scorecard scoring workflows.

## Who benefited

My accessibility team and the teams whose service scorecard scores depend on the data supplied by code-stats-collector. The confirmed recovery captured here is for the accessibility scorecard automations; effects on other consumers have not been recorded.

## Questions to answer later

- Which review issues were most consequential, and what specific failure or risk did each fix address?
- Which successful workflow runs or scoring outputs best document the week of recovery?
