# Resolving repeated label descriptions for Mac VoiceOver users

**Date:** 2026-11-24 (captured; work completed during my last FR rotation)

## Work moment

During my last FR rotation, I picked up a user-reported accessibility issue: when tabbing to some labels on a GitHub issue page, Mac VoiceOver read the label description three times. The same behavior did not appear to occur on the pull request page.

After reproducing the issue, I judged that it might be straightforward to fix. Rather than stopping at the usual service-team handoff, I used Copilot to locate the relevant implementation, assess the change, and apply a small fix. I validated it in the proxima-preview deployment, obtained the owning team's approval the next business day, merged it, and followed up with the reporting user until they confirmed the problem was resolved.

## Why it mattered

The repeated description made the issue-page label experience unnecessarily repetitive for people using Mac VoiceOver. The reporting user needed the description announced once, not three times.

Our normal FR protocol is to reproduce a report, check whether an audit issue already exists, create one in accessibility-audits if needed, identify the owning service team, and apply the appropriate labels. That gives valid findings a path to the responsible team, but a small fix can still wait for that team's prioritization.

I saw an opportunity to resolve this bounded problem directly while retaining owning-team review. My fallback was explicit: if the fix proved complex, I would return to the normal audit-issue and service-team routing process. A weeks-or-months delay was a possibility I wanted to avoid, not a measured baseline for this issue.

## What changed

- VoiceOver now reads the label description once instead of three times in the reported issue-page experience.
- The owning service team approved the fix the next business day, and I merged it.
- The reporting user tested the shipped change and confirmed that it was fixed, thanking us for the quick turnaround.
- I closed all related issues after the user's confirmation.
- Based on my account, the fix was turned around in approximately one day. Exact timestamps for the later user confirmation are not recorded here.

## Evidence

| Measure | Before | After |
|---|---|---|
| VoiceOver description announcements for an affected label | 3 | 1, confirmed by the reporting user |
| Owning-team review | Fix awaiting review | Approved the next business day |
| User validation | User-reported repetition on the issue page | Reporting user confirmed the shipped behavior was fixed |

- [Original report, github/accessibility-external#2023](https://github.com/github/accessibility-external/issues/2023)
- [Tracking issue, github/github-ui#45831](https://github.com/github/github-ui/issues/45831): connects the problem, implementation PR, and original user report.
- [Merged fix, github/github-ui#45832](https://github.com/github/github-ui/pull/45832)
- [Community discussion and user confirmation](https://github.com/orgs/community/discussions/213004)
- I reproduced the reported behavior and retested it in the proxima-preview deployment before merge.
- Copilot's search identified one instance of the relevant implementation in github-ui.

## How I worked

- **Customer focus and end-to-end ownership:** I followed the report from reproduction through implementation, preview validation, owning-team review, merge, and direct user confirmation rather than treating a handoff or merged PR as the final outcome.
- **Proportionate scope:** I explored whether a direct fix was practical before committing to it. I proceeded because the change was simple and straightforward; a complex fix would have gone through the established audit and service-team process.
- **AI leverage:** Locating the implementation was the main obstacle in a large codebase spanning github/github and github/github-ui. I worked with Copilot to find the code and search for all instances, rather than assuming the first match was the only place needing attention. Copilot found one instance and applied the fix, which I then validated.
- **Traceability and collaboration:** I added the relevant context to the PR description and created a tracking issue connecting the fix with the original report. The owning service team reviewed and approved the change before I merged it.
- **Outcome verification:** I checked the preview deployment myself, then returned to the original Community discussion for confirmation from the person who experienced the problem. I closed the related issues only after that confirmation.

## Who benefited

The reporting user directly benefited and verified the improvement. Other Mac VoiceOver users navigating affected issue-page labels may also benefit, but the broader affected audience has not been measured.

The owning service team received a scoped implementation to review instead of a report requiring them to start the investigation and fix from scratch.

## Kudos and feedback

The reporting user replied in the [Community discussion](https://github.com/orgs/community/discussions/213004):

> Thank you, I can confirm it's fixed. With VoiceOver on Mac, a label with a description now reads "known-issue, description, A known problem with a fix planned", so the description is read once instead of three times. I appreciate the quick turnaround.

**Promotion prep sharing preference:** `Okay to reuse`, following my saved feedback default.

## Questions to answer later

- What were the implementation, merge, and user-confirmation dates?
- What specific implementation behavior caused the repeated announcement, and what regression coverage protects the fix?
