# Accessibility Scanner Plugin System

**Date:** 2026-08-11

## Work moment

I built and shipped a new plugin system for GitHub's open-source accessibility scanner. I also wrote a discussion post to introduce the system and its possibilities to the broader Core UX team at GitHub.

## Why it mattered

Before this work, the scanner could perform only one type of scan: non-interactive axe scanning. That fixed model limited the scanner's ability to support other accessibility testing approaches, including interactive scans and specialized checks owned by users.

## What changed

The merged plugin system turned the scanner from a single-purpose implementation into an extensible platform. Since it shipped, contributors have added a built-in reflow plugin that anyone can use and enhanced the system to load plugins from npm, including a user-owned alt-text plugin. I did not build these follow-on plugins, but the extension architecture I created unlocked their development and made new scan types possible without adding them directly to the scanner's original fixed implementation.

## Evidence

- [Merged PR #133: Accessibility scanner plugin system](https://github.com/github/accessibility-scanner/pull/133)
- [Core UX discussion #2026: Plugin system announcement](https://github.com/github/core-ux/discussions/2026)
- A new built-in reflow plugin is available for any scanner user.
- [Accessibility scanner alt-text plugin: Example of a plugin loadable from npm](https://github.com/github/accessibility-scanner-alt-text-plugin)
- [Feedback from Lindsey Wild](../feedback/FY27-Q1-peer-feedback.md) validating the plugin system's quality and noting that it empowered Tetralogical to create custom plugins and supported several customer meetings and demos.
- [Feedback from Clay Miller](../feedback/FY27-Q1-peer-feedback.md) documenting sustained planning, problem-solving, and code-review collaboration across the scanner's development.
- Best evidence to add later: links to the reflow and npm-loading changes, broader plugin adoption, and feedback from scanner users or the Core UX discussion.

## How I worked

I addressed the scanner's architectural limitation by designing an extension point rather than adding another hard-coded scan mode. I also shared the completed system with the broader Core UX team so others could understand and build on the new capability. The reflow and npm plugin work by other contributors demonstrates that the architecture supported follow-on innovation without requiring me to implement each new scan type.

## Who benefited

Users and contributors of the open-source accessibility scanner, including GitHub teams that need built-in or custom accessibility scan types and Core UX practitioners exploring more advanced scanning workflows.

## Kudos and feedback

Lindsey Wild said the plugin system was "no small task," that its plan and code met GitHub's standards, and that it unlocked future scanner updates, custom plugins from Tetralogical, and several customer meetings and demos. Clay Miller described my customer-zero input as invaluable and highlighted the depth and pragmatism of my reviews: proposing sound refactors, clearly labeling suggestions as optional when a ship was time-sensitive, following up on prioritization, and creating a reference implementation rather than leaving drive-by feedback. Their [exact feedback is preserved in the FY27 Q1 feedback log](../feedback/FY27-Q1-peer-feedback.md).

## Questions to answer later

- What other built-in or user-owned plugins are now planned?
- What adoption, feedback, or new scanning coverage has resulted from the plugin system?
- What architectural trade-offs or compatibility decisions shaped the plugin API?
