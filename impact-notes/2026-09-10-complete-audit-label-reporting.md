# Complete Audit Label Reporting and Reusable Action

**Date:** 2026-09-10

## Work moment

I independently identified and fixed a defect in the audit issue label validator that prevented it from reporting all known label errors in one issue. The action limited reports to 50 error lines, so resolving one report and rerunning the workflow could reveal another subset of errors that had already existed. In one observed sequence, the workflow opened three successive reports, with some audit issues appearing across reports.

I identified this defect during the same audit-label report cleanup process that exposed a separate [report-resolution problem](2026-09-02-audit-label-report-resolution.md). The two problems were related by discovery context but distinct in behavior: this change fixed incomplete error reporting, while the companion change fixed report issues remaining open after their errors were resolved.

Before removing the limit, I investigated why it existed so I would not discard an intentional platform safeguard. The team did not know or remember the original reason and suggested it might relate to GitHub's issue-body limit. I asked the Issues team in Slack and confirmed that an issue body can contain up to 65,536 characters. Based on the length of existing error lines, I calculated that a report could hold roughly 550 lines, substantially more than the original 50-line limit.

I removed the restriction so the workflow could report all errors in one run at the observed scale. During review, I was asked whether the action could use ESM imports and exports. Rather than changing the repository's top-level non-ESM package configuration, which would require broad changes, I converted the validator into a standalone module with its own `package.json` and dependencies. I also used Copilot to rewrite a large, difficult-to-read Bash section in JavaScript so it matched the rest of the module.

## Why it mattered

Incomplete reports created a frustrating remediation loop. During my investigation, I had to run the report three times before all missing labels were disclosed. People could fix every error shown and still discover another report containing errors that could have been reported initially.

The workflow normally runs automatically once a week rather than being run manually after each remediation. This means omitted errors could remain hidden until the following week's run, and another subset could appear after that set was fixed. Across successive weekly cycles, the validator could therefore lag behind the actual work needed to keep labels correct and up to date. The benefit of this change is not fewer scheduled workflow runs; it is complete and more current reporting from each run.

The original action also depended on the repository's top-level package configuration and passed values through environment variables. Making it standalone reduced coupling, allowed its dependencies to be upgraded independently, and made its inputs and outputs easier to understand.

## What changed

- The validator no longer truncates audit label error reports at 50 lines.
- A single workflow run can now report all errors at the observed scale instead of revealing them across successive issues.
- The weekly automated report now provides a more complete view of missing labels, reducing the risk that existing errors remain undisclosed until later weekly cycles.
- Governance maintainers can correct the full known set of label errors together and have a more accurate, up-to-date view of audit labeling state.
- The action became a self-contained ESM module with its own `package.json` and dependencies.
- The top-level repository has one fewer dependency, reducing coupling when its dependencies require breaking upgrades.
- The action can install and update its own dependencies independently.
- Explicit action outputs replaced environment-variable-based result passing, making data flow easier to follow.
- A large Bash section was rewritten in JavaScript to align with the rest of the module and improve readability.

## Evidence

- [Complete audit label reporting implementation](https://github.com/github/accessibility-scorecard/pull/5375)
- [First incomplete report](https://github.com/github/accessibility-governance/issues/3671)
- [Second report after another validation run](https://github.com/github/accessibility-governance/issues/3693)
- [Third report after another validation run](https://github.com/github/accessibility-governance/issues/3694)
- [Companion fix for closing resolved report issues](2026-09-02-audit-label-report-resolution.md)
- Confirmation from the Issues team that GitHub issue bodies support up to 65,536 characters.

| Measure                    |                                                      Before |                                                                                    After |
| -------------------------- | ----------------------------------------------------------: | ---------------------------------------------------------------------------------------: |
| Report capacity            |                                              50 error lines |    Roughly 550 error lines based on the 65,536-character limit and existing line lengths |
| Observed workflow outcome  |       Errors surfaced across three successive report issues |                              All errors can be reported in one run at the observed scale |
| Weekly reporting freshness | Existing errors could remain hidden until later weekly runs | The full known error set can be reported in the current weekly run at the observed scale |

## How I worked

I noticed a repeated operational pattern while closing audit label reports and traced it back to an implementation limit rather than treating each new report as unrelated work. I investigated the reason for the limit before changing it, sought historical context from the team, and then consulted the Issues team for an authoritative platform constraint. I used that constraint and real report-line lengths to make a data-informed capacity decision.

I also responded to review feedback without expanding the change into a repository-wide ESM migration. Isolating the action in its own package satisfied the module requirement while reducing dependencies and improving reusability. I used Copilot to accelerate the mechanical Bash-to-JavaScript rewrite and kept the module in one language for readability and maintenance.

## Who benefited

- Accessibility Governance team members who review and resolve audit issue label reports.
- Service teams whose audit issues need complete and accurate labeling.
- Maintainers of the accessibility scorecard repository, who now have a less coupled and more self-contained action.
- Stakeholders who rely on complete audit-label state for accessibility governance reporting.

## Questions to answer later

- How many successive report issues and weeks of delayed error discovery are avoided over a quarter after removing the 50-line limit?
- What is the largest report generated since the change, and has any report approached the 65,536-character limit?
- How much maintainer time is saved by independent dependency management and clearer action outputs?
