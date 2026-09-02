# Grouped Dependabot Package Updates

**Date:** 2026-09-02

## Work moment

I independently identified and fixed a recurring dependency update problem in the alt-text Slack bot. Dependabot was opening three separate pull requests for related packages that depended on one another, which caused checks to fail and blocked each pull request from being merged independently.

I updated the Dependabot configuration so the three interdependent packages are bumped together to the same version in a single pull request.

## Why it mattered

First Responders had to investigate the failing checks, recognize that the package updates were interdependent, and manually create a replacement pull request containing all three version bumps. This was a recurring, tedious maintenance task that added avoidable investigation and coordination time.

## What changed

Dependabot now opens one mergeable pull request for the related package updates instead of three individually failing pull requests. This removes the need for First Responders to diagnose the known failure pattern and manually consolidate the updates, reducing the number of pull requests they need to handle from three to one each time the packages are updated.

## Evidence

| Metric                                     | Before | After |
| ------------------------------------------ | ------ | ----- |
| Pull requests per related package update   | 3      | 1     |
| Manual consolidation pull request required | Yes    | No    |

- [Example of the previous manual consolidation workflow](https://github.com/github/alt-text-slack-bot/pull/281)
- [Dependabot grouping fix](https://github.com/github/alt-text-slack-bot/pull/283)

## How I worked

I noticed a repeated operational problem, traced the failing checks to packages that needed to move together, and addressed the root cause in Dependabot's configuration. I automated the established manual workaround so future updates follow the mergeable path by default.

## Who benefited

First Responders responsible for dependency update maintenance on the alt-text Slack bot benefit from fewer pull requests, less failure investigation, and no manual consolidation step for these related packages.

## Questions to answer later

- How often were these related package updates generated, and how much First Responder time did each manual consolidation take?
- Did subsequent grouped Dependabot updates pass checks and merge without manual intervention?
