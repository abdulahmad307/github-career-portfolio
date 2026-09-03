# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Accessibility Engineering, Level II targeting Level III.
- **Role-reference coverage:** `Role reference missing`. Accessibility Engineering is absent from both the curated and raw Career Stage Profile indexes. Software Engineering was not substituted for the stated job family.
- **References used:** [Curated Career Stage Profile index](../reference/career-stage-profiles/curated/README.md) and [raw profile index](../reference/career-stage-profiles/README.md) for coverage verification; [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general performance and promotion guidance.
- **Portfolio evidence used:** twelve real [impact notes](../impact-notes/), including the newly captured [axe workflow incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md). [Current goals](current-goals.md), [manager calibration](manager-calibration.md), and [FY26 Q3 peer feedback](../feedback/FY26-Q3-peer-feedback.md) contain only placeholders or examples and contribute no readiness evidence.

## Snapshot Metadata

- **Snapshot date:** 2026-09-03
- **Current grade and target:** Level II to Level III
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** [2026-08-11 baseline](2026-08-11-promotion-readiness-snapshot.md), [2026-08-11 follow-up](2026-08-11-promotion-readiness-snapshot-2.md), [2026-09-02 snapshot](2026-09-02-promotion-readiness-snapshot.md), and [2026-09-03 snapshot](2026-09-03-promotion-readiness-snapshot.md)
- **Evidence counts:** 12 real impact notes, 0 eligible feedback entries, 0 real goals, 0 manager-calibration entries, and 4 prior snapshots

## Readiness Snapshot

The portfolio currently shows ownership across the full lifecycle of accessibility systems: identifying needs, designing and migrating platforms, communicating delivery, operating the result, responding to failures, and improving the architecture when usage outgrows an earlier design. The newly captured incident evidence adds an important dimension to the axe migration story. Abdul acknowledged and fixed a cache integration detail he had missed, then used his system knowledge to support Lindsey Wild during a separate First Responder incident, contributed a related cache fix, and proposed replacing GitHub Actions inputs and outputs with JSON files when plugin growth made the payload too large. Lindsey implemented that design, and it remains in use today.

This strengthens the evidence for accountability, operational depth, and enabling others. Combined with the [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), and [scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), the portfolio now presents a more connected arc from platform adoption to extensibility to production scaling and support.

The evidence is still unclear on role-specific Level III expectations, manager assessment, peer perspectives, active goals, incident duration, reliability trends, and aggregate business outcomes. A manager must calibrate whether this combination of delivery and operational ownership represents sustained Level III scope and whether the organization needs that expanded role.

## Historical Readiness Movement

- **What strengthened:** One newly captured historical note adds explicit accountability for a migration defect, hands-on post-launch ownership, First Responder support, technical diagnosis under failure, and a durable data-transfer design that remains in use. This is added evidence about past work, not progress inferred from another snapshot created on the same day.
- **What stayed stable:** Repeated DRI ownership, root-cause problem solving, extensible architecture, cross-team collaboration, operational resilience, accurate attribution, and customer or maintainer follow-through remain the strongest patterns.
- **What remains open:** Accessibility Engineering Level III expectations, manager calibration, eligible peer feedback, SMART goals, project and incident dates, quantified reliability and cost outcomes, and confirmed durable business need remain unresolved.
- **What changed in the narrative:** The prior snapshot showed repeated migration leadership. The new evidence extends that narrative beyond launch: Abdul remained accountable for the system, repaired his own omission, helped another responder navigate unfamiliar code, and contributed the design direction for a scaling fix that became the lasting implementation.

## Strengths to Lean On

### 1. Lifecycle ownership beyond launch

The axe work now spans migration, production operation, incident recovery, cache correction, and scaling the data-transfer model. Abdul did not treat shipping as the end of ownership. This maps to accountability, Technical Depth, Scope and Impact, continuous learning, and delivering success. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) and [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md).

### 2. Repeated ownership of complex systems and migrations

The axe and Port migrations each required technical delivery, coordination, issue management, stakeholder communication, and continuity across systems. The axe incidents add evidence that the responsibility continued into operations. This maps to Scope and Impact, Leadership and Communication, rapid delivery, and accountability. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md).

### 3. Technical judgment as systems evolve

Abdul identified when GitHub Actions inputs and outputs no longer fit growing plugin payloads and suggested file-based JSON transfer. He similarly redirected a narrow `urlConfigs` implementation toward an extensible model and designed a plugin architecture that enabled new scan types. This maps to Technical Depth, scalable delivery, and accountable decision-making. Sources: [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [scanner plugins](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md).

### 4. Enabling responders and contributors

Abdul supported Lindsey as she learned the axe workflow, investigated alternatives with her, opened a supporting PR, and provided the design direction she implemented. He also helped an external scanner contributor revise an SPA approach and created extension points used by later plugins. This maps to Leadership and Communication, Breadth, creating clarity, and generating conditions for others to succeed. Sources: [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [scanner plugins](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md).

### 5. Honest accountability and attribution

The portfolio distinguishes Abdul's missed cache detail and corrective work, Lindsey's authorship of the lasting scanner implementation, Clay Miller's cache and scanner contributions, and the Issues team's implementation of the mobile fix. This supports integrity, accountability, and respectful collaboration. Sources: [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), and [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md).

## Gaps and Growth Opportunities

### Role-specific Level III expectations: Needs manager calibration

No Accessibility Engineering reference is available. Obtain the current Level III profile and ask the manager to map lifecycle ownership, incident response, technical design, migration leadership, and engineer enablement to specific expectations.

### Sustained target-grade operational ownership: Needs manager calibration

The incidents strengthen evidence that ownership continued after launch, but the portfolio does not establish how often Abdul carries this operational scope, how it compares with Level II expectations, or whether it is expected as a durable Level III responsibility.

### Incident outcomes and reliability: Partial evidence

Three PRs support the incident story, and the JSON-file approach remains in use. The note does not include incident dates, disruption duration, time to restore, failed-run counts, post-fix reliability, or payload-size data. Add those measures where available.

### Peer and stakeholder perspectives: Missing evidence

There is no eligible real feedback. Lindsey's perspective could validate how Abdul's context, PR support, and design suggestion affected incident resolution. Feedback from Clay Miller, Rafael Rodriguez or Danyal Siddiqui, service-team consumers, and scanner contributors would strengthen the broader collaboration pattern.

### Goals and manager alignment: Missing evidence

The goals file remains a template and the manager-calibration log has no real entries. Add SMART goals and capture the manager's explicit assessment of Level III scope, evidence consistency, development gaps, business need, and timing.

## Impact Narrative Opportunities

- **Quantify incident recovery:** Add dates, duration, time to diagnosis and restoration, failed runs, payload-size limits, and reliability after the fix to the [incident note](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md).
- **Explain the technical decision:** Record which alternatives were attempted, why they failed, and why JSON files were the durable choice rather than only a successful suggestion.
- **Capture Lindsey's perspective:** Ask how the system context, cache PR, and design guidance affected her effectiveness as First Responder.
- **Connect the lifecycle story:** Present the [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), and [incident response](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md) as distinct stages: platform consolidation, capability expansion, then production scaling and operational support.
- **Close older evidence gaps:** Add Port service counts and run evidence, Datadog savings, scanner adoption, automation reliability, Dependabot time saved, and audit-validator follow-up results to the relevant notes.

## Behavioral Evidence (How)

- **How we work:** Continuous learning appears in leading a migration while new to the codebase and applying that knowledge during later incidents. Scalable thinking appears in replacing action-output transfer with JSON files, designing plugins and URL-specific configuration, centralizing automation, and moving data directly to Port. Competencies: Technical Depth, Breadth, Scope and Impact. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [scanner plugins](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md).
- **How we interact:** Abdul acted with integrity by naming his cache omission and fixing it, crediting Lindsey for implementing the file-based design, and crediting Clay and the Issues team for their work. Supporting Lindsey through an unfamiliar workflow shows collaborative accountability, though direct peer evidence is still missing. Competencies: Leadership and Communication, Breadth. Sources: [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), and [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md).
- **How we lead:** Two migration epics, weekly updates, issue decomposition, architecture discussions, First Responder support, extension points, and visible automations created clarity and enabled others to act. The incident note adds direct evidence that Abdul helped another engineer succeed during a production failure. Competencies: Leadership and Communication, Scope and Impact. Sources: [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), and [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md).
- **Leadership Principles:** Evidence is strongest for creating clarity and delivering success. First Responder support strengthens the signal for generating energy so others can succeed, but Lindsey's or another partner's feedback is needed before treating that as externally validated.

## Role Expectation Map

This map is lower confidence because an Accessibility Engineering Level III reference is unavailable. It uses GitHub's general promotion and performance criteria and requires manager calibration.

| Expectation                                              | Evidence status           | Supporting evidence                                                                                                                                                                                                                                             | Coaching note                                                                                                                                      |
| -------------------------------------------------------- | ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Consistently delivers meaningful impact                  | Partial evidence          | Twelve impact notes across migrations, architecture, operations, incidents, and customer accessibility                                                                                                                                                          | The portfolio has a coherent pattern and concrete outcomes, but project dates, external validation, and target-grade assessment remain incomplete. |
| Handles broader or more complex responsibilities         | Needs manager calibration | [Axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md) | Delivery plus post-launch ownership strengthens the scope signal, but only the manager can map it to Level III.                                    |
| Takes accountability for commitments and impact          | Strong evidence           | Owning and fixing a missed cache integration, supporting subsequent incident resolution, delivering Port on time, and closing the loop with a reporting user                                                                                                    | Add incident timing and manager or peer confirmation to strengthen consistency.                                                                    |
| Creates clarity and enables others                       | Strong evidence           | First Responder support, two migration epics, weekly updates, sub-issue tracking, scanner extension points, and contributor guidance                                                                                                                            | Capture feedback from Lindsey and other partners showing how this changed their effectiveness.                                                     |
| Delivers results aligned to business priorities          | Strong evidence           | Company-wide Port migration, internal scanner consolidation, persistent file-based data transfer, operational automation, and customer resolution                                                                                                               | Add aggregate adoption, reliability, cost, and service-scale measures.                                                                             |
| Demonstrates organizational need for expanded role scope | Needs manager calibration | Recurring ownership across accessibility scanning, compliance migration, workflow incidents, governance automation, and shared infrastructure                                                                                                                   | The portfolio shows recurring needs, but the manager must confirm durable higher-grade role scope and business need.                               |

## Business Need and Budget Boundaries

- **Business need:** The portfolio shows recurring organizational needs for ownership of accessibility infrastructure through delivery and operation. The scanner workflow required migration leadership, then informed incident response and a durable scaling fix. The Port initiative required cross-team delivery under a company deadline. Governance and maintenance notes show further needs for shared ownership, automation, and reduced operational friction. This strengthens the question of whether the role has expanded, but only the manager can confirm that these responsibilities are durable, require Level III scope, and constitute a formal business need.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Which Accessibility Engineering Level III expectations apply, and how do migration delivery, post-launch incident ownership, and engineer enablement map to them?
2. Does the connected axe story, from migration through plugin growth and incident recovery, demonstrate sustained target-grade scope and technical depth? What remains missing?
3. Does openly correcting the cache omission and supporting Lindsey's First Responder work provide meaningful evidence of accountability and leadership at the target grade?
4. Is there a durable business need for Level III ownership across accessibility scanning, compliance infrastructure, incident response, and governance automation?
5. Which peer perspectives, outcome measures, timing, nomination steps, and org-specific expectations should Abdul address next, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` The incident evidence strengthens accountability, lifecycle ownership, technical judgment, and engineer enablement. A responsible manager-facing justification still requires the applicable Accessibility Engineering Level III expectations, manager calibration of sustained scope, peer perspectives, and confirmation of durable business need. Without those inputs, the draft would risk converting strong evidence into unsupported target-grade claims.

## Next Evidence Moves

1. Ask the manager for the applicable Accessibility Engineering Level III profile and map the connected axe lifecycle, Port migration, and recurring infrastructure ownership to specific expectations.
2. Capture a manager-calibration entry covering sustained scope, accountability, technical depth, engineer enablement, business need, timing, and the highest-priority remaining gap.
3. Request specific feedback from Lindsey Wild about the incident support, then from Clay Miller, Rafael Rodriguez or Danyal Siddiqui, a service-team consumer, and a scanner contributor; set explicit sharing preferences.
4. Replace the placeholder goals with 3 to 5 SMART goals tied to infrastructure reliability, customer outcomes, operational resilience, and broader ownership.
5. Add incident dates, recovery time, failed-run and payload data, and post-fix reliability to the incident note; add remaining cost, adoption, and scale measures across the portfolio.
6. Revisit readiness in 3 to 6 months using new outcomes, approved feedback, goal progress, and manager calibration rather than elapsed time alone.
