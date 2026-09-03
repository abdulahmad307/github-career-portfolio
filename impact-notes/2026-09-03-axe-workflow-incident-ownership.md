# Axe Workflow Incident Ownership

**Date:** 2026-09-03

## Work moment

After the axe scanning workflow migration, I stayed accountable for the system when several failures surfaced. In one incident, I identified that I had omitted a critical part of the cache integration during the migration, then fixed the issue so caching worked as intended.

In another incident, Lindsey Wild was the First Responder investigating failures in the open-source scanner. Drawing on my knowledge from leading the migration, I helped investigate attempted solutions, supported her as she learned the axe workflow, opened a PR to correct related caching behavior, and proposed replacing GitHub Actions inputs and outputs with JSON files for data transfer. Lindsey implemented that file-based approach, which resolved the failure and remains the approach used today.

## Why it mattered

The scanning workflow generates accessibility findings that service teams rely on, so failures interrupt the creation and maintenance of actionable issue data. The addition of plugin-based scan capabilities increased the amount of data being transferred until it exceeded what GitHub Actions inputs and outputs could handle.

These incidents also tested whether ownership of the migrated system would continue after launch. Restoring the workflow required both accountability for a migration defect and support for First Responders who did not yet have the same system context.

## What changed

- I corrected the missing cache integration so the migrated workflow could use caching as intended.
- I helped Lindsey investigate the scanner failure and evaluate approaches before the final fix was selected.
- I opened a supporting PR to fix cache behavior in the accessibility scorecard workflow.
- I proposed transferring scan data through JSON files instead of GitHub Actions inputs and outputs, avoiding the data-size limitation introduced as scanning capabilities grew.
- Lindsey implemented the file-based design in the open-source scanner, restoring the workflow. The scanner continues to use this JSON file approach today.

## Evidence

- [Fix the missing cache integration](https://github.com/github/accessibility-scorecard/pull/4821)
- [File-based JSON input and output implementation by Lindsey Wild](https://github.com/github/accessibility-scanner/pull/177)
- [Supporting cache fix](https://github.com/github/accessibility-scorecard/pull/4948)
- Best evidence to add later: incident dates and duration, failed workflow runs, links to the approaches attempted before the file-based fix, and confirmation of reliability after rollout.

## How I worked

I took accountability for the cache integration detail I had missed and fixed it rather than distancing myself from a post-migration problem. When a separate failure occurred, I used the system knowledge I had gained as migration DRI to support Lindsey in her First Responder role while she became familiar with the workflow.

I stayed engaged beyond offering advice: I helped investigate earlier approaches, opened code to address the caching problem, and suggested a different data-transfer design when GitHub Actions inputs and outputs no longer fit the scanner's growing payloads. I preserved Lindsey's authorship of the final scanner change while contributing the diagnosis, design direction, and hands-on support that helped restore the workflow.

## Who benefited

- First Responders responsible for diagnosing failures in the axe scanning workflow, including engineers who were less familiar with the migrated system.
- Accessibility engineers who maintain the scorecard workflow and open-source scanner.
- GitHub service teams that depend on reliable scanning and current axe violation issues.
- Users of the open-source scanner as its plugin capabilities and data volume grow.

## Questions to answer later

- How long were the workflows disrupted, and how quickly were they restored after each diagnosis?
- Which earlier approaches were attempted before moving to JSON files, and what did those attempts reveal?
- What workflow reliability evidence shows the file-based transfer continuing to work as scan data grows?
