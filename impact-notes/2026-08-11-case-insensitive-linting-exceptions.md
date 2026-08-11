# Case-Insensitive Linting Exceptions

**Date:** 2026-08-11

## Work moment

I opened a PR to make the accessibility scorecard's case-sensitive linting exception check case-insensitive.

## Why it mattered

Hubbers could encounter errors or workflow failures when the casing in an exception request's filename or contents did not match the linting check's expectations. Some exceptions used incorrect casing, which silently prevented their linting issues from closing and left older issues open for extended periods without the team knowing this bug was the cause.

## What changed

The PR updates the exception check so linting exception filenames and PR contents can be matched regardless of case. The change closed both newer and older issues that had remained open because of casing mismatches, including issues the team did not know were affected by this bug. This both clears existing backlog and prevents linting issues from remaining open solely because of casing differences.

## Evidence

- [PR #5335: Update case-sensitive linting exception check](https://github.com/github/accessibility-scorecard/pull/5335)
- [Issue #570: Previously remained open and now closed](https://github.com/github/suave-capybaras/issues/570)
- [Issue #5329: Older issue that closed after the casing fix](https://github.com/github/docs-team/issues/5329)
- Best evidence to add later: PR merge status and any broader reduction in case-related workflow failures.

## How I worked

I identified case sensitivity as an avoidable source of friction in the exception workflow and updated the matching behavior to accept casing variations.

## Who benefited

Hubbers who open linting exception requests.

## Questions to answer later

- Was the PR merged, and when did the updated behavior become available?
- How many older issues closed after the fix, and how long had they remained open?
- Were there tests, review feedback, or implementation trade-offs worth capturing?
