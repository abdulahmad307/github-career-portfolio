# Agentic Accessibility Fix Prioritization

**Date:** 2026-09-10

## Work moment

As the Accessibility Compliance Fundamentals champion, I was asked to move the Fundamentals Agentic Fixes initiative forward by identifying audit issues that the Developer Experience team could potentially automate with Copilot agents.

Before proposing candidates, I reviewed issues in the accessibility audits repository and consulted an audit analysis created by Lindsey Wild with Copilot to identify the most common WCAG violation categories. I found that WCAG 1.3.1 was the most common category, but that the category contained distinct failure patterns that would require different fixes. For example, content not being announced by a screen reader and text not being programmatically defined both fall under WCAG 1.3.1, but they are not the same technical problem.

Rather than treating the WCAG category as one broad automation task, I separated it into two concrete subcategories and filed a Developer Experience issue for each agentic fix opportunity.

## Why it mattered

Accessibility audit remediation currently requires owning service teams to investigate findings, understand unfamiliar accessibility requirements, locate the relevant code, and determine an appropriate fix. Many engineers on those teams are not accessibility specialists, so this work can take significant time and compete with their product priorities.

Prioritizing the most common violation category creates an opportunity for agentic fixes to address a larger share of the audit backlog. Splitting WCAG 1.3.1 by actual failure pattern also gives the Developer Experience team clearer, more technically coherent problems than a category-level request would provide.

## What changed

- The Fundamentals Agentic Fixes initiative gained two concrete accessibility automation candidates for Developer Experience evaluation.
- The candidates were grounded in audit-repository evidence and a WCAG-frequency report rather than selected from anecdotal examples.
- WCAG 1.3.1 was decomposed into two distinct technical issue patterns so each proposed agent could target a specific remediation problem.
- The Developer Experience team now has scoped issues it can assess and develop further.
- If implemented successfully, these agentic fixes could reduce service-team remediation effort from investigating and authoring a fix to reviewing and approving a proposed pull request. Implementation and measured time savings have not been captured yet.

## Evidence

- [Fundamentals Agentic Fixes initiative](https://github.com/github/fundamentals/issues/1372)
- [Accessibility audit issues](https://github.com/github/accessibility-audits/issues)
- [WCAG violation frequency analysis created by Lindsey Wild with Copilot](https://github.com/github/accessibility-audits/blob/main/audit-issue-analysis/2026-04-13-15-25-12/all-wcag-violations.md)
- [Developer Experience issue 2822](https://github.com/github/dx/issues/2822)
- [Developer Experience issue 2821](https://github.com/github/dx/issues/2821)
- Best evidence to add later: issue acceptance or prioritization, implemented agent behavior, number of applicable audit findings, fix success rate, review acceptance rate, and remediation time saved.

## How I worked

I started with evidence by reviewing the audit backlog and an AI-assisted analysis of violation frequency before recommending where the Developer Experience team should invest. I then applied accessibility expertise to look beneath the WCAG label and distinguish different technical failure modes within the most common category.

This avoided handing the partner team an overly broad request. I translated the audit data into two scoped opportunities that connect a company accessibility need with a practical agentic workflow. I also preserved the distinction between what is complete now, the research and two filed issues, and the expected benefits that depend on future implementation and validation.

## Who benefited

- The Developer Experience team, which received two evidence-backed and more narrowly scoped agentic fix opportunities.
- GitHub service teams that own accessibility audit findings and could spend less time diagnosing and implementing common fixes if the agents are successful.
- Accessibility auditors and the Fundamentals program, which could gain a more scalable path for reducing common WCAG 1.3.1 findings.
- GitHub users who rely on programmatically defined and correctly announced content, if the proposed fixes are implemented and adopted.

## Questions to answer later

- How many open or historical audit findings match each of the two WCAG 1.3.1 subcategories?
- Which proposals does Developer Experience implement, and how accurately do the agents identify and fix the targeted patterns?
- How much remediation time is saved, and what percentage of generated pull requests are approved by service teams?
