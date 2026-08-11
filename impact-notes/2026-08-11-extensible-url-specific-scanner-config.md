# Extensible URL-Specific Scanner Configuration

**Date:** 2026-08-11

## Work moment

After service teams reported that the open-source accessibility scanner was scanning third-party content that should have been excluded, I documented the deficiency, outlined an approach, and guided Copilot through implementing a new `urlConfigs` input. I reviewed the first pass, identified that it was too narrow, and directed a more robust implementation that supports custom configuration for each URL.

## Why it mattered

The scanner's original `urls` input accepted only a list of URL strings. It could not express URL-specific behavior, so teams could not exclude third-party content for one page or configure other page-specific scanning needs. A narrowly implemented selector-exclusion fix would have solved the immediate problem without creating room for future use cases.

## What changed

The new `urlConfigs` input accepts a list of objects, allowing each URL to carry its own scanner configuration. Its first use case was excluding specific CSS selectors from scans, but the more extensible design supports other per-URL behavior without requiring a new top-level input for every future need.

The design has enabled an in-progress open-source contribution for single-page applications, where scanning needs to wait until the application is fully loaded. I did not author that contribution, but I reviewed the contributor's original implementation and helped them revise it into a more robust approach that uses `urlConfigs`. I am continuing to help move the PR toward merge. The proposed fix demonstrates that the configuration model can support URL-specific settings beyond the original selector-exclusion use case.

## Evidence

- [Issue #212: Documented third-party content scanning and outlined an approach](https://github.com/github/accessibility-scanner/issues/212)
- [PR #213: Implemented URL-specific scanner configuration](https://github.com/github/accessibility-scanner/pull/213)
- [Review direction on PR #213: Requested a more robust implementation](https://github.com/github/accessibility-scanner/pull/213#issuecomment-4389842135)
- [PR #223: In-progress SPA scanning contribution using URL-specific configuration](https://github.com/github/accessibility-scanner/pull/223)
- Best evidence to add later: PR #223's merge outcome, service-team confirmation that third-party content is excluded correctly, and examples of additional `urlConfigs` use cases.

## How I worked

I translated service-team feedback into a documented product and technical gap, then used Copilot to accelerate the first implementation. I did not accept the generated first pass as sufficient: after reviewing it, I gave clear direction to replace the narrow solution with a more extensible data model. I later applied the same review judgment to PR #223, helping an open-source contributor replace their original non-ideal implementation with a more robust approach based on `urlConfigs`. This balanced solving the immediate selector-exclusion problem with creating a durable API and helping contributors use it effectively.

## Who benefited

Service teams using the internal axe-scanning workflow, users and contributors of the open-source accessibility scanner, and teams that need fine-grained behavior for third-party content, single-page applications, or other URL-specific scanning requirements.

## Questions to answer later

- Which service teams confirmed that the selector exclusions resolved their third-party content scanning issues?
- Did PR #223 merge, and what SPA scanning behavior did the final implementation support?
- What compatibility or API-design trade-offs shaped the final object structure?
