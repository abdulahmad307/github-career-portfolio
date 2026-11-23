# Choosing a proportionate fix for axe scan labeling failures

**Date:** 2026-11-12 (work completed)
**Captured:** 2026-11-23

## Work moment

During my FR rotation, I investigated failures in the axe scanning workflow after we added a step to label newly opened scan issues. I identified token expiry as the likely cause, explored two fixes with Copilot, and helped the team choose and merge a small token-refresh change instead of a substantially more complex long-running-job solution.

## Why it mattered

Helen, my manager, reported that the workflow had gone from occasional failures to failing consistently. The failures affected the longer-running job that scans the most URLs. The new labeling step was making REST API requests after the token appeared to have expired.

We needed a practical fix without introducing maintenance and review effort disproportionate to the problem. A token lasts one hour, so I also wanted to understand whether refreshing it before labeling was sufficient or merely moving the same failure later.

## What changed

- We merged a four-line change that creates a fresh token before the labeling step in [github/accessibility-scorecard#5558](https://github.com/github/accessibility-scorecard/pull/5558).
- I compared that fix with an alternative implementation in [github/accessibility-scorecard#5555](https://github.com/github/accessibility-scorecard/pull/5555), which changed seven files and added roughly 250 lines.
- After I shared the pros and cons and consulted the team, we agreed that the simpler fix was sufficient for now because labeling was not expected to take a full hour.
- The decision kept the change small and used a familiar Actions workflow pattern, rather than taking on the broader implementation's review, testing, and maintenance requirements.

I tested the workflow with the simple fix before merging, and we confirmed it worked. Following the fix on November 12, the axe workflow has run successfully every day for 11 days, as of November 23.

## Evidence

- [Failing workflow job logs](https://github.com/github/accessibility-scorecard/actions/runs/43201331818/job/131125521084): I observed REST API requests failing with 401 errors in the longer-running scan job, pointing to token expiry.
- [Merged simple fix, github/accessibility-scorecard#5558](https://github.com/github/accessibility-scorecard/pull/5558): four-line change creating a fresh token before labeling.
- Pre-merge validation: I tested the workflow with the simple solution, and we confirmed it worked before merging.
- Post-merge outcome: 11 days of successful daily axe workflow runs following the November 12 fix, as of November 23, based on my observation. Before the fix, the workflow had been failing consistently.
- [Alternative implementation, github/accessibility-scorecard#5555](https://github.com/github/accessibility-scorecard/pull/5555): seven files changed and roughly 250 lines added, based on my comparison.
- [actions/create-github-app-token documentation](https://github.com/actions/create-github-app-token): my investigation found a notice directing users to a solution for long-running jobs.
- [Long-running-job guidance, actions/create-github-app-token#121](https://github.com/actions/create-github-app-token/issues/121#issuecomment-2043214796): the suggestion I asked Copilot to explore in the alternative PR.
- Team consultation: I wrote up the pros and cons of both approaches, and the team agreed that the simpler solution was the right choice for now.

## How I worked

- **Diagnosis:** I traced the failures through the logs and noticed that only the job scanning the most URLs was affected. The combination of runtime and 401 responses led me to token expiry as the likely root cause.
- **AI leverage:** Before fixing the issue, I asked Copilot to assess the problem independently, and it reached the same conclusion. I then used Copilot to attempt both the quick fix and the documented long-running-job approach so I could compare concrete implementations.
- **Technical judgment:** I did not merge the first plausible fix immediately. I investigated its one-hour limit and explored a more robust option, then judged the alternatives on review effort, testing requirements, maintainability, and the actual expected duration of labeling, not just line count.
- **Validation:** I tested the simpler solution in the workflow before merging, so the decision was supported by a working run as well as the implementation comparison.
- **Collaboration and clarity:** I shared the trade-offs with the team and explained why the more complex option might be justified, while recommending the simpler approach for our current needs.
- **Explicit limitation:** Refreshing the token before labeling could still fail if labeling itself exceeded one hour. I accepted that boundary because labeling was not expected to take that long, rather than treating the small fix as an unlimited-duration solution.

When Kendall asked, "Why would we opt for the more complex solution?", I responded:

> 1. its the documented solution (so recommended?)
> 2. it's a less brittle option; if we add a new token before labeling, we could (in theory) still run into this problem if labeling takes more than an hour.
>
> but again, i think for now, knowing labeling won't take the full hour, the simple solution should be sufficient

## Who benefited

The team maintaining and relying on the accessibility-scorecard axe scanning workflow, particularly the job scanning the most URLs. The smaller change also limited the additional code the team would need to review, test, and maintain.

## Questions to answer later

- How long do scanning and labeling take in practice, especially relative to the one-hour token lifetime?
