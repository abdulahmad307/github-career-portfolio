# Port Scorecard Service Removal Workflow

**Date:** 2026-09-22

## Work moment

As part of the follow-up work after migrating the accessibility scorecard from Service Catalog to Port, I updated the process for removing a service from scorecard reporting.

The previous documentation required someone to copy and manually run a set of GraphQL mutations against Service Catalog. I investigated how to reproduce that capability in Port and met with the Port team to discuss the available options. Their recommended approach was to extend the existing Port integration workflow so it tracked enabled services, compared that cache against the current SLA JSON files, and removed services that disappeared.

After considering the implementation and maintenance costs, I chose a simpler third option: a dedicated workflow that accepts a Port service URL and sends an API request to mark that service as removed from accessibility scorecard reporting.

## Why it mattered

The Service Catalog removal instructions no longer fit the post-migration system, so the team needed a supported way to remove services from scorecard reporting in Port.

Extending the existing migration workflow would have required maintaining a historical cache of services and comparing it with the current SLA JSON files to infer removals. That would add state, branching logic, and maintenance overhead to a workflow that already had a different primary purpose. It would also make removal implicit: a missing service could trigger a consequential change in the background.

The alternative self-serve option discussed with the Port team required more effort from non-technical users. A focused workflow offered a better balance: it kept the implementation small and maintainable while preserving a mostly hands-off experience for the people performing removals.

## What changed

- A new workflow now has one purpose: remove a specified Port service from accessibility scorecard reporting.
- Users provide a Port service URL instead of copying GraphQL mutations into an arbitrary execution environment.
- The solution avoids storing and maintaining a cache of previously enabled services.
- Service removal is now an explicit human action rather than an inferred side effect of a service disappearing from an SLA JSON file.
- Removing a production service automatically applies the same change in staging, keeping the environments synchronized without requiring a second workflow run.
- The workflow was tested against Port and confirmed to work as intended before the pull request was merged.

## Evidence

- [Port migration follow-up batch issue #5386](https://github.com/github/accessibility-scorecard/issues/5386)
- [Service removal workflow issue #5394](https://github.com/github/accessibility-scorecard/issues/5394)
- [Merged implementation pull request #5401](https://github.com/github/accessibility-scorecard/pull/5401)
- The workflow was run against Port to verify that it removes a service from scorecard reporting as intended.
- Best evidence to add later: the number of removals performed through the workflow, time saved per removal, and feedback from non-technical users running it.

## How I worked

I first investigated how the former Service Catalog process mapped to Port, then sought input directly from the Port team instead of assuming the old GraphQL-based approach would translate cleanly.

I evaluated the recommended cached-comparison design and the more manual self-serve option, then proposed a third approach based on separation of concerns. Keeping removal in a dedicated workflow reduced the amount of state and logic the existing Port migration workflow would need to own, made the behavior easier for engineers to understand and maintain, and ensured that removing a service remained an intentional action.

I also considered the end-to-end experience rather than stopping at the core API operation. Automatically mirroring production removals to staging prevents environment drift and saves users from repeating the same task twice. I was careful to distinguish this usability improvement from the broader improvement shared by all proposed Port options: replacing manual GraphQL execution with a guided workflow.

## Who benefited

- Accessibility scorecard maintainers, who now have a smaller and more focused implementation to support.
- Non-technical users responsible for removing services from scorecard reporting, who can run a workflow with a Port URL instead of manually executing GraphQL mutations.
- The Port team and accessibility governance stakeholders, who benefit from an intentional removal process and synchronized production and staging state.
- Service owners whose scorecard reporting status needs to be updated accurately.

## Questions to answer later

- How often are services removed from scorecard reporting, and how much time does the workflow save per removal compared with the former GraphQL process?
- What feedback do non-technical users have after running the workflow themselves?
- Has automatic production-to-staging synchronization prevented any measurable configuration drift or repeat work?
