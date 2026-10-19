# Axe Parent-Issue Mapping Reliability

**Date:** 2026-10-19

## Work moment

I investigated and fixed a production issue in the axe scanning workflow where some child accessibility issues were being created in the accessibility scans repository without a parent issue in the owning team's service repository.

The existing logs contained no useful errors or stack traces, so I added targeted observability to both the scorecard workflow and the open-source accessibility scanner. Through repeated workflow runs, I traced the failure from missing parent assignments to results labeled with an `unknown` service, then to reverse URL-to-service lookups that did not match the URL returned by the scanner.

The scanner had followed a redirect but did not reach the intended destination, so the result's `url` value differed from the configured URL used in the service mapping. I added a stable `originalUrl` field to preserve the URL the scanner had been asked to scan, updated the scorecard workflow to use it for service matching, validated the change across both repositories, and released accessibility scanner v3.5.1.

## Why it mattered

The issue model I introduced during the original axe workflow migration has two connected parts:

- A child issue in the accessibility scans repository represents the individual finding.
- A parent issue in the owning team's service repository gives the service team a central place to discover, organize, and track its findings.

When service resolution failed, the child issue still existed but could not be connected to the correct parent. That weakened the service-team workflow and made the finding easier to miss or harder to manage from the owning repository.

The failure also exposed an identity problem at the boundary between the scanner and the scorecard workflow. The URL that was actually scanned can legitimately differ from the URL the caller requested because of redirects. Relying on the resulting URL for ownership lookup made service attribution dependent on navigation behavior rather than the stable configured input.

Changing the meaning of the existing `url` field would have risked breaking codebases that already consume scanner results and expect it to describe the URL actually scanned. The result model needed to preserve both pieces of information, so an additive field provided the required stable identity without changing the existing contract.

## What changed

- Scanner results now include `originalUrl`, which always preserves the URL supplied to the scanner.
- The existing `url` field continues to represent the URL that was actually scanned, preserving both requested and observed navigation data.
- Existing scanner consumers can continue using `url` with its original meaning, avoiding a breaking contract change.
- The scorecard workflow now uses `originalUrl` for the reverse URL-to-service lookup and parent-issue assignment.
- All previously affected child issues now have the correct service parent issue.
- Workflow runs have remained green for several days after merge.
- The additive, backward-compatible change was released as accessibility scanner v3.5.1 rather than requiring a major-version release.
- The remaining redirect-to-Okta behavior is tracked separately so the parent-link fix did not expand into a second investigation.

The production code change in the scorecard repository was nearly one line outside of test updates because the existing issue and service-mapping abstractions allowed the workflow to consume the new stable field without a broader rewrite.

## Evidence

- [Investigation issue #5472](https://github.com/github/accessibility-scorecard/issues/5472)
- [Scanner `originalUrl` pull request #281](https://github.com/github/accessibility-scanner/pull/281)
- [Scorecard integration pull request #5473](https://github.com/github/accessibility-scorecard/pull/5473)
- [Accessibility scanner maintainer guide](https://github.com/github/accessibility/blob/main/docs/accessibility-scanner-maintainers-guide.md)
- [Accessibility scanner v3.5.1 release](https://github.com/github/accessibility-scanner/releases/tag/v3.5.1)
- [Separate redirect investigation issue #5475](https://github.com/github/accessibility-scorecard/issues/5475)
- All required workflows and checks passed in both repositories.
- I tested the integrated updates on my pull request before merging and releasing them.
- Production workflow runs remained green for several days, and previously unparented issues received the correct parent.

## How I worked

I approached the failure by progressively increasing observability rather than guessing at a fix. I first inspected existing workflow logs, then added logging around parent-issue assignment. When that showed that some scanned services disappeared before the parent-linking step, I added scanner-level logging and compared every scanned service with the later processing results.

The `unknown` service values narrowed the problem to reverse lookup. I followed the data across repository boundaries and compared the configured URL, scanner output, and service mappings until I identified redirects as the reason the returned URL no longer matched the stable ownership key.

I chose to preserve both meanings instead of changing the existing `url` field. `originalUrl` now represents caller intent, while `url` continues to represent what the scanner actually reached. Both fields are necessary because requested and scanned destinations can differ, but making the change additive also preserved backward compatibility for existing consumers.

This API decision kept the release non-breaking. Consumers that depend on the existing `url` behavior did not need to update, while integrations that need a stable configured identity can adopt `originalUrl`. That allowed the scanner to move from v3.5.0 to the patch release v3.5.1 without a disruptive major-version bump.

I kept the implementation surgical, updated tests, ran the required checks and workflows in both repositories, and exercised the integrated changes before merge. I then followed the scanner maintainer guide through the v3.5.1 release rather than treating the repository change as complete before consumers could use it.

I also kept scope explicit. The stable-identity fix restored service matching even when redirects occur, while the reason the scanner becomes stuck on an Okta redirect remains a separate tracked defect requiring its own investigation.

## Who benefited

- GitHub service teams, whose axe findings now appear under the correct parent issue in their service repositories.
- Accessibility engineers and First Responders, who have more diagnostic logging and a more reliable ownership mapping.
- Maintainers of the scorecard workflow, who gained a targeted fix that fits the existing abstractions instead of a broader rewrite.
- Users of the open-source accessibility scanner, whose result data now distinguishes the requested URL from the URL actually scanned without disrupting existing code that consumes `url`.

## Questions to answer later

- How many child issues were missing parents before the fix, and across how many services?
- How many consecutive successful workflow runs will demonstrate sustained reliability after v3.5.1?
- What is causing the scanner to become stuck on the Okta redirect, and what separate change resolves it?
