# Audit Request Port Link Migration

**Date:** 2026-09-04

## Work moment

I took ownership of unblocking and completing the migration of Service Catalog links in accessibility governance audit-request issues to Port links before the Service Catalog UI was shut down.

The original pull request was opened on May 11, but implementation exposed an unknown: a service's Port URL follows a different pattern depending on whether Port classifies it as an artifact or a functional product. Because the accessibility governance workflow did not contain that classification or the resulting URL, we could not reliably generate the correct link for each service.

I investigated the dependency, coordinated the supporting work, and returned to the blocked pull request once the required Port URL data was available. The final change was approved and merged on June 26, four days before the Service Catalog UI shutdown on June 30.

## Why it mattered

GitHub was retiring Service Catalog iteratively, beginning with its UI. Teams and stakeholders relied on that UI for service information, scorecards, action items, graphs, and charts.

The accessibility governance, or CELA, team generates issues when it receives audit requests. Those issues included links to the relevant Service Catalog information and scorecards. Once the UI was disabled, newly generated issues would have sent stakeholders to links they could no longer use. The migration needed to preserve access to the relevant service information in Port before the shutdown date.

## What changed

I turned the blocked pull request into a tracked four-part migration plan under the main accessibility scorecard Port epic. I then completed the prerequisite data work and updated the accessibility governance workflow to generate Port links instead of Service Catalog links.

The completed work included:

- Identifying that Port URL patterns vary between artifact and functional-product services.
- Working with Clay Miller to understand prior discussions with Port stakeholders about storing each service's Port URL in its existing SLA JSON file.
- Collaborating with CELA teammates who had assembled service URLs in an issue.
- Creating a batch issue with four sub-issues and linking it to the main Port migration epic.
- Adding production and development Port URLs to the appropriate SLA JSON files.
- Following up with a second pull request when I noticed one SLA JSON file had been missed.
- Returning to the original blocked pull request and replacing generated Service Catalog links with the stored Port links.

All four sub-issues were completed, and the final migration merged before the Service Catalog UI was turned off.

## Evidence

| Measure                       | Before                                                               | After                                                          |
| ----------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------- |
| Generated audit-request links | Service Catalog links that would stop working after the UI shutdown  | Port links selected for each service                           |
| Port URL source               | No reliable mapping for artifact and functional-product URL patterns | Production and development Port URLs stored in SLA JSON files  |
| Delivery timing               | Original PR blocked by an unknown URL dependency                     | Final PR merged June 26, four days before the June 30 shutdown |
| Work tracking                 | Blocked change without a complete dependency plan                    | Batch issue with four completed sub-issues under the Port epic |

- [Service Catalog retirement initiative](https://github.com/github/dx/issues/2185)
- [Original accessibility governance PR #3333](https://github.com/github/accessibility-governance/pull/3333)
- [CELA service URL inventory issue #3311](https://github.com/github/accessibility-governance/issues/3311)
- [Port URL migration batch issue #5092](https://github.com/github/accessibility-scorecard/issues/5092)
- [Accessibility scorecard Port migration epic #5055](https://github.com/github/accessibility-scorecard/issues/5055)
- [SLA JSON Port URL update PR #5205](https://github.com/github/accessibility-scorecard/pull/5205)
- [Follow-up missing SLA JSON URL PR #5241](https://github.com/github/accessibility-scorecard/pull/5241)

## How I worked

I treated the blocked pull request as a dependency and data-model problem rather than guessing which Port URL pattern to generate. I gathered context from Clay's earlier Port stakeholder conversation and from CELA teammates' URL inventory, then turned the larger effort into a batch issue with four trackable sub-issues under the main Port epic.

I used Copilot to accelerate the repetitive SLA JSON updates. I gave it detailed instructions to cross-reference the new URLs against existing SLA data, determine which URL belonged in each file, and add both production and development variants. I reviewed the result and later caught that one SLA file was missing Port URLs, then opened a follow-up pull request to complete the data set. Once the prerequisite data was reliable, I finished the original governance change and delivered it before the shutdown deadline.

## Who benefited

- CELA team members who generate and manage accessibility audit-request issues.
- Service owners and stakeholders who use those issues to reach service scorecards and related information.
- Teams participating in the broader migration from Service Catalog to Port.

## Questions to answer later

- How many services and SLA JSON files received production and development Port URLs?
- How many audit-request issues have used the new Port links since the migration?
- Did CELA teammates or service owners report any broken links or workflow friction after the Service Catalog UI shutdown?
