# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Software Engineering, Level II targeting Level III.
- **Role-reference coverage:** `Curated reference available`. The [Software Engineering curated summary](../reference/career-stage-profiles/curated/software-engineering.md) covers P1 through P6, but the portfolio does not establish how Level II and Level III map to those P/G profiles.
- **References used:** [Software Engineering curated summary](../reference/career-stage-profiles/curated/software-engineering.md) as role guidance; [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general performance and promotion guidance.
- **Portfolio evidence used:** twelve real [impact notes](../impact-notes/), [FY27 Q1 peer feedback](../feedback/FY27-Q1-peer-feedback.md), [current goals](current-goals.md), and [manager calibration](manager-calibration.md). Lindsey Wild's and Clay Miller's entries were approved for this snapshot only; their saved sharing preferences remain unchanged. Goals and manager calibration contain only placeholders or examples and contribute no readiness evidence.

## Snapshot Metadata

- **Snapshot date:** 2026-09-04
- **Current grade and target:** Level II to Level III
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** [2026-08-11 baseline](2026-08-11-promotion-readiness-snapshot.md), [2026-08-11 follow-up](2026-08-11-promotion-readiness-snapshot-2.md), [2026-09-02 snapshot](2026-09-02-promotion-readiness-snapshot.md), [2026-09-03 snapshot](2026-09-03-promotion-readiness-snapshot.md), [2026-09-03 follow-up](2026-09-03-promotion-readiness-snapshot-2.md), and [2026-09-03 feedback-informed snapshot](2026-09-03-promotion-readiness-snapshot-3.md)
- **Evidence counts:** 12 real impact notes, 2 feedback entries approved for this snapshot, 0 real goals, 0 manager-calibration entries, and 6 prior snapshots

## Readiness Snapshot

The portfolio currently shows repeated ownership of software systems across requirements, architecture, implementation, migration, testing, production support, and follow-through. The strongest evidence clusters around two DRI-led migrations, the accessibility scanner's extensible architecture, sustained technical partnership with other engineers, and operational accountability after launch. These examples align well with Software Engineering signals such as collaborating with stakeholders on scenarios, leading technical discussions within the team's area, creating architecture proposals, and testing design hypotheses.

The curated profile makes the evidence map more specific than prior snapshots. Several examples resemble the P4/G9 scope summary, particularly the plugin system, `urlConfigs`, the axe workflow migration, and the Port migration. This is a comparison signal, not a target-grade conclusion: the portfolio does not establish whether Level III maps to P4/G9. Manager calibration is required before describing these examples as Level III evidence.

The evidence remains thin on active SMART goals, manager assessment, aggregate adoption and business metrics, and explicit confirmation that the organization needs the role to operate at higher-grade scope. Peer feedback strengthens confidence in sustained reliability, judgment, execution, and contribution to others' success, but it does not resolve the grade crosswalk or the business-need criterion.

## Historical Readiness Movement

- **What strengthened:** The job family is now recorded as Software Engineering, so the curated Software Engineering profile can be used instead of relying only on general promotion guidance. Lindsey Wild's and Clay Miller's feedback is also approved for this snapshot, preserving the strong external validation captured in the latest September 3 snapshot.
- **What stayed stable:** The underlying evidence set is unchanged. Repeated migration ownership, platform thinking, pragmatic technical judgment, lifecycle accountability, and enabling other engineers remain the strongest patterns.
- **What remains open:** The Level III-to-P/G profile crosswalk, manager calibration, SMART goals, aggregate adoption and reliability measures, broader stakeholder feedback, durable business need, and budget visibility remain unresolved.
- **What changed in the narrative:** No new delivery progress is inferred from the date change. The narrative is better calibrated because the existing evidence can now be compared with specific Software Engineering scope signals. The strongest comparison is to P4/G9-style work, but that mapping must be confirmed by the manager.

## Strengths to Lean On

### 1. Leading technical solutions and architecture within the team's area

The [scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) replaced a fixed implementation with an extension architecture that enabled reflow and npm-loaded plugins. The [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md) similarly replaced a narrow fix with a durable configuration model and helped shape a contributor's SPA approach. This aligns with the curated P4/G9 signal of leading technical discussions and creating architecture proposals by testing design hypotheses. Competencies: Technical Depth, Leadership and Communication, Scope and Impact.

### 2. Repeated ownership of complex delivery

The [axe workflow migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) and [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md) each required stakeholder coordination, issue decomposition, technical delivery, testing, and continuity across systems. The Port work met an end-of-August stakeholder deadline and improved data freshness from one day behind to current. This aligns with collaborating with stakeholders on scenarios and delivering broader technical change. Competencies: Breadth, Leadership and Communication, Scope and Impact.

### 3. Practical technical judgment that helps others ship

Clay Miller documented that Abdul reviewed 40 of his 55 approved scanner PRs across two repositories and frequently contributed to planning and problem-solving. In one time-sensitive example, Abdul proposed an object-oriented improvement, clearly marked it optional, approved the ship, then followed up with prioritization guidance and a reference implementation. This demonstrates design judgment without losing delivery context. Source: Clay Miller's approved entry in [FY27 Q1 feedback](../feedback/FY27-Q1-peer-feedback.md). Competencies: Technical Depth, Breadth, Leadership and Communication.

### 4. Accountability across the full system lifecycle

The [incident ownership note](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md) shows Abdul acknowledging and correcting a missed cache integration, supporting a First Responder, and proposing the JSON-file transfer model that became the durable implementation. Lindsey Wild independently identifies reliability, execution, and ownership as six-month patterns. Sources: the incident note and Lindsey Wild's approved entry in [FY27 Q1 feedback](../feedback/FY27-Q1-peer-feedback.md). Competencies: Technical Depth, Leadership and Communication, Scope and Impact.

### 5. Improving products and operating models together

The portfolio repeatedly changes both code and how work gets done: scanner ownership was consolidated, violations became trackable sub-issues, two governance processes became weekly Actions, and interdependent Dependabot updates dropped from three PRs to one. Sources: [axe workflow migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md), and [grouped Dependabot updates](../impact-notes/2026-09-02-grouped-dependabot-package-updates.md). Competencies: Breadth, Technical Depth, Scope and Impact.

## Gaps and Growth Opportunities

### Exact target-profile mapping: Needs manager calibration

The profile uses P/G labels while the career profile uses Level II and Level III. Ask the manager to confirm the exact target P/G profile before treating P4/G9 comparisons as Level III expectations.

### Sustained target-grade scope: Needs manager calibration

The portfolio shows recurring broad ownership, and peer feedback validates six months of reliability and contribution. The manager still needs to determine whether the work consistently exceeds current-grade expectations and represents the expected scope of the target role.

### Measurable scale and business outcomes: Partial evidence

The notes contain useful measures, including 40 of 55 approved PRs reviewed, a 3-to-1 PR reduction, current rather than one-day-old Port data, two weekly automations, and a user-confirmed fix within two weeks. Add scanner adoption, service and page counts, Datadog savings, incident recovery time, reliability trends, Port coverage, and recurring time saved.

### Goals and development direction: Missing evidence

[Current goals](current-goals.md) still contains placeholders. Add 3 to 5 SMART goals that connect target-scope development to measurable customer, platform, reliability, and organizational outcomes.

### Manager and stakeholder calibration: Missing evidence

[Manager calibration](manager-calibration.md) has no real entry, and the approved feedback comes from two close engineering collaborators. Capture the manager's target-grade assessment and broaden feedback with a Port partner, service-team consumer, or customer-facing stakeholder.

## Impact Narrative Opportunities

- **Anchor the story in Software Engineering scope:** Connect the [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) to a progression from requirements and architecture through production adoption and support.
- **Quantify platform reach:** Add scanner users, plugins, customer meetings, services, pages, scan runs, and violation sub-issues to the plugin and migration notes.
- **Show decisions and trade-offs:** Make the alternatives and constraints explicit for persistent caching, JSON-file transfer, Port dual-running, and `urlConfigs`, including why the selected designs were appropriate.
- **Pair review volume with changed outcomes:** Use Clay's 40-of-55 review count alongside decisions changed, risks avoided, or delivery unblocked, rather than relying on review volume alone.
- **Make organizational need explicit:** Document which future priorities require continued ownership of scanner architecture, compliance infrastructure, incident response, and governance automation at expanded scope.

## Behavioral Evidence (How)

- **How we work:** Abdul stayed close to customers through internal customer-zero use, service-team requirements, and direct follow-up with a mobile accessibility reporter. He sought partner perspectives during scanner planning and Port validation across sandbox, staging, and production. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md), and Clay's approved feedback. Competencies: Technical Depth, Breadth, Scope and Impact.
- **How we interact:** Abdul named and corrected his cache omission, preserved attribution for others' work, and used review language that distinguished required changes from optional improvements. Lindsey validates follow-through and timely support; Clay validates pragmatic, substantive collaboration. Sources: [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md) and both approved entries in [FY27 Q1 feedback](../feedback/FY27-Q1-peer-feedback.md). Competencies: Leadership and Communication, Breadth.
- **How we lead:** Migration epics, weekly updates, architecture proposals, issue decomposition, reference implementations, and hands-on incident support created clarity and helped others succeed. The work also delivered durable systems rather than one-time activity. Sources: [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), and both approved feedback entries. Competencies: Leadership and Communication, Scope and Impact.
- **Leadership Principles:** The portfolio strongly supports creating clarity and delivering success. Approved peer feedback strengthens the generating-energy signal because other engineers relied on Abdul's planning input, follow-through, reviews, and reference implementation to move their work forward.

## Role Expectation Map

The curated Software Engineering reference is applicable, but the Level III-to-P/G crosswalk is unknown. The table uses P4/G9 scope signals as a comparison for manager calibration, not as a claim that Level III equals P4/G9.

| Expectation                                                                    | Evidence status           | Supporting evidence                                                                                                                                                                                                                                                            | Coaching note                                                                                                                                        |
| ------------------------------------------------------------------------------ | ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Collaborates with stakeholders to determine requirements for a scenario        | Strong evidence           | [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md) | Multiple projects show requirements work with technical partners, service teams, and users. Confirm that these scenarios match target-grade breadth. |
| Leads discussions for technical solutions within the team's area               | Strong evidence           | [Scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), and Clay's feedback                                                                           | Architecture design, data-transfer direction, and sustained review influence align directly with this P4/G9 comparison signal.                       |
| Creates architecture proposals by testing design hypotheses and refining plans | Strong evidence           | Plugin architecture, `urlConfigs`, Port dual-running and environment validation, JSON-file transfer                                                                                                                                                                            | Add decision records and rejected alternatives to make the design reasoning easier to evaluate.                                                      |
| Delivers meaningful results consistently                                       | Partial evidence          | 12 impact notes and six-month feedback from Lindsey, with concrete outcomes across migrations, automation, and customer fixes                                                                                                                                                  | Evidence breadth is good, but actual delivery dates and aggregate outcome measures remain incomplete.                                                |
| Demonstrates the skills and behaviors required at Level III                    | Needs manager calibration | P4/G9-aligned comparison signals across architecture, stakeholder collaboration, and delivery                                                                                                                                                                                  | Confirm the Level III-to-P/G mapping and identify any target responsibilities not represented in the curated summary.                                |
| Shows durable organizational need for expanded scope                           | Needs manager calibration | Recurring scanner, compliance, incident, and governance ownership                                                                                                                                                                                                              | Connect future organizational priorities and capability gaps to a formally expanded role.                                                            |

## Business Need and Budget Boundaries

- **Employee readiness:** The portfolio supports a manager conversation about broader Software Engineering scope through repeated complex delivery, architecture leadership, operational accountability, and peer-validated enablement. Exact target-grade readiness still requires the Level III crosswalk and manager assessment.
- **Business need:** The evidence shows recurring organizational needs around accessibility scanning, compliance migration, production reliability, and governance automation. It does not establish that these responsibilities require a Level III position. The manager must confirm that the scope is durable, strategically needed, and expected to continue at the higher grade.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Which Software Engineering P/G profile corresponds to Level III for this role, and are P4/G9 signals the correct comparison?
2. Which examples, particularly the axe and Port migrations, scanner architecture, and incident ownership, count as target-grade evidence? Which target responsibilities are still missing?
3. Do Lindsey's six-month observations and Clay's quantified collaboration evidence demonstrate sustained target-grade behaviors, or is broader stakeholder validation needed?
4. Does the organization have a durable business need for higher-grade ownership across accessibility scanning, compliance infrastructure, incidents, and governance automation?
5. What outcome measures, timing, nomination steps, and organization-specific expectations should Abdul address next, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` The curated Software Engineering reference makes the evidence map substantially clearer, and the portfolio has strong P4/G9 comparison signals. A responsible manager-facing justification still needs confirmation of the Level III-to-P/G mapping, manager assessment of sustained target-grade scope, and evidence that the organization needs the role at the higher grade.

## Next Evidence Moves

1. Confirm the Level III-to-P/G crosswalk with the manager and record it in [manager calibration](manager-calibration.md).
2. Capture the manager's assessment of the strongest target-grade examples, remaining responsibility gaps, durable business need, timing, and nomination process.
3. Replace [current goals](current-goals.md) placeholders with 3 to 5 SMART goals tied to platform adoption, reliability, customer outcomes, and broader ownership.
4. Add scanner adoption, service and page coverage, customer-demo counts, Datadog savings, incident recovery, Port coverage, and reliability trends to the relevant impact notes.
5. Request feedback from a Port partner, service-team consumer, manager, or customer-facing stakeholder to broaden the two strong engineering-peer perspectives.
6. Compare the next snapshot using only new outcomes, goal progress, approved feedback, or manager calibration, not elapsed time alone.

---

This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with your manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
