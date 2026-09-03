# Axe Scanning Workflow Migration

**Date:** 2026-09-03

## Work moment

My first large project was serving as DRI for migrating GitHub's internal axe scanning workflow to the new open-source accessibility scanner. I managed the work through an epic, posted weekly updates, and communicated progress while learning an unfamiliar codebase as I delivered the migration.

I also supported Clay Miller as he developed the new scanner through architecture discussions, decisions about data inputs and outputs, and code reviews. This helped prepare the scanner for the internal workflow that would become its first production use case.

## Why it mattered

The legacy axe scanning workflow was split across multiple systems. URLs were defined and scans ran in the `github/github` monolith, results were uploaded to Datadog, and a separate repository downloaded and processed those results to create issues for service teams. This fragmentation added integration cost, distributed ownership across repositories and teams, and required approvals from outside the accessibility team to update parts of a workflow the team owned.

The legacy setup also could not readily scan unauthenticated GitHub pages or pages on other subdomains such as `admin.github.com`. Its GitHub Actions cache expired after a few days, so the workflow needed special handling when cache data disappeared.

For service teams, axe violations appeared as a list inside one issue. Teams could not see item-level progress until the scanner ran again and refreshed the parent issue.

## What changed

The migration moved the internal workflow to the new accessibility scanner and consolidated the scanning implementation into one repository. This removed the need to pass scan results through Datadog, reduced the number of systems involved, and gave the accessibility team direct ownership of the code needed to evolve the workflow.

Using the new scanner also enabled the workflow to:

- Scan unauthenticated pages and additional subdomains such as `admin.github.com` with relatively little additional work.
- Use the persistent caching mechanism Clay Miller created instead of the expiring GitHub Actions cache.
- Retain cache data indefinitely and remove the need for missing-cache workarounds.
- Allow engineers to inspect and manually update cache contents because the cache lives on an orphan branch.
- Adopt new capabilities from the open-source scanner, including the plugin system I later created, as those capabilities become available.

I also changed issue generation so each axe violation became a sub-issue of a parent issue. Service teams could track individual remediation items without waiting for another scanner run to see completed work reflected. Keeping all generated sub-issues in one repository also simplified testing, cleanup, cache recovery, and issue regeneration.

The accessibility team became the scanner's first user, creating an internal proving ground where we could find bugs and quality-of-life improvements before external users adopted it.

## Evidence

| Measure                 | Before                                                         | After                                                                 |
| ----------------------- | -------------------------------------------------------------- | --------------------------------------------------------------------- |
| Scanning implementation | Split across the monolith and a separate processing repository | Consolidated into one repository owned by the accessibility team      |
| Scan-result transport   | Uploaded to and downloaded from Datadog                        | Processed directly without relying on Datadog                         |
| Cache                   | GitHub Actions cache that expired after a few days             | Persistent, inspectable cache stored on an orphan branch              |
| Page coverage           | Authenticated pages in the supported domain setup              | Added unauthenticated pages and subdomains such as `admin.github.com` |
| Violation tracking      | Multiple violations listed in one service issue                | Individual violations represented as trackable sub-issues             |

- [Migration epic and weekly DRI updates](https://github.com/github/accessibility/issues/9082)
- [Implementation PR #4146](https://github.com/github/accessibility-scorecard/pull/4146)
- [Implementation PR #4220](https://github.com/github/accessibility-scorecard/pull/4220)
- [Implementation PR #4238](https://github.com/github/accessibility-scorecard/pull/4238)
- [Implementation PR #4258](https://github.com/github/accessibility-scorecard/pull/4258)
- [Implementation PR #4460](https://github.com/github/accessibility-scorecard/pull/4460)
- Qualitative cost reduction from removing the Datadog dependency.
- Qualitative development-speed improvement from consolidating ownership and reducing cross-team approval dependencies.
- Best evidence to add later: specific weekly-update anchors, Datadog cost savings, number of services and pages scanned, issue and sub-issue counts, and before-and-after development cycle time.

## How I worked

I took DRI responsibility for a large migration while new to the codebase. I learned the existing workflow as I worked, organized delivery through an epic, and kept stakeholders informed through weekly progress updates.

I collaborated closely with Clay Miller during development of the new open-source scanner, contributing to architecture and data-contract discussions and reviewing code so the scanner could support the migration's production needs. I preserved clear attribution for the persistent caching mechanism Clay created while integrating its benefits into the migrated workflow.

I used the migration to simplify the whole operating model rather than performing a one-for-one replacement. Consolidating code, removing Datadog, expanding page coverage, adopting durable caching, and redesigning violations as sub-issues reduced technical friction for maintainers and made remediation progress clearer for service teams.

## Who benefited

- GitHub service teams responsible for resolving axe violations, who gained item-level progress tracking through sub-issues.
- Accessibility engineers who maintain and extend the scanning workflow, who gained consolidated ownership, easier testing and recovery, and fewer external approval dependencies.
- Teams responsible for unauthenticated pages and GitHub subdomains such as `admin.github.com`, whose pages could now be included in scanning.
- External users of the open-source accessibility scanner, who could benefit from bugs and usability issues being found through GitHub's early internal adoption.

## Questions to answer later

- How much Datadog cost and engineering cycle time did the migration save?
- How many services, pages, subdomains, and violation sub-issues were covered after migration?
