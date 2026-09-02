# Audit Label Report Resolution

**Date:** 2026-09-02

## Work moment

I independently identified and fixed a problem in the audit issue label validator. When all missing or incorrect label violations were resolved, the validator left the existing report issue open instead of closing it.

I updated the validator to close the report once all violations are resolved and to explain why a report is being closed.

## Why it mattered

An open report continued to indicate that audit label problems existed after they had been fixed. This could confuse people reviewing the report and make the audit state appear less reliable than it was.

## What changed

The validator now closes the existing report issue when all violations have been resolved. The closing message also reflects the actual state:

- When all violations are resolved, it says that all issues are resolved.
- When new violations are reported elsewhere, it says that the issue is being closed because it was superseded by a new issue.

This makes the lifecycle and current status of audit reports clearer.

## Evidence

- [Audit issue label validator fix](https://github.com/github/accessibility-scorecard/pull/5376)

## How I worked

I noticed that the validator's issue lifecycle did not match the underlying audit state, then updated both the closing behavior and its user-facing message. I accounted for two distinct closure conditions so the automation communicates whether violations were resolved or moved to a newer report.

## Who benefited

People who review and act on accessibility scorecard audit label reports benefit from a clearer, more accurate view of whether violations remain unresolved.

## Questions to answer later

- How often did resolved audit reports remain open before this fix?
- Which teams or roles most frequently review and act on these reports?
- Did follow-up validator runs confirm that both closing scenarios use the correct message?
