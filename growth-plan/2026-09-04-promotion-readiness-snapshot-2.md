# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Software Engineering, Level II targeting Level III.
- **Role-reference coverage:** `Curated reference available`. The [Software Engineering curated summary](../reference/career-stage-profiles/curated/software-engineering.md) covers P1 through P6, but the portfolio does not establish how Level II and Level III map to those P/G profiles.
- **References used:** [Software Engineering curated summary](../reference/career-stage-profiles/curated/software-engineering.md) as curated role guidance; [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general performance and promotion guidance.
- **Portfolio evidence used:** thirteen real [impact notes](../impact-notes/), [FY27 Q1 peer feedback](../feedback/FY27-Q1-peer-feedback.md), [current goals](current-goals.md), and [manager calibration](manager-calibration.md). Lindsey Wild's and Clay Miller's entries were approved for this snapshot only; their saved sharing preferences remain unchanged. Goals and manager calibration contain only placeholders or examples and contribute no readiness evidence.

## Snapshot Metadata

- **Snapshot date:** 2026-09-04
- **Current grade and target:** Level II to Level III
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** [2026-08-11 baseline](2026-08-11-promotion-readiness-snapshot.md), [2026-08-11 follow-up](2026-08-11-promotion-readiness-snapshot-2.md), [2026-09-02 snapshot](2026-09-02-promotion-readiness-snapshot.md), [2026-09-03 snapshot](2026-09-03-promotion-readiness-snapshot.md), [2026-09-03 follow-up](2026-09-03-promotion-readiness-snapshot-2.md), [2026-09-03 feedback-informed snapshot](2026-09-03-promotion-readiness-snapshot-3.md), and [2026-09-04 Software Engineering snapshot](2026-09-04-promotion-readiness-snapshot.md)
- **Evidence counts:** 13 real impact notes, 2 feedback entries approved for this snapshot, 0 real goals, 0 manager-calibration entries, and 7 prior snapshots

## Readiness Snapshot

The portfolio currently shows repeated ownership of software systems across requirements, architecture, implementation, migration, testing, production support, and follow-through. The strongest evidence clusters around accessibility scanner architecture and operations, two DRI-led migrations, sustained technical partnership with other engineers, and repeated delivery against organization-wide transitions.

The newly captured [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) adds a distinct example of resolving ambiguity under a hard deadline. Abdul discovered that Port URLs varied by service type, gathered context from Clay Miller and CELA teammates, converted the blocked change into a four-part plan under the main Port epic, used Copilot to accelerate repetitive data updates, caught and corrected an omitted file, and merged the final change four days before the Service Catalog UI shutdown. Together with the later [scorecard Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), this shows more than a single Port deliverable: it shows continuity across separate phases of a company-wide retirement initiative.

These examples align with Software Engineering signals such as collaborating with stakeholders to determine scenario requirements, leading technical solutions within the team's area, refining plans as unknowns emerge, and testing or reviewing implementation details. Several examples resemble P4/G9 scope signals, but this remains a comparison rather than a target-grade conclusion because the portfolio does not establish whether Level III maps to P4/G9.

The evidence remains thin on manager assessment, active SMART goals, aggregate adoption and business metrics, and confirmation that the organization needs a Level III role for this scope. Approved peer feedback strengthens confidence in sustained reliability, judgment, execution, and contribution to others' success, but does not replace grade mapping or business-need calibration.

## Historical Readiness Movement

- **What strengthened:** One newly captured historical impact note adds another deadline-bound result within the Service Catalog retirement. It strengthens evidence of cross-team requirements discovery, ambiguity management, issue decomposition, responsible AI leverage, review follow-through, and delivery before an externally fixed cutoff. This is newly documented past work, not progress inferred from time passing.
- **What stayed stable:** Architecture leadership, repeated migration ownership, root-cause problem solving, lifecycle accountability, pragmatic technical judgment, and enabling other engineers remain the dominant patterns. Lindsey Wild's and Clay Miller's approved feedback continues to validate how Abdul works.
- **What remains open:** The Level III-to-P/G crosswalk, manager calibration, SMART goals, aggregate adoption and reliability measures, broader stakeholder feedback, durable business need, and budget visibility remain unresolved.
- **What changed in the narrative:** The Port story is now a sequence rather than one isolated August migration. Abdul first preserved CELA stakeholders' access to service information before the June UI shutdown, then later led the deeper scorecard data migration to Port. This makes the connection to a company-wide priority and repeated ownership clearer.

## Strengths to Lean On

### 1. Resolving ambiguous dependencies into executable plans

The audit-request link migration began as a blocked pull request because Port URL patterns differed for artifact and functional-product services. Abdul gathered stakeholder context, identified SLA JSON files as the durable source, created a batch issue with four sub-issues, completed the prerequisites, and returned to finish the original change. This aligns with the P4/G9 comparison signals of collaborating on scenario requirements, leading technical discussions, and refining implementation plans. Source: [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md). Competencies: Technical Depth, Breadth, Leadership and Communication, Scope and Impact.

### 2. Repeated delivery against organization-wide transitions

The two Port notes show ownership across separate stages of the Service Catalog retirement. The June work preserved audit-request navigation before the UI shutdown; the August work migrated accessibility compliance scorecard data directly to Port, improved freshness from one day behind to current, and validated parity through production. Sources: [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) and [scorecard Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md). Competencies: Breadth, Leadership and Communication, Scope and Impact.

### 3. Leading technical solutions and durable architecture

The [scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) created an extension architecture used by later plugins. The [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md) replaced a narrow fix with a reusable model, while the [incident response](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md) contributed the lasting JSON-file transfer direction. These examples align with leading technical solutions and creating architecture proposals within the team's area. Competencies: Technical Depth, Leadership and Communication, Scope and Impact.

### 4. Practical judgment with accountable AI leverage

In the new Port-link work, Abdul gave Copilot a detailed cross-referencing task, reviewed the result, noticed one missing SLA file, and completed a follow-up fix. In `urlConfigs`, he rejected an overly narrow AI-assisted first pass and redirected it toward an extensible design. This demonstrates acceleration without delegating judgment or accountability. Sources: [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md). Competencies: Technical Depth, Leadership and Communication.

### 5. Sustained contribution to others' success

Clay Miller documented 40 reviews across his 55 approved scanner PRs and described Abdul's planning input, practical prioritization, and reference implementation. Lindsey Wild identified reliability, execution, proactive support, and ownership as six-month patterns. The impact notes add issue structures, weekly updates, technical proposals, and incident support that enabled other engineers and stakeholders to act. Source: both approved entries in [FY27 Q1 feedback](../feedback/FY27-Q1-peer-feedback.md). Competencies: Breadth, Leadership and Communication, Scope and Impact.

## Gaps and Growth Opportunities

### Exact target-profile mapping: Needs manager calibration

The career profile uses Level II and Level III while the Software Engineering reference uses P/G profiles. Confirm the target P/G profile before treating P4/G9 comparison signals as Level III expectations.

### Sustained target-grade scope: Needs manager calibration

The new note adds another example of broader ownership and shows Port-related delivery across June and August. The manager still needs to determine whether the overall pattern consistently exceeds current-grade expectations and represents the expected scope of the target role.

### Measurable scale and aggregate outcomes: Partial evidence

The portfolio now includes four completed sub-issues, delivery four days before shutdown, 40 of 55 approved scanner PRs reviewed, a 3-to-1 PR reduction, current rather than one-day-old Port data, two weekly automations, and a customer-confirmed fix within two weeks. It still lacks the number of services and SLA files migrated, audit requests using the new links, scanner adoption, Port coverage, Datadog savings, incident recovery time, and reliability trends.

### Goals and development direction: Missing evidence

[Current goals](current-goals.md) contains only placeholders. Add 3 to 5 SMART goals that connect target-scope growth to measurable platform adoption, reliability, customer outcomes, and organization-wide priorities.

### Manager and stakeholder calibration: Missing evidence

[Manager calibration](manager-calibration.md) has no real entry, and approved feedback comes from two close engineering collaborators. Capture the manager's target-grade assessment and seek feedback from a CELA partner, Port partner, service-team consumer, or customer-facing stakeholder.

## Impact Narrative Opportunities

- **Tell the Port work as a phased continuity story:** Connect the [audit-request link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) and [scorecard integration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md) as separate responses to the same company-wide retirement, while keeping their outcomes distinct.
- **Quantify migration reach:** Add the number of services, SLA JSON files, generated audit requests, and post-shutdown link failures or confirmations to the audit-request note.
- **Make the unknown and decision sharper:** Document how artifact and functional-product URL patterns differed, why storing URLs in SLA JSON was chosen over runtime inference, and what alternatives were rejected.
- **Show stakeholder effect:** Capture whether the batch plan, data source, and deadline communication helped CELA or Port partners coordinate more effectively.
- **Connect AI leverage to quality control:** Keep the sequence explicit: detailed prompt, cross-reference and bulk update, human review, detected omission, corrective PR, final integration.

## Behavioral Evidence (How)

- **How we work:** Abdul stayed close to internal customers by preserving service information links used in CELA audit requests, shaping the scanner as customer zero, and following a mobile accessibility report through user confirmation. He sought perspectives from Clay, CELA teammates, Port partners, service teams, and scanner contributors. Sources: [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [scorecard Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), and Clay's approved feedback. Competencies: Technical Depth, Breadth, Scope and Impact.
- **How we interact:** Abdul preserved attribution, surfaced and corrected omissions, and distinguished optional improvements from ship-blocking issues. Lindsey validates dependable follow-through and timely support; Clay validates respectful, substantive review and pragmatic prioritization. Sources: [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), and both approved entries in [FY27 Q1 feedback](../feedback/FY27-Q1-peer-feedback.md). Competencies: Leadership and Communication, Breadth.
- **How we lead:** Abdul turned ambiguous work into epics, batch issues, sub-issues, architecture proposals, and reference implementations. The new note shows him restoring clarity to a blocked deadline-bound migration; the broader portfolio shows those structures leading to shipped changes and helping others succeed. Sources: [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [scorecard Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), and both approved feedback entries. Competencies: Leadership and Communication, Scope and Impact.
- **Leadership Principles:** Evidence is strongest for creating clarity and delivering success. Approved peer feedback and the new cross-team migration example strengthen the generating-energy signal because Abdul's plans, technical input, reviews, and follow-through enabled collaborators to move work forward.

## Role Expectation Map

The curated Software Engineering reference is applicable, but the Level III-to-P/G crosswalk is unknown. This table uses P4/G9 scope signals as a comparison for manager calibration, not as a claim that Level III equals P4/G9.

| Expectation                                                                    | Evidence status           | Supporting evidence                                                                                                                                                                                                                                                                                                                                                                   | Coaching note                                                                                                                                                   |
| ------------------------------------------------------------------------------ | ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Collaborates with stakeholders to determine requirements for a scenario        | Strong evidence           | [Audit-request Port links](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [scorecard Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md) | The new note adds direct requirements discovery across Clay, CELA, and prior Port stakeholder context. Confirm that these scenarios match target-grade breadth. |
| Leads discussions for technical solutions within the team's area               | Strong evidence           | [Scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), audit-request URL design, and Clay's feedback                                                                                                                                                        | Architecture, data-location, transfer, and review decisions align with this P4/G9 comparison signal.                                                            |
| Creates architecture proposals by testing design hypotheses and refining plans | Strong evidence           | Plugin architecture, `urlConfigs`, SLA JSON URL storage, Port dual-running and environment validation, and JSON-file transfer                                                                                                                                                                                                                                                         | Add alternatives and decision records to make the reasoning and testing more directly evaluable.                                                                |
| Plans and delivers through ambiguity                                           | Strong evidence           | Four-part Port-link batch plan, two DRI migrations, weekly epic updates, and post-launch incident response                                                                                                                                                                                                                                                                            | The new note provides a concrete blocked-to-shipped example with a hard deadline and completed dependencies.                                                    |
| Delivers meaningful results consistently                                       | Partial evidence          | 13 impact notes, two separately timed Port phases, and Lindsey's six-month feedback                                                                                                                                                                                                                                                                                                   | Evidence breadth and timeline are improving, but aggregate outcomes and manager assessment remain incomplete.                                                   |
| Demonstrates the skills and behaviors required at Level III                    | Needs manager calibration | P4/G9-aligned comparison signals across requirements, architecture, delivery, and collaboration                                                                                                                                                                                                                                                                                       | Confirm the Level III-to-P/G mapping and identify any target responsibilities absent from the curated summary or portfolio.                                     |
| Shows durable organizational need for expanded scope                           | Needs manager calibration | Repeated scanner, Port, compliance, incident, and governance ownership                                                                                                                                                                                                                                                                                                                | Connect future priorities and capability gaps to a formally expanded role rather than completed projects alone.                                                 |

## Business Need and Budget Boundaries

- **Employee readiness:** The portfolio supports a manager conversation about broader Software Engineering scope through repeated complex delivery, architecture leadership, ambiguity resolution, operational accountability, and peer-validated enablement. Exact target-grade readiness still requires the Level III crosswalk and manager assessment.
- **Business need:** The two Port notes show concrete organizational demand during different phases of the company-wide Service Catalog retirement, while scanner and governance work show recurring ownership needs. This is stronger evidence that the capability matters, but it does not establish that the organization requires a Level III position. The manager must confirm that the scope is durable, strategically needed, and expected to continue at the higher grade.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Which Software Engineering P/G profile corresponds to Level III for this role, and are P4/G9 signals the correct comparison?
2. Does the sequence from the June audit-request link migration to the August scorecard integration demonstrate sustained target-grade ownership within a company-wide initiative, or should these be treated as current-grade execution?
3. Which parts of the new example matter most for target scope: stakeholder requirements discovery, resolving the Port URL ambiguity, decomposing the work, accountable AI review, or delivering before shutdown?
4. Does the organization have a durable business need for higher-grade ownership across Port migration, accessibility scanning, compliance infrastructure, incidents, and governance automation?
5. What additional metrics, stakeholder perspectives, timing, nomination steps, and organization-specific expectations should Abdul address, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` The newly captured Port-link migration strengthens evidence of repeated business-aligned delivery, ambiguity management, cross-team requirements work, and accountable execution. A responsible manager-facing justification still needs confirmation of the Level III-to-P/G mapping, manager assessment of sustained target-grade scope, and evidence that the organization needs the role at the higher grade.

## Next Evidence Moves

1. Confirm the Level III-to-P/G crosswalk with the manager and record it in [manager calibration](manager-calibration.md).
2. Ask the manager whether the two Port phases and scanner lifecycle represent sustained target-grade scope, then capture the strongest evidence, remaining gaps, business need, timing, and nomination process.
3. Add service count, SLA-file count, audit-request usage, and post-shutdown link reliability to the [audit-request Port link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md).
4. Replace [current goals](current-goals.md) placeholders with 3 to 5 SMART goals tied to platform adoption, reliability, customer outcomes, and broader ownership.
5. Request feedback from a CELA partner, Port partner, service-team consumer, manager, or customer-facing stakeholder to broaden the two engineering-peer perspectives.
6. Compare the next snapshot using only new outcomes, goal progress, approved feedback, or manager calibration, not elapsed time alone.

---

This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with your manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
