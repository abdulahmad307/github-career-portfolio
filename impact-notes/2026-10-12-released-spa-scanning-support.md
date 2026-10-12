# Released SPA Scanning Support in Accessibility Scanner v3.5.0

**Date:** 2026-10-12

## Work moment

I revived and shipped a long-running community contribution that allows the accessibility scanner to wait for single-page applications to load before scanning them.

The original pull request came from a fork, which meant the repository's required checks and tests could not run by design. Although I had followed up with the contributor several times, Port migration work had prevented me from doing the repository-side work needed to make it mergeable. During a First Responder rotation, after GitHub's head of accessibility highlighted that customers needed this capability to use the scanner and another community member reinforced the need, I dedicated a day to moving it across the finish line.

I used Copilot to reproduce the community change in a pull request opened directly in the scanner repository, compared the two pull requests side by side, addressed a Copilot code-review finding, completed the maintainer checks, preserved the original author's credit, merged the change, and released it in v3.5.0.

## Why it mattered

Single-page applications may not be ready to scan when their initial page response completes. Without a way to wait for an application-specific selector, the scanner could run too early and produce incomplete or unreliable results. For some GitHub customers and community users, that prevented them from using the scanner effectively with their applications.

The implementation also needed to avoid Playwright's discouraged `networkidle` strategy. Waiting for a configured page selector gives each application an explicit readiness signal and produces more dependable behavior than assuming a quiet network means the page is ready.

The code had already received substantial community and maintainer input, but the fork-based pull request could not pass the repository's merge requirements. Moving it into the scanner repository unlocked the automated validation and review needed to ship it safely.

## What changed

- Accessibility scanner users can configure a per-URL page selector that must appear before a scan begins.
- Single-page applications now have an explicit readiness mechanism, making scans more robust and dependable.
- The implementation uses the existing `urlConfigs` extension point rather than introducing a separate top-level input.
- The community change was recreated in a repository-local pull request so required checks, tests, and Copilot code review could run.
- A missing error-handling path identified during Copilot review was addressed before merge, preventing undesirable side effects.
- The original contributor was added as a co-author on the merge commit so their work remained credited.
- The completed functionality was published for all users in accessibility scanner v3.5.0.
- This release resolved the open follow-up from my earlier `urlConfigs` impact note, where the SPA contribution was still in progress.

## Evidence

- [Original community pull request #223](https://github.com/github/accessibility-scanner/pull/223)
- [Community comment describing the need for SPA support](https://github.com/github/accessibility-scanner/pull/223#issuecomment-5937154355)
- [My earlier review redirecting the implementation away from `networkidle`](https://github.com/github/accessibility-scanner/pull/223#issuecomment-4651953457)
- [Repository-local implementation pull request #273](https://github.com/github/accessibility-scanner/pull/273)
- [Copilot review finding for missing error handling](https://github.com/github/accessibility-scanner/pull/273#discussion_r4184462119)
- [Accessibility scanner maintainer guide](https://github.com/github/accessibility/blob/main/docs/accessibility-scanner-maintainers-guide.md)
- [Accessibility scanner v3.5.0 release](https://github.com/github/accessibility-scanner/releases/tag/v3.5.0)
- [Earlier impact note describing the extensible `urlConfigs` design](./2026-08-11-extensible-url-specific-scanner-config.md)

## How I worked

I prioritized this work after connecting multiple signals: the pull request had remained blocked for an extended period, the head of accessibility identified a customer need, and a community member independently confirmed the same gap. I used my First Responder time to turn a valuable but stalled contribution into a released capability.

I used Copilot to accelerate the mechanical work of recreating the fork-based change inside the repository, then reviewed the original and recreated pull requests side by side to confirm fidelity. Opening the repository-local pull request enabled an additional Copilot code review, which caught a missing `try`/`catch` path that could have caused undesirable side effects. I addressed the finding rather than treating the copied implementation as complete.

I followed the maintainer guide through validation, merge, and release so I did not skip required checks or rely on memory for a high-impact maintenance operation. I also preserved the community contributor's authorship by adding them as a co-author to the merge commit.

My earlier technical guidance shaped the final design. I had redirected the contribution away from Playwright's discouraged `networkidle` event and toward waiting for page selectors, and I had suggested using the `urlConfigs` input for per-URL configuration. Shipping this work demonstrated that the extensibility I designed for `urlConfigs` supports multiple scanner needs beyond its original selector-exclusion use case.

## Who benefited

- GitHub customers whose single-page applications need an explicit load signal before accessibility scanning can begin.
- Teams inside and outside GitHub that use the scanner with single-page applications.
- Accessibility scanner users, who now have more reliable control over when each URL is ready to scan.
- The community contributor, whose stalled work was validated, released, and credited.
- Scanner maintainers and future contributors, who can build additional per-URL behavior through the existing `urlConfigs` extension point.

## Questions to answer later

- Which customers or teams adopt the new SPA readiness option, and how many scans does it enable?
- Did users report fewer incomplete or inconsistent scans after moving from implicit page timing to selector-based readiness?
- What feedback did the original contributor or other community participants share after the v3.5.0 release?
