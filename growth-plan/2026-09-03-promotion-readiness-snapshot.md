# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Accessibility Engineering, Level II targeting Level III.
- **Role-reference coverage:** `Role reference missing`. Accessibility Engineering is absent from both the curated and raw Career Stage Profile indexes. Software Engineering was not substituted for the stated job family.
- **References used:** [Curated Career Stage Profile index](../reference/career-stage-profiles/curated/README.md) and [raw profile index](../reference/career-stage-profiles/README.md) for coverage verification; [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general performance and promotion guidance.
- **Portfolio evidence used:** eleven real [impact notes](../impact-notes/), including the newly captured [axe scanning workflow migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md). [Current goals](current-goals.md), [manager calibration](manager-calibration.md), and [FY26 Q3 peer feedback](../feedback/FY26-Q3-peer-feedback.md) contain only placeholders or examples and contribute no readiness evidence.

## Snapshot Metadata

- **Snapshot date:** 2026-09-03
- **Current grade and target:** Level II to Level III
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** [2026-08-11 baseline](2026-08-11-promotion-readiness-snapshot.md), [2026-08-11 follow-up](2026-08-11-promotion-readiness-snapshot-2.md), and [2026-09-02 snapshot](2026-09-02-promotion-readiness-snapshot.md)
- **Evidence counts:** 11 real impact notes, 0 eligible feedback entries, 0 real goals, 0 manager-calibration entries, and 3 prior snapshots

## Readiness Snapshot

The portfolio currently shows a repeated pattern of owning complex accessibility systems from ambiguous problem through implementation, rollout, and operational use. The newly captured axe scanning migration is especially useful because it establishes historical evidence of DRI ownership before the more recent Port migration. Abdul led a multi-PR migration while learning an unfamiliar codebase, communicated weekly through an epic, collaborated on the new scanner's architecture, consolidated a fragmented multi-system workflow, removed a Datadog dependency, expanded page coverage, and improved service-team remediation tracking.

Combined with the [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), the portfolio now shows DRI behavior across two separate migrations rather than a single high-priority assignment. The scanner migration also connects several later accomplishments into a clearer arc: early adoption of the open-source scanner created the internal foundation that could later consume the [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) and other scanner capabilities.

The evidence remains thin on role-specific Level III expectations, manager assessment, peer perspectives, goals, aggregate adoption, and quantified cost or cycle-time outcomes. The newly captured history strengthens the case for sustained ownership, technical breadth, and team enablement, but a manager must still determine whether these responsibilities meet Level III expectations and represent durable business need for an expanded role.

## Historical Readiness Movement

- **What strengthened:** The portfolio gained one substantial historical project with an epic and five implementation PRs. It adds evidence of large-project DRI ownership, weekly stakeholder communication, learning while delivering, architecture collaboration, multi-system simplification, cost reduction, broader scan coverage, persistent caching, and end-user workflow improvement. This is newly captured evidence, not evidence that the work occurred after the September 2 snapshot.
- **What stayed stable:** Root-cause problem solving, reusable architecture, operational resilience, responsible attribution, cross-team collaboration, and following work through to a usable outcome remain the dominant patterns.
- **What remains open:** Role-specific Level III expectations, manager calibration, eligible feedback, SMART goals, project dates, aggregate adoption metrics, quantified savings, and confirmed business need for a higher-grade role remain unresolved.
- **What changed in the narrative:** Yesterday's snapshot relied heavily on the Port migration as the strongest DRI example. The axe migration now shows a longer arc: Abdul has led more than one consequential migration, used an internal workflow to exercise a new open-source platform, and repeatedly improved both technical architecture and the operating model around it.

## Strengths to Lean On

### 1. Repeated DRI ownership of complex migrations

The axe scanning migration and Port migration each required issue decomposition, stakeholder communication, technical delivery, and continuity across systems. The axe migration adds weekly epic updates and five implementation PRs; the Port migration adds deadline management, deliberate reprioritization, production parity testing, and on-time delivery. Together they map to Scope and Impact, Leadership and Communication, accountability, rapid delivery, and delivering success. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md).

### 2. Platform thinking and durable technical design

The axe migration consolidated a multi-repository, Datadog-dependent workflow around the open-source scanner. The later plugin system and `urlConfigs` work created extension points that support new scan modes and page-specific behavior without repeated top-level changes. This maps to Technical Depth, Scope and Impact, and enabling others to build on shared systems. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [scanner plugins](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).

### 3. Improving systems and operating models together

The work repeatedly changes more than code. The axe migration centralized ownership and redesigned violations as trackable sub-issues; governance scripts became visible weekly Actions; duplicated Product Operations automation became a shared Action; and interdependent Dependabot updates became one mergeable PR. This maps to Breadth, Technical Depth, accountability, and scalable delivery. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md), [centralized automation](../impact-notes/2026-08-11-centralized-product-ops-automation.md), and [grouped Dependabot updates](../impact-notes/2026-09-02-grouped-dependabot-package-updates.md).

### 4. Collaboration that enables delivery and learning

Abdul supported Clay Miller through scanner architecture discussions, data-contract decisions, and code reviews while learning the codebase and leading its first internal adoption. He later worked closely with Rafael Rodriguez and Danyal Siddiqui to validate the Port integration across sandbox, staging, and production. This maps to Breadth, Leadership and Communication, seeking diverse perspectives, and working as one GitHub. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md).

### 5. Customer and maintainer outcomes

Service teams gained item-level remediation tracking and broader page coverage through the axe migration. A user-reported mobile accessibility issue was resolved and confirmed by the reporting user within two weeks. Maintainers gained clearer audit-report state and fewer dependency-update PRs. This maps to staying close to customers, Scope and Impact, and delivering success. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md), [audit report resolution](../impact-notes/2026-09-02-audit-label-report-resolution.md), and [grouped Dependabot updates](../impact-notes/2026-09-02-grouped-dependabot-package-updates.md).

## Gaps and Growth Opportunities

### Role-specific Level III expectations: Needs manager calibration

No Accessibility Engineering profile is available in the reference layer. Obtain the current Level III profile and ask the manager to map the two migrations, platform architecture, operational ownership, collaboration, and customer follow-through to its specific expectations.

### Sustained target-grade scope: Needs manager calibration

Two distinct DRI migrations provide stronger evidence of repeated broad ownership than the prior snapshot. The portfolio still needs project dates, the manager's assessment of complexity and autonomy, and confirmation that this scope is sustained and expected as part of Abdul's role.

### Quantified scale, savings, and adoption: Partial evidence

The portfolio has useful before-and-after measures, including a 3-to-1 PR reduction, a two-week customer resolution, one-day data freshness improvement, two weekly automations, and a 30-to-40-minute workflow baseline. The axe migration adds qualitative Datadog cost reduction and development-speed improvement, but not dollar savings, service and page counts, sub-issue volume, or cycle-time change.

### Peer and stakeholder perspectives: Missing evidence

There is no eligible real feedback. Request specific behavioral feedback from Clay Miller on architecture collaboration and migration leadership, Rafael Rodriguez or Danyal Siddiqui on cross-team delivery, a service-team user on sub-issue tracking, and a scanner contributor on technical guidance.

### Goals and manager alignment: Missing evidence

The goals file remains a template and the manager-calibration log has no real entries. Add SMART goals tied to current priorities and record the manager's explicit view of Level III expectations, strongest evidence, remaining gaps, business need, and timing.

## Impact Narrative Opportunities

- **Quantify the axe migration:** Add actual project dates, Datadog savings, services and pages covered, violation sub-issue counts, development cycle-time improvement, and examples of bugs found through first-party scanner adoption to the [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md).
- **Show the progression between projects:** Clarify how lessons, infrastructure, or credibility from the axe migration enabled the later [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md).
- **Add partner perspectives:** Capture how Clay experienced Abdul's architecture support and DRI leadership, and how service teams experienced the move from violation lists to sub-issues.
- **Complete existing outcome gaps:** Add Port service counts and run evidence, Dependabot time saved, audit-validator follow-up results, scanner plugin adoption, and governance automation reliability to the relevant impact notes.
- **Separate historical capture from recent delivery:** Add actual ship dates to the impact notes so future snapshots can distinguish when work happened from when its evidence was documented.

## Behavioral Evidence (How)

- **How we work:** Staying close to customers appears in service-team-oriented sub-issue tracking, expanded scan coverage, service-team scanner configuration, and direct confirmation of the mobile accessibility fix. Seeking perspectives appears in architecture work with Clay and production validation with the Port team. Consolidation, open-source dogfooding, and reusable systems show a focus on scalable value. Competencies: Technical Depth, Breadth, Scope and Impact. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md), and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md).
- **How we interact:** The notes show integrity through explicit attribution of Clay's scanner and caching contributions and the Issues team's implementation. They show accountability through weekly DRI updates, migration follow-through, responsible AI review, and direct user closure. Peer testimony about respect and collaboration remains missing. Competencies: Leadership and Communication, Breadth. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md).
- **How we lead:** Two migration epics, weekly updates, issue decomposition, architecture discussions, extension points, and visible automations created clarity for stakeholders and maintainers. Consolidated ownership, durable caching, sub-issue tracking, and contributor guidance made it easier for others to deliver and remediate work. Competencies: Leadership and Communication, Scope and Impact. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [scanner plugins](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), and [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md).
- **Leadership Principles:** Evidence is strongest for creating clarity and delivering success. Repeated DRI ownership and structures that improve other teams' autonomy strengthen the signal that Abdul generates conditions for others to succeed, but direct stakeholder feedback is still needed.

## Role Expectation Map

This map is lower confidence because an Accessibility Engineering Level III reference is unavailable. It uses GitHub's general promotion and performance criteria and requires manager calibration.

| Expectation                                              | Evidence status           | Supporting evidence                                                                                                                                                                                                                                              | Coaching note                                                                                                                                 |
| -------------------------------------------------------- | ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| Consistently delivers meaningful impact                  | Partial evidence          | Eleven impact notes across migrations, architecture, operations, and customer accessibility                                                                                                                                                                      | The pattern is broader and has multiple concrete outcomes, but project dates, peer validation, and target-grade assessment remain incomplete. |
| Handles broader or more complex responsibilities         | Needs manager calibration | [Axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), and [scanner plugins](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) | Two DRI migrations strengthen the scope signal, but only the manager can map their complexity, autonomy, and consistency to Level III.        |
| Delivers results aligned to business priorities          | Strong evidence           | Company-wide Port migration delivered on time; internal scanner migration consolidated systems and removed a Datadog dependency                                                                                                                                  | Quantify the scanner migration's cost, adoption, and delivery outcomes and confirm sustained alignment.                                       |
| Creates clarity and enables others                       | Strong evidence           | Two migration epics, weekly updates, sub-issue tracking, scanner extension points, visible workflows, and contributor guidance                                                                                                                                   | Add stakeholder feedback showing how these structures changed others' effectiveness.                                                          |
| Models values and accountability                         | Partial evidence          | Customer closure, transparent attribution, learning while delivering, deadline ownership, and root-cause improvements                                                                                                                                            | Eligible peer and manager observations are needed to validate this pattern from other perspectives.                                           |
| Demonstrates organizational need for expanded role scope | Needs manager calibration | Company-wide retirement work, internal scanning infrastructure, accessibility fundamentals ownership, and governance automation                                                                                                                                  | The evidence shows recurring organizational needs, but the manager must confirm durable higher-grade scope and role need.                     |

## Business Need and Budget Boundaries

- **Business need:** The portfolio now shows a longer-standing need for ownership of accessibility infrastructure and migrations. The axe workflow required a DRI to consolidate fragmented systems, reduce external dependencies, expand scan coverage, and improve service-team remediation. The Port initiative later required another DRI to migrate accessibility fundamentals within a company-wide retirement deadline. Shared scanner architecture, governance automation, and customer issue ownership add further capability-gap signals. This supports a stronger business-need discussion, but only the manager can establish that these responsibilities are durable, require Level III scope, and should formally expand the role.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Which current Accessibility Engineering Level III expectations apply, and how do the axe and Port migrations map to them?
2. Do two separate DRI migrations demonstrate sustained target-grade scope, complexity, autonomy, and delivery? What evidence is still missing?
3. Which parts of the scanner migration, such as platform consolidation, service-team workflow design, architecture collaboration, or team autonomy, are most promotion-relevant?
4. Does the organization have a durable business need for Level III ownership across accessibility scanning, compliance infrastructure, governance automation, and cross-team migrations?
5. What peer evidence, outcome measures, timing, nomination steps, and org-specific expectations should Abdul address next, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` The newly captured axe migration makes the evidence meaningfully stronger by showing repeated DRI ownership and a longer history of broad technical delivery. A responsible promotion justification still requires the applicable Accessibility Engineering Level III expectations, manager calibration of sustained scope, peer perspectives, and confirmation of durable business need. Drafting manager-facing promotion copy now would still require unsupported assumptions about the target role.

## Next Evidence Moves

1. Ask the manager for the applicable Accessibility Engineering Level III profile and map both migrations and recurring infrastructure ownership to specific expectations.
2. Capture a manager-calibration entry covering sustained target-grade scope, business need, timing, nomination process, and the most important remaining gap.
3. Request specific feedback from Clay Miller, Rafael Rodriguez or Danyal Siddiqui, a service-team consumer of scanning issues, and a scanner contributor, then set an explicit sharing preference for each entry.
4. Replace the placeholder goals with 3 to 5 SMART goals tied to measurable accessibility infrastructure, customer outcomes, operational reliability, and broader ownership.
5. Add project dates, Datadog savings, service and page counts, sub-issue volume, and development cycle-time evidence to the axe migration; add remaining scale and reliability measures to other notes.
6. Revisit readiness in 3 to 6 months using new outcomes, approved feedback, goal progress, and manager calibration rather than elapsed time alone.
