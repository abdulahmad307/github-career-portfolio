# Axe Scanning Workflow Migration

**Date:** 2026-09-03

## Work moment

My first large project was serving as DRI for migrating GitHub's internal axe scanning workflow to the new open-source accessibility scanner. I managed the work through an epic, posted weekly updates, and communicated progress while learning an unfamiliar codebase as I delivered the migration.

I also supported Clay Miller as he developed the new scanner through architecture discussions, decisions about data inputs and outputs, and code reviews. This helped prepare the scanner for the internal workflow that would become its first production use case.

## Why it mattered

GitHub publicly committed to bringing all of its services into conformance with grade C of the internal Microsoft Accessibility Standards, or MAS C, roughly equivalent to WCAG 2.1 compliance. The company described accessibility as essential to its mission to "be the home for all developers" and set June 30, 2025 as a major milestone for reaching MAS C across GitHub.

Axe scanning supports that company goal as a preventive, ongoing process. It scans GitHub pages daily for accessibility gaps and generates issues for the responsible service teams. This daily feedback loop keeps teams current as gaps are introduced or resolved, gives them a path to address problems quickly, and helps services remain at or above MAS C.

The continuous scanning process also supports GitHub's mandatory annual manual audits. Finding and assigning gaps throughout the year reduces the accessibility backlog that teams encounter during the audit cycle and makes the annual process more manageable.

The legacy axe scanning workflow was split across multiple systems. URLs were defined and scans ran in the `github/github` monolith, results were uploaded to Datadog, and a separate repository downloaded and processed those results to create issues for service teams. This fragmentation added integration cost, distributed ownership across repositories and teams, and required approvals from outside the accessibility team to update parts of a workflow the team owned.

The legacy setup also could not readily scan unauthenticated GitHub pages or pages on other subdomains such as `admin.github.com`. Its GitHub Actions cache expired after a few days, so the workflow needed special handling when cache data disappeared.

For service teams, axe violations appeared as a list inside one issue. Teams could not see item-level progress until the scanner ran again and refreshed the parent issue.

This tracking problem reflected a documented need from the Repos team. Their request was written about the equivalent linting and component-scanning workflow, where violations were maintained as line items in a table inside one issue. They found it difficult to notice new violations, triage work by area of responsibility, and track exactly what blocked a green automation scorecard. Their workaround was to manually create issues by owning engineering manager, but new violations could arrive before those issues were resolved. Although the request named other scanning types, axe scanning used the same issue-body pattern and had the same service-team workflow problem.

## What changed

The migration moved the internal workflow to the new accessibility scanner and consolidated the scanning implementation into one repository. This removed the need to pass scan results through Datadog, reduced the number of systems involved, and gave the accessibility team direct ownership of the code needed to evolve the workflow.

Using the new scanner also enabled the workflow to:

- Scan unauthenticated pages and additional subdomains such as `admin.github.com` with relatively little additional work.
- Use the persistent caching mechanism Clay Miller created instead of the expiring GitHub Actions cache.
- Retain cache data indefinitely and remove the need for missing-cache workarounds.
- Allow engineers to inspect and manually update cache contents because the cache lives on an orphan branch.
- Adopt new capabilities from the open-source scanner, including the plugin system I later created, as those capabilities become available.

I also changed issue generation so each axe violation became a sub-issue of a parent issue, applying the service-team request to the equivalent axe workflow. Teams could identify new violations, assign each item to the appropriate owner, triage them by area of responsibility, and track rolling remediation without manually converting table rows into separate issues. Keeping all generated sub-issues in one repository also simplified testing, cleanup, cache recovery, and issue regeneration.

The accessibility team became the scanner's first user, creating an internal proving ground where we could find bugs and quality-of-life improvements before external users adopted it.

## Evidence

| Measure                 | Before                                                         | After                                                                 |
| ----------------------- | -------------------------------------------------------------- | --------------------------------------------------------------------- |
| Scanning implementation | Split across the monolith and a separate processing repository | Consolidated into one repository owned by the accessibility team      |
| Scan-result transport   | Uploaded to and downloaded from Datadog                        | Processed directly without relying on Datadog                         |
| Cache                   | GitHub Actions cache that expired after a few days             | Persistent, inspectable cache stored on an orphan branch              |
| Page coverage           | Authenticated pages in the supported domain setup              | Added unauthenticated pages and subdomains such as `admin.github.com` |
| Violation tracking      | Multiple violations listed in one service issue                | Individual violations represented as trackable sub-issues             |

- [GitHub accessibility update: Company commitment to MAS C](https://thehub.github.com/news/2023-03-06-a11y-update/)
- [Microsoft Accessibility Standards measurement guidance](https://github.com/github/accessibility/blob/main/docs/measuring-ourselves/microsoft-accessibility-standards.md)
- [GitHub's public accessibility commitment](https://accessibility.github.com/)
- [Migration epic and weekly DRI updates](https://github.com/github/accessibility/issues/9082)
- [Service-team request #7888: Track individual scanning violations as sub-issues](https://github.com/github/accessibility/issues/7888)
- [Implementation PR #4146](https://github.com/github/accessibility-scorecard/pull/4146)
- [Implementation PR #4220](https://github.com/github/accessibility-scorecard/pull/4220)
- [Implementation PR #4238](https://github.com/github/accessibility-scorecard/pull/4238)
- [Implementation PR #4258](https://github.com/github/accessibility-scorecard/pull/4258)
- [Implementation PR #4460](https://github.com/github/accessibility-scorecard/pull/4460)
- [Feedback from Clay Miller](../feedback/FY27-Q1-peer-feedback.md) describing my customer-zero insights as invaluable and documenting my review of 40 of his 55 approved scanner PRs across two repositories.
- Qualitative cost reduction from removing the Datadog dependency.
- Qualitative development-speed improvement from consolidating ownership and reducing cross-team approval dependencies.
- Best evidence to add later: specific weekly-update anchors, Datadog cost savings, number of services and pages scanned, issue and sub-issue counts, and before-and-after development cycle time.

## How I worked

I took DRI responsibility for a large migration while new to the codebase. I learned the existing workflow as I worked, organized delivery through an epic, and kept stakeholders informed through weekly progress updates.

I collaborated closely with Clay Miller during development of the new open-source scanner, contributing to architecture and data-contract discussions and reviewing code so the scanner could support the migration's production needs. I preserved clear attribution for the persistent caching mechanism Clay created while integrating its benefits into the migrated workflow.

I used the migration to simplify the whole operating model rather than performing a one-for-one replacement. I carried a documented service-team need from the equivalent linting and component-scanning process into the axe workflow, addressing the shared tracking problem while designing the new issue model. Consolidating code, removing Datadog, expanding page coverage, adopting durable caching, and redesigning violations as sub-issues reduced technical friction for maintainers and made remediation progress clearer for service teams.

## Who benefited

- GitHub and its customers, because the daily preventive process supports the company-wide commitment to keep services at or above MAS C.
- GitHub service teams responsible for resolving axe violations, including teams with the same workflow needs documented by Repos, who gained item-level triage, ownership, and progress tracking through sub-issues.
- Teams completing mandatory annual accessibility audits, who benefit from accessibility gaps being found and assigned throughout the year instead of accumulating until the audit cycle.
- Accessibility engineers who maintain and extend the scanning workflow, who gained consolidated ownership, easier testing and recovery, and fewer external approval dependencies.
- Teams responsible for unauthenticated pages and GitHub subdomains such as `admin.github.com`, whose pages could now be included in scanning.
- External users of the open-source accessibility scanner, who could benefit from bugs and usability issues being found through GitHub's early internal adoption.

## Kudos and feedback

Clay Miller described my insights as the scanner's customer zero as "invaluable" and said he frequently sought my help with planning and problem-solving across action outputs, cache collisions, escaped characters, and cache data. He documented that I reviewed 28 of his 35 approved PRs in the scanner's earlier repository and 12 of his 20 approved PRs in `github/accessibility-scanner`. His [exact feedback is preserved in the FY27 Q1 feedback log](../feedback/FY27-Q1-peer-feedback.md).

## Questions to answer later

- How much Datadog cost and engineering cycle time did the migration save?
- How many services, pages, subdomains, and violation sub-issues were covered after migration?
