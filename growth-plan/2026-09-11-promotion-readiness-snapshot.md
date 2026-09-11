# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Software Engineering, Level II / P2 (G7) targeting Level III / P3 (G8), Software Engineer III.
- **Role-reference coverage:** `Curated reference available`. The [Software Engineering curated summary](../reference/career-stage-profiles/curated/software-engineering.md) provides the progression summary, and the [raw Software Engineering profile](../reference/career-stage-profiles/software-engineering.md) provides detailed P3 (G8) responsibilities.
- **References used:** The curated and raw Software Engineering profiles as role guidance and source material; [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general performance and promotion guidance.
- **Portfolio evidence used:** Seventeen real [impact notes](../impact-notes/), [FY26 Q4 feedback](../feedback/FY26-Q4-peer-feedback.md), [FY27 Q1 feedback](../feedback/FY27-Q1-peer-feedback.md), [current goals](current-goals.md), and [manager calibration](manager-calibration.md). Nick Batson's entry is eligible under its saved preference. Joyce Zhu's, Lindsey Wild's, and Clay Miller's entries were approved for this snapshot only; their saved preferences remain unchanged.

## Snapshot Metadata

- **Snapshot date:** 2026-09-11
- **Current grade and target:** Level II / P2 (G7) to Level III / P3 (G8)
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** Eleven prior snapshots from [2026-08-11](2026-08-11-promotion-readiness-snapshot.md) through both [2026-09-10](2026-09-10-promotion-readiness-snapshot.md) [snapshots](2026-09-10-promotion-readiness-snapshot-2.md)
- **Evidence counts:** 17 real impact notes, 4 feedback entries eligible for this snapshot, 4 goals (2 active and 2 completed), 0 manager-calibration entries, and 11 prior snapshots

## Readiness Snapshot

The portfolio currently shows broad evidence across the Software Engineering P3 (G8) profile. Abdul repeatedly works with stakeholders to define scenarios, contributes architecture and technical solutions, identifies dependencies, implements and reviews maintainable code, diagnoses ambiguous failures, executes delivery plans, and supports live accessibility systems. Four peer perspectives corroborate technical judgment, reliable execution, collaborative design, communication, and contribution to others' success.

Since the latest prior snapshot, the evidence plan has become more concrete. Two active goals now target measured experimentation and operational validation, while two completed goals consolidate the testing and scanner-extensibility work already delivered. The scanner narrative also now separates the migration from later plugin expansion: the migration did not materially change axe issue volume, while Reflow and other plugin-enabled checks broadened coverage from a rough 50 to 80 total issues to roughly 250 to 300.

This supports a substantive P3 calibration conversation, but it does not determine promotion readiness. The portfolio still lacks a manager assessment of sustained P3 performance, confirmation that the organization needs this scope formalized at P3, and completed outcomes from the new goals. Aggregate adoption, reliability, cost, and remediation measures also remain uneven.

## Historical Readiness Movement

- **What strengthened:** [Current goals](current-goals.md) now contains two active SMART goals and two completed goals, closing the prior portfolio-structure gap. The active goals define baselines, success measures, deadlines, and decision points for an agentic accessibility pilot and accessibility-governance data quality.
- **What strengthened:** The current [axe migration note](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) now makes the causal sequence explicit. The migration preserved roughly 50 to 80 axe issues, while later plugin-enabled Reflow scanning helped expand the workflow to roughly 250 to 300 issues, an approximate 3 to 6 times increase across the rough range endpoints.
- **What stayed stable:** Architecture, requirements work, debugging, migration ownership, operational accountability, practical review judgment, and enabling others remain the strongest evidence patterns. The portfolio still contains 17 real notes and four eligible feedback perspectives.
- **What remains open:** There is still no real manager-calibration entry. Durable business need, verified aggregate outcomes, formal incident and SLO evidence, completed experimentation, and sustained telemetry remain unresolved.
- **What changed in the narrative:** The scanner story is more precise and defensible. The migration consolidated ownership and improved the operating model; the later plugin system broadened detection coverage. Future growth from additional scan types remains anticipated rather than measured.

## Strengths to Lean On

### 1. Systems architecture that creates leverage

The [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md) solved immediate constraints while enabling Reflow, file-system and npm plugins, Tetralogical extensions, and an in-progress SPA use case. Joyce validates the collaborative design and implementation process, while Lindsey validates follow-on use in custom plugins, customer meetings, and demos. This maps to P3 technical solutions, Technical Depth, Scope and Impact, creating clarity, and delivering success.

### 2. Root-cause debugging and maintainability

The [CSV parser work](../impact-notes/2026-09-10-csv-parser-reliability-improvements.md), [complete audit-label reporting](../impact-notes/2026-09-10-complete-audit-label-reporting.md), [report-resolution fix](../impact-notes/2026-09-02-audit-label-report-resolution.md), and [scanner incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md) show repeated diagnosis beyond symptoms. The fixes improved behavior while reducing coupling or creating more durable designs. This maps to P3 debugging and maintainability expectations, Technical Depth, and accountability.

### 3. Complex delivery and dependency ownership

The [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), and [Port-link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) show epic planning, weekly communication, stakeholder coordination, risk management, dependency sequencing, and production validation. This maps to P3 project execution, Breadth, Leadership and Communication, and Scope and Impact.

### 4. Pragmatic technical influence and contribution to others

Clay documents Abdul's review of 40 of his 55 approved scanner pull requests and a specific example where Abdul proposed a maintainable refactor, allowed a time-sensitive ship to proceed, followed up, and supplied a reference implementation. Lindsey describes reliable follow-through and proactive support. This maps to P3 code-review expectations, Technical Depth, Leadership and Communication, and generating energy so others succeed.

### 5. Customer and compliance orientation

Daily preventive scanning, annual-audit support, service-team sub-issue tracking, Port and CELA collaboration, and direct confirmation of the [mobile accessibility fix](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md) connect engineering work to customer and company needs. Nick validates Abdul's ability to connect scanner infrastructure to governance context. This maps to staying close to customers, Breadth, and Scope and Impact.

## Gaps and Growth Opportunities

### Sustained P3 performance: Needs manager calibration

The evidence covers most P3 responsibilities, but the portfolio cannot determine whether the work is consistently at P3 across the review period. Capture the manager's strongest and weakest examples, any work viewed as strong P2 execution rather than P3 scope, and the responsibility that matters most to strengthen.

### Quality metrics and completed experimentation: Partial evidence

The new [agentic-fix goal](current-goals.md) defines a pilot, baseline, thresholds, reviewer disposition, and continue, revise, or stop decision, but these are planned outcomes. Complete the pilot and record the hypothesis, representative test set, measures, results, partner decision, and follow-up.

### Telemetry, reliability, and incident response: Partial evidence

The scanner and governance notes show diagnosis, workflow restoration, operational ownership, and planned validation. Add incident dates, restoration time, failed-run counts, SLO status, alerting or dashboard evidence, rollback decisions, and post-fix reliability trends.

### Aggregate impact: Partial evidence

The rough 50-to-80 and 250-to-300 scanner issue ranges strengthen the coverage story, but they need a dated source and breakdown by plugin type. Add services and pages scanned, plugin adoption, Port service coverage, largest audit report, successful weekly runs, Datadog savings, maintainer effort, and remediation outcomes.

### Durable higher-grade business need: Needs manager calibration

The portfolio shows recurring organizational needs across MAS grading, annual audits, daily scanning, weekly governance reporting, Service Catalog retirement, and service-team remediation. It does not establish that these needs require durable P3 ownership. The manager should connect future priorities, capability gaps, and expected scope to the target grade.

### Manager perspective: Missing evidence

[Manager calibration](manager-calibration.md) still contains no real entries. Capture direct calibration on consistency, business need, timing, nomination process, and the evidence required to move the case forward.

## Impact Narrative Opportunities

- Lead the [axe migration story](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) with company need, fragmented ownership, migration and service-team issue redesign, later plugin extensibility, and operational ownership. Do not attribute the later Reflow volume increase to the migration itself.
- Add a dated source and per-plugin breakdown for the rough 50-to-80 and 250-to-300 issue ranges. Keep the 3-to-6-times statement qualified as a calculation across rough endpoints, and do not equate Nick's approximate 15% audit-category statement with workflow issue volume.
- Pair architecture with adoption receipts in the [plugin note](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md): implementation links, plugin types, internal consumers, customer or demo counts, and service-team outcomes.
- Keep proposals and active goals distinct from delivered outcomes. The [scanning-speed proposal](../impact-notes/2026-08-11-accessibility-scanning-speed-proposal.md), agentic fixes, full workflow simulation, and SPA support remain proposed or in progress.
- Preserve collaborator attribution: Clay created persistent caching; Lindsey implemented JSON-file transfer; Lindsey and Copilot produced the source audit analysis; the Issues team implemented the mobile fix.

## Behavioral Evidence (How)

- **How we work:** Service-team needs shaped `urlConfigs` and sub-issue tracking; a reporting user confirmed the mobile fix; and Port, CELA, Developer Experience, Issues, and teammate perspectives shaped decisions. Nick and Joyce corroborate careful requirements clarification and collaborative architecture. Competencies: Technical Depth, Breadth, Scope and Impact.
- **How we interact:** Abdul preserves authorship, distinguishes suggestions from blockers, separates shipped from prospective outcomes, and follows through after reviews and incidents. Lindsey and Clay corroborate reliability, respectful review, timely support, and pragmatic prioritization. Competencies: Leadership and Communication, Technical Depth.
- **How we lead:** Epics, weekly updates, design documents, scoped issues, reference implementations, reusable actions, and extension points create clarity and help others deliver. All four approved peers corroborate parts of this pattern. Competencies: Leadership and Communication, Breadth, Scope and Impact.
- **Leadership Principles:** Evidence is strong for creating clarity and delivering success. The approved feedback provides credible evidence of generating energy so others succeed through trusted review, proactive support, collaborative design, and technical foundations others extended.

## Role Expectation Map

The target is Level III / P3 (G8). The curated profile establishes the target scope signal, and the raw Software Engineering profile supplies detailed responsibilities for this lower-confidence coaching map. Manager calibration remains necessary.

| P3 (G8) expectation                                                    | Evidence status  | Supporting evidence                                                                   | Coaching note                                                      |
| ---------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| Determine requirements for a feature set or scenario with stakeholders | Strong evidence  | Axe and Port migrations, Repos-informed sub-issues, `urlConfigs`, agentic scoping     | Requirements span service teams and technical partners.            |
| Contribute technical solutions and architecture proposals              | Strong evidence  | Plugin system, `urlConfigs`, JSON transfer, standalone ESM action                     | Add direct design links and rejected alternatives where available. |
| Create quality plans and define success measures                       | Partial evidence | Port parity testing, unit tests, simulation plan, active goals                        | Complete the planned measures and record resulting decisions.      |
| Identify dependencies and coordinate overlaps with little oversight    | Strong evidence  | Port dual-running, URL dependency plan, Datadog removal, cache and package decoupling | Preserve dates and dependency outcomes.                            |
| Implement maintainable, reliable, diagnosable code                     | Strong evidence  | Scanner extensions, governance Actions, CSV replacement, audit-label module           | Add adoption and reliability trends.                               |
| Debug using logs, telemetry, assumptions, and root-cause analysis      | Strong evidence  | CSV instrumentation, scanner incidents, report truncation, lifecycle diagnosis        | Add incident timing and sustained post-fix evidence.               |
| Review code for quality, maintainability, reliability, and scale       | Strong evidence  | Clay's review-volume evidence and pragmatic refactor example                          | Add examples of defects prevented or delivery unblocked.           |
| Execute release plans and manage risk and dependencies                 | Strong evidence  | Axe and Port epics, weekly updates, estimates, deadline delivery                      | Manager should confirm consistency across the review period.       |
| Experiment, deploy safely, and maintain live systems                   | Partial evidence | Environment comparisons, live-system ownership, planned pilots                        | Add completed hypotheses, rollback plans, and operational results. |
| Build telemetry and feedback loops that guide action                   | Partial evidence | Port comparisons, workflow visibility, audit analysis, operational goal               | Complete the recurring validation cycle and preserve trends.       |
| Improve tooling, CI/CD, and compliance practices                       | Strong evidence  | Scanner platform, governance automation, audit tooling, MAS workflows                 | This is a consistent portfolio pattern.                            |
| Maintain partner relationships and account for outcomes                | Strong evidence  | Port, CELA, DX, service-team work, customer closure, peer feedback                    | Add direct partner outcome measures.                               |

## Business Need and Budget Boundaries

- **Employee readiness:** The portfolio supports a substantive P3 calibration conversation through broad responsibility coverage, repeated complex delivery, root-cause debugging, architecture, operational ownership, and four peer perspectives. Manager calibration is still needed to assess consistency across the complete role and review period.
- **Business need:** MAS commitments, mandatory annual audits, daily preventive scanning, recurring governance reporting, Service Catalog retirement, and service-team remediation establish real organizational problems. The portfolio does not show whether those needs require a durable P3 position or formally expanded role.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Does this portfolio show consistent P3 (G8) performance, and which P3 responsibility is currently least convincing?
2. Which axe, Port, plugin, governance, or debugging examples count as target-grade evidence rather than strong P2 execution?
3. Do the active operational-validation and agentic-pilot goals address the most important gaps, and what measured result would materially change your calibration?
4. Do ongoing MAS, scanner, audit, and governance priorities create a durable business need for P3 ownership? What future responsibility would make that need explicit?
5. What nomination process, timing, stakeholder evidence, and organization-specific expectations remain, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` A coherent employee-readiness narrative under 2,000 characters is supportable, but a responsible promotion justification still needs manager confirmation that the work is consistently P3 across the review period and that the organization has a durable need for the role at P3. The active goals strengthen the evidence plan but do not yet supply their future outcomes.

## Next Evidence Moves

1. Capture one real [manager-calibration](manager-calibration.md) entry covering P3 consistency, the weakest responsibility, business need, nomination timing, and required evidence.
2. Execute the two active goals and preserve baselines, thresholds, results, partner decisions, and follow-up ownership.
3. Add dated, verifiable operational metrics to the axe, Port, audit-label, and CSV notes, including scanner volume by plugin and post-fix reliability.
4. Request one Port, CELA, or service-team outcome perspective and one manager perspective, with explicit reuse preferences.
5. Add actual ship and incident dates, resolve missing feedback sources, and link representative unit-test, Reflow, file-system or npm-loading, and production-run artifacts.

---

This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with your manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
