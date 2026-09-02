# Mobile Reopen Button Accessibility Fix

**Date:** 2026-09-02

## Work moment

I worked with the Issues team on a user-reported accessibility problem where the reason associated with the reopen issue button could not be read in a mobile browser. I stayed engaged after assigning the issue to the team, saw the change through implementation, approved the resulting pull request, and promptly followed up with the user in their GitHub Community discussion.

## Why it mattered

The inaccessible button reason prevented the user from reading important issue state information on mobile. Following the report through implementation and user confirmation ensured the work addressed the reported experience rather than stopping when the code change shipped.

## What changed

The Issues team fixed the mobile accessibility problem within two weeks of it being reported. After I approved the implementation and the fix shipped, I contacted the reporting user directly to let them know the change had been made for them. They checked the experience from their side and confirmed that they could see the fix.

## Evidence

| Metric                | Before                                           | After                                           |
| --------------------- | ------------------------------------------------ | ----------------------------------------------- |
| Resolution turnaround | User issue reported                              | Fix confirmed within 2 weeks                    |
| User validation       | Reopen button reason could not be read on mobile | Reporting user confirmed the issue was resolved |

- [Reported accessibility issue](https://github.com/github/accessibility-external/issues/1875)
- [Community discussion and user follow-up](https://github.com/orgs/community/discussions/205476)

## How I worked

I treated the report as an outcome to own rather than a handoff to complete. I stayed involved with the Issues team through implementation, reviewed and approved the resulting pull request, and promptly returned to the reporting user once the change shipped. Their direct confirmation validated that the fix addressed the experience they had reported, creating a clear path from customer report to cross-team action to customer-confirmed resolution.

## Who benefited

The user who reported the problem benefited directly. Other people who use the reopen issue control in a mobile browser may also benefit from being able to read its reason, though the broader affected audience has not yet been measured.

## Questions to answer later

- Which pull request implemented the fix?
- How broad was the impact across mobile browsers, assistive technologies, or other users?
