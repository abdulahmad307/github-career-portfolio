# GitHub Actions Rails-to-React UX Scope Alignment

**Date:** 2026-10-19

## Work moment

I joined the project migrating GitHub Actions pages from Rails to React and was assigned an existing pull request to take to completion. The project primarily targets feature parity, with room for small improvements that do not introduce substantial new scope.

Because the pull request was in a codebase I had not worked in before, I first traced its dependencies back to the central code change and used that as an anchor for understanding the surrounding updates. Once I could explain the logic and make small refactoring decisions confidently, I examined how the implementation would behave for end users.

I identified several unresolved interaction states caused by conditionally switching between a small popover and a large sidebar for running workflows. I raised the questions before changing the code, worked through them with engineers and designers, and helped the group reach a different decision: match the existing Rails experience exactly instead of introducing two competing React experiences.

## Why it mattered

The proposed implementation could suddenly replace a popover with a sidebar after a user selected a different branch. That transition risked feeling disconnected and unintuitive for all users, with additional potential for confusion among people using browser accessibility tools.

The conditional design also introduced product questions that the implementation requirements had not fully resolved:

- What should happen when the default branch has no inputs but a selected branch does?
- Should the interface depend on whether inputs exist or whether any inputs are required?
- If a user selects a branch, closes the popover, and uses the page-level run button, should the workflow run against the selected branch or the default branch?

Continuing implementation before answering these questions could have created rework, expanded the feature-parity project into a larger interaction redesign, and introduced new user-facing behavior that would require additional support and maintenance.

## What changed

- The team moved away from conditionally mixing a small popover and large sidebar.
- The revised direction is to match the existing Rails workflow-dispatch experience exactly.
- Users should not experience an unnecessary interaction change solely because the page implementation moved from Rails to React.
- The confusing branch and input edge cases were documented before further implementation.
- The original tracking issue was closed with context about the discussions and edge cases.
- A new issue now tracks the revised and more focused scope of matching the Rails experience.
- The project avoided proceeding with code changes before engineering and design had a shared understanding of the intended behavior.

The revised React implementation has not been completed yet, so shipped user outcomes are not captured.

## Evidence

- [Original GitHub UI pull request #36566](https://github.com/github/github-ui/pull/36566)
- [Original tracking issue #3838](https://github.com/github/core-ux/issues/3838)
- [Revised Rails-parity issue #3951](https://github.com/github/core-ux/issues/3951)
- A call with Kendall Gassner surfaced additional questions requiring broader discussion.
- Follow-up Slack discussion with engineers and designers resulted in the decision to match the Rails experience.
- Best evidence to add later: the final implementation pull request, before-and-after interaction details, accessibility validation, and feedback from users or maintainers.

## How I worked

I used a deliberate approach to learning an unfamiliar codebase. I found the central implementation file, traced dependent changes back to it, and used small cleanup opportunities as a test of whether I understood the logic well enough to explain it, question it, and make decisions safely.

I separated code comprehension from requirement validation. Once I understood what the pull request did, I did not assume that the implemented behavior was the intended behavior. I modeled the interaction across default and selected branches, workflows with optional or required inputs, and the relationship between the page-level run button, popover, and sidebar.

I raised the questions early to avoid investing in code that might be discarded. I first worked through them with Kendall, then participated in the broader engineering and design discussion until the group shared the same understanding of the edge cases and project boundary.

I also considered accessibility and consistency as part of feature parity rather than as follow-up polish. Recommending one established interaction avoided a sudden change between two dialog patterns and kept the migration focused on replacing the underlying technology without unnecessarily changing the user experience.

Finally, I preserved the decision trail by documenting the discussion on the original issue and opening a replacement issue with the revised scope. This gives the next implementation step a clearer requirement and reduces the chance that the same ambiguity must be rediscovered.

## Who benefited

- GitHub Actions users, who should retain a familiar workflow-dispatch experience during the Rails-to-React migration.
- People using browser accessibility tools, who avoid an unnecessary and potentially confusing switch between interaction patterns.
- Engineers implementing the migration, who now have clearer requirements and fewer unresolved edge cases.
- Designers and maintainers, who avoided taking on an unintended interaction redesign within a feature-parity project.

## Questions to answer later

- Which pull request implements the revised Rails-parity design, and when does it ship?
- What accessibility and interaction testing confirms parity across branch and input scenarios?
- How much implementation or review rework was avoided by changing direction before further code changes?
