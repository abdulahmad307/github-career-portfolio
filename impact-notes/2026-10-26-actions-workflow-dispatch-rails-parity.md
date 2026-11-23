# GitHub Actions Workflow Dispatch Rails Parity

**Date:** 2026-10-26

## Work moment

Following the earlier engineering and design alignment on the GitHub Actions Rails-to-React migration, I implemented and delivered the revised workflow-dispatch dialog in React.

The final experience matches the familiar Rails interaction instead of conditionally switching users between a small popover and a large side panel. I also fixed two related pre-existing problems while working in the same area: workflow form values not updating when the selected ref changed, and inputs being hidden while updated server data loaded after a ref change.

In addition to shipping the scoped work, I documented two accessibility and interaction issues that we discovered but intentionally kept outside the pull request: lost focus when the ref selector enters a busy state, and the unresolved decision about where keyboard focus should move when the dialog opens.

## Why it mattered

The Rails-to-React project is primarily a feature-parity migration. Preserving the established workflow-dispatch experience minimizes the user-visible differences introduced by the technology change, reduces the number of new interaction states the team must support, and lowers the risk of adding migration-specific bugs or edge cases that could threaten the broader project timeline.

The two related fixes addressed real usability gaps in the existing React experience. One had been reported by a user: changing the ref did not update the form input values. The other caused inputs to disappear during loading after a ref change. Addressing both within the same implementation avoided leaving known, closely related problems in the completed dialog.

The focus issues also needed to remain visible even though they did not belong in this pull request. Keyboard focus behavior directly affects accessibility, but resolving it requires deliberate product and accessibility decisions rather than an untracked change bundled into a parity migration.

## What changed

- The React workflow-dispatch dialog now matches the familiar Rails look and interaction model.
- The conditional popover and side-panel behavior was replaced with one consistent experience.
- Workflow form values now update when the selected ref changes.
- Inputs are no longer unexpectedly hidden during the loading state after a ref change.
- A ref-selector focus-loss bug is documented as separate follow-up work.
- A dedicated decision log now preserves the open question and historical context around initial dialog focus for keyboard users.
- The implementation was completed in approximately one week, including the two related fixes.

This closes the delivery gap documented in the earlier [GitHub Actions Rails-to-React UX scope alignment note](./2026-10-19-actions-rails-react-ux-scope-alignment.md).

## Evidence

- [Delivered workflow-dispatch implementation pull request #38665](https://github.com/github/github-ui/pull/38665)
- [Rails-parity tracking issue #3951](https://github.com/github/core-ux/issues/3951)
- [User-reported form-value bug #3983](https://github.com/github/core-ux/issues/3983)
- [Loading-state input visibility issue #4037](https://github.com/github/core-ux/issues/4037)
- [Ref-selector focus-loss bug #4036](https://github.com/github/core-ux/issues/4036)
- [Dialog focus behavior decision log #4038](https://github.com/github/core-ux/issues/4038)
- [Earlier scope-alignment impact note](./2026-10-19-actions-rails-react-ux-scope-alignment.md)
- Rough delivery time: approximately one week, including the two related fixes.
- Best evidence to add later: user confirmation of the ref-value fix, accessibility validation, regression results, and progress on the two focus follow-ups.

## How I worked

I carried the work from direction-setting through implementation. The earlier questions and alignment created a clear feature-parity target, and I then translated that decision into the delivered React experience rather than stopping after influencing the design.

I collaborated closely with Kendall Gassner throughout implementation. We reviewed updates as the work progressed, discussed edge cases, and made scope decisions together. When Kendall asked whether the additional defects should be included, I used a practical boundary: include small, closely related fixes that could be addressed confidently without turning the pull request into a broader redesign.

I applied the same discipline to work that did not fit that boundary. Rather than silently ignoring the ref-selector focus loss or expanding the pull request to resolve an open keyboard-focus design question, I created separate records for each. The focus decision log is intentionally not tied to a pull request. It remains open until the team and accessibility reviewers make a decision, preserving the reasoning and preventing the question from disappearing when the original implementation issue closed.

This balanced rapid delivery with user experience, accessibility, and maintainability. The pull request restored consistency, included two bounded improvements, and left the team with explicit follow-up paths for issues requiring additional investigation or design input.

## Who benefited

- GitHub Actions users, who retain a familiar workflow-dispatch experience during the Rails-to-React migration.
- The user who reported stale form values after changing refs, along with others affected by the same behavior.
- Keyboard users, whose unresolved focus behavior is now explicitly tracked for an accessibility-informed decision.
- Engineers and designers working on the migration, who gained a delivered parity implementation and documented boundaries for follow-up work.
- Project maintainers, who avoided adding unnecessary migration scope while still fixing small, closely related defects.

## Questions to answer later

- Did the reporting user confirm that workflow input values now update correctly after a ref change?
- What accessibility and regression testing confirms the delivered dialog matches the intended Rails behavior?
- What decisions and fixes result from the ref-selector focus issue and dialog-focus decision log?
