# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Software Engineering, Level II / P2 (G7) targeting Level III / P3 (G8), Software Engineer III.
- **Role-reference coverage:** `Curated reference available`. The [Software Engineering curated summary](../reference/career-stage-profiles/curated/software-engineering.md) provides the progression summary. The [raw Software Engineering profile](../reference/career-stage-profiles/software-engineering.md) was used as fallback source material for detailed P3 responsibilities.
- **General guidance used:** [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md).
- **Portfolio evidence used:** All 24 real [impact notes](../impact-notes/), four approved feedback entries across [FY26 Q4](../feedback/FY26-Q4-peer-feedback.md) and [FY27 Q1](../feedback/FY27-Q1-peer-feedback.md), [current goals](current-goals.md), and [manager calibration](manager-calibration.md). Nick Batson's entry is eligible under its saved preference. Joyce Zhu's, Lindsey Wild's, and Clay Miller's entries were approved for this snapshot only; their saved preferences remain unchanged.

## Snapshot Metadata

- **Snapshot date:** 2026-10-19
- **Current grade and target:** Level II / P2 (G7) to Level III / P3 (G8)
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** 14 prior snapshots: [2026-08-11](2026-08-11-promotion-readiness-snapshot.md), [2026-08-11 snapshot 2](2026-08-11-promotion-readiness-snapshot-2.md), [2026-09-02](2026-09-02-promotion-readiness-snapshot.md), [2026-09-03](2026-09-03-promotion-readiness-snapshot.md), [2026-09-03 snapshot 2](2026-09-03-promotion-readiness-snapshot-2.md), [2026-09-03 snapshot 3](2026-09-03-promotion-readiness-snapshot-3.md), [2026-09-04](2026-09-04-promotion-readiness-snapshot.md), [2026-09-04 snapshot 2](2026-09-04-promotion-readiness-snapshot-2.md), [2026-09-06](2026-09-06-promotion-readiness-snapshot.md), [2026-09-10](2026-09-10-promotion-readiness-snapshot.md), [2026-09-10 snapshot 2](2026-09-10-promotion-readiness-snapshot-2.md), [2026-09-11](2026-09-11-promotion-readiness-snapshot.md), [2026-10-12](2026-10-12-promotion-readiness-snapshot.md), and [2026-10-12 snapshot 2](2026-10-12-promotion-readiness-snapshot-2.md).
- **Evidence counts:** 24 real impact notes, 4 feedback entries eligible for this snapshot, 4 goals (2 active and 2 completed), 0 manager-calibration entries, and 14 prior snapshots.

## Readiness Snapshot

The portfolio currently shows broad evidence across the Software Engineering P3 (G8) profile. Abdul repeatedly determines requirements with stakeholders, contributes architecture and technical solutions, identifies dependencies with little oversight, implements and reviews maintainable code, diagnoses ambiguous failures, executes releases, and supports live systems.

The two October 19 notes strengthen different parts of that picture. The [axe parent-issue reliability work](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md) shows progressive observability, cross-repository root-cause analysis, backward-compatible API design, integrated validation, patch-release ownership, and verified restoration of all previously affected parent links. The [Actions Rails-to-React scope alignment](../impact-notes/2026-10-19-actions-rails-react-ux-scope-alignment.md) shows Abdul entering an unfamiliar codebase, building enough understanding to challenge assumptions, surfacing product and accessibility edge cases, and helping engineering and design narrow the work back to feature parity before implementation effort was wasted.

This supports a substantive P3 calibration conversation and adds breadth beyond the accessibility repositories. Four peer perspectives corroborate architecture, reliable execution, pragmatic review judgment, governance context, communication, and contribution to others' success. This is not a promotion decision. The portfolio still lacks a manager assessment of sustained P3 performance, confirmation that the organization needs this scope formalized at P3, and evidence about nomination timing. Several outcomes, including the final React implementation, aggregate reliability, adoption, and active-goal results, remain incomplete or unmeasured.

## Historical Readiness Movement

- **What strengthened:** Two new impact notes increased the evidence set from 22 to 24. The axe reliability note adds one of the portfolio's clearest examples of debugging through progressively added logs, tracing a failure across repository boundaries, verifying assumptions with repeated runs, and shipping a production fix.
- **What strengthened:** The `originalUrl` decision adds explicit API compatibility judgment. Abdul preserved the existing meaning of `url`, kept both requested and observed destination data, avoided disrupting existing scanner consumers, and released the additive change as v3.5.1.
- **What strengthened:** The Actions migration note adds breadth outside the prior accessibility-centered evidence. It shows requirements clarification with engineers and designers, accessibility-aware interaction analysis, early scope correction, and a documented decision trail in an unfamiliar codebase.
- **What stayed stable:** Architecture, migration ownership, operational accountability, pragmatic review, stakeholder clarity, and enabling others remain the strongest patterns. Four approved peer perspectives continue to validate those themes.
- **What remains open:** There is still no real manager-calibration entry. Durable business need, verified aggregate outcomes, formal incident and SLO evidence, completed active-goal results, and the shipped Rails-parity implementation remain unresolved.
- **What changed in the narrative:** The portfolio now shows stronger evidence that Abdul can apply his judgment in two modes: deep ownership of a system he knows well and rapid requirements leadership in a product area and codebase that are new to him.

## Strengths to Lean On

### 1. Root-cause debugging and live-system ownership

The [axe parent-issue reliability work](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [CSV parser investigation](../impact-notes/2026-09-10-csv-parser-reliability-improvements.md), [scanner incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), and [audit-label fixes](../impact-notes/2026-09-10-complete-audit-label-reporting.md) show a repeated ability to instrument ambiguous failures, follow data across boundaries, identify root causes, and restore reliable behavior. The newest example includes a released fix, several days of green runs, and corrected historical issues. Lindsey's feedback corroborates reliable follow-through and ownership. This maps directly to P3 debugging, Technical Depth, accountability, and delivering success.

### 2. Architecture and compatibility judgment

The [scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md), and additive `originalUrl` result model show a pattern of preserving extensibility and consumer contracts rather than choosing narrow or disruptive fixes. Joyce and Lindsey validate the architecture process, implementation quality, adoption, and customer-facing use. This maps to P3 technical solutions, maintainable implementation, Technical Depth, and Scope and Impact.

### 3. Requirements clarity and scope control

The [Actions Rails-to-React alignment](../impact-notes/2026-10-19-actions-rails-react-ux-scope-alignment.md) demonstrates requirements leadership in an unfamiliar area. Abdul modeled branch and input states, identified inconsistent interaction behavior, raised accessibility concerns, and helped engineering and design return the work to its feature-parity boundary before further implementation. The [Port guidance](../impact-notes/2026-10-12-port-scorecard-migration-guidance.md) similarly translated a complex migration into a shared mental model. This maps to determining requirements with stakeholders, Breadth, Leadership and Communication, and creating clarity.

### 4. Complex delivery with post-launch follow-through

The [axe migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [Port-link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [Port tier integration](../impact-notes/2026-10-12-port-action-items-tier-integration.md), and scanner v3.5.1 work show planning, dependency sequencing, deadline protection, environment validation, release ownership, and continued accountability after launch. This maps to P3 project execution, Breadth, Leadership and Communication, and Scope and Impact.

### 5. Technical influence that helps others succeed

Clay documents 40 reviews across 55 approved scanner pull requests and a specific example of pragmatic, non-blocking guidance backed by a reference implementation. The [audit-notification authentication work](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md) created a paved path for another contributor, while the Actions work created shared requirements for engineers and designers before implementation. This maps to P3 code review, Leadership and Communication, Breadth, and generating energy so others succeed.

## Gaps and Growth Opportunities

### Sustained P3 performance: Needs manager calibration

The evidence covers most P3 responsibilities, but the portfolio cannot determine whether the work is consistently at P3 across the review period. Capture the manager's strongest and weakest examples, which work is viewed as target-grade rather than strong P2 execution, and what sustained pattern is still expected.

### Completed Actions migration outcome: Partial evidence

The Actions note records a meaningful decision and avoided-risk story, but the revised React implementation has not shipped. Add the implementation pull request, testing across branch and input scenarios, accessibility validation, and evidence that Rails parity was achieved without regressions.

### Quality metrics and completed experimentation: Partial evidence

The [agentic-fix goal](current-goals.md) defines a pilot, test set, baseline, success measures, reviewer disposition, and decision point, but these remain future outcomes. The October 30 partner-agreement checkpoint is approaching. Record the selected pilot, owner, test set, baseline, and success criteria.

### Operational telemetry and reliability: Partial evidence

The newest scanner fix adds several days of green runs, but the broader portfolio still lacks sustained reliability trends, incident duration, service-level indicators, and affected-volume measures. The governance data-quality goal's October 9 validation-definition milestone also remains unchecked. Confirm whether it was completed, or revise the plan and record the new date.

### Durable higher-grade business need: Needs manager calibration

The portfolio shows recurring organizational needs across MAS grading, annual audits, daily scanning, Service Catalog retirement, Port integrations, service-team remediation, and the Actions Rails-to-React migration. It does not establish that these needs require durable P3 ownership. The manager should connect future priorities, capability gaps, and expected scope to the target grade.

### Manager perspective: Missing evidence

[Manager calibration](manager-calibration.md) still contains no real entries. Capture direct calibration on consistency, business need, timing, nomination process, stakeholder evidence, and the most important remaining gap.

## Impact Narrative Opportunities

- Lead the axe reliability story with the user-visible operational gap, then follow the diagnostic chain: missing parents, no useful logs, added observability, `unknown` services, redirect-altered URLs, stable `originalUrl`, patch release, and corrected issues.
- Preserve the API trade-off in the axe note. The strongest engineering signal is not merely adding a field, but retaining both meanings, preserving backward compatibility, and avoiding disruption to existing consumers.
- Present the Actions work as a decision and scope-control outcome, not a shipped feature. Quantify avoided rework only if the team can provide a defensible estimate, and add the final implementation outcome later.
- Use the Actions example to demonstrate breadth: the same clarity, edge-case analysis, and accessibility judgment applied successfully outside the accessibility codebase.
- Update [current goals](current-goals.md) with the shipped SPA release, the October 9 governance-validation status, and progress toward the October 30 agentic-pilot agreement.

## Behavioral Evidence (How)

- **How we work:** The Actions work sought engineering and design perspectives, modeled end-user and assistive-technology experiences, and challenged an implementation only after building code-level understanding. The scanner fix used production evidence and repeated runs rather than assumption. Nick and Joyce corroborate careful clarification and collaborative architecture. Competencies: Technical Depth, Breadth, Scope and Impact.
- **How we interact:** Abdul raises questions early, documents decisions, preserves contributor credit and existing consumer contracts, distinguishes immediate fixes from separate defects, and avoids turning suggestions into unnecessary blockers. Lindsey and Clay corroborate reliability, respectful review, timely support, and pragmatic prioritization. Competencies: Leadership and Communication, Technical Depth.
- **How we lead:** Epics, scoped issues, design artifacts, observability, paved paths, maintainer releases, and documented product decisions create clarity and help others deliver. The Actions discussion prevented engineers and designers from proceeding with different assumptions, while the scanner release restored the service-team workflow. Competencies: Leadership and Communication, Breadth, Scope and Impact.
- **Leadership Principles:** Evidence is strong for creating clarity and delivering success. Approved feedback and the new examples also support generating energy so others succeed through reliable systems, early alignment, reusable contracts, and reduced rework.

## Role Expectation Map

The target is Level III / P3 (G8). The curated profile provides first-pass guidance, and the raw Software Engineering profile supplies the detailed responsibility wording used for this coaching map. Manager calibration remains necessary.

| P3 (G8) expectation | Evidence status | Supporting evidence | Coaching note |
|---|---|---|---|
| Determine requirements for a feature set or scenario with stakeholders | Strong evidence | Actions edge-case alignment, Axe and Port migrations, `urlConfigs`, agentic scoping, SLA schema facilitation | The Actions work adds strong evidence in a new product area. |
| Contribute technical solutions and architecture proposals | Strong evidence | Plugin system, `urlConfigs`, JSON transfer, `originalUrl`, focused Port removal workflow | Preserve alternatives and compatibility trade-offs in the narrative. |
| Create quality plans and define success measures | Partial evidence | Integrated scanner validation, Port parity checks, automated tests, workflow-simulation plan, active goals | Complete active goal measures and add the Actions validation plan. |
| Identify dependencies with little oversight | Strong evidence | Cross-repository URL contract, Port dual-running, Vault prerequisites, workflow scopes, package decoupling | The scanner fix strengthens boundary and dependency evidence. |
| Implement maintainable and reusable code | Strong evidence | Backward-compatible scanner field, extension systems, governance Actions, shared credential path | Add adoption and sustained post-release reliability. |
| Debug using logs, telemetry, and assumption testing | Strong evidence | Progressive scanner logging, CSV instrumentation, incident diagnosis, report truncation, Port validation | This is now one of the strongest directly evidenced expectations. |
| Review code for quality, reliability, and scale | Strong evidence | Clay's review evidence, Actions PR analysis, SPA side-by-side review, Copilot finding remediation | Add the final Actions PR outcome when available. |
| Execute project and release plans | Strong evidence | Axe and Port epics, Vault deploys, scanner v3.5.0 and v3.5.1 releases | Manager should confirm consistency across the review period. |
| Deploy safely and maintain live systems | Strong evidence | Integrated pre-merge runs, patch release, green production runs, corrected historical issues, incident ownership | Add affected counts and a longer reliability window. |
| Improve tooling, CI/CD, and compliance practices | Strong evidence | Scanner platform, governance automation, Vault integration, audit tooling, MAS workflows | This remains a consistent portfolio pattern. |
| Maintain partner relationships and account for outcomes | Strong evidence | Engineering and design alignment, Port, CELA, DX, customer, community, and schema-owner collaboration | Add direct feedback from the Actions project partners. |

## Business Need and Budget Boundaries

- **Employee readiness:** The portfolio supports a substantive P3 calibration conversation through broad responsibility coverage, repeated complex delivery, architecture, root-cause debugging, backward-compatible API judgment, live-system ownership, requirements clarity, and four peer perspectives. Manager calibration is still needed to assess consistency across the complete role and review period.
- **Business need:** MAS commitments, mandatory annual audits, daily preventive scanning, recurring governance reporting, Service Catalog retirement, Port integrations, and the Actions Rails-to-React migration establish real organizational problems. The portfolio does not show whether those needs require a durable P3 position or formally expanded role.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Do the cross-repository scanner diagnosis and backward-compatible v3.5.1 release count as sustained P3 technical and operational ownership?
2. Does the Actions example demonstrate target-grade requirements leadership and breadth even though the revised implementation has not shipped yet?
3. Which P3 responsibility is currently least convincing, and what specific result or behavior would close that gap?
4. Do ongoing scanner, Port, governance, and Actions migration priorities create a durable business need for P3 ownership?
5. What nomination process, timing, stakeholder evidence, and organization-specific expectations remain, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` A coherent employee-readiness narrative under 2,000 characters is supportable, and the new evidence strengthens debugging, API compatibility, safe release ownership, breadth, and requirements leadership. A responsible promotion justification still needs manager confirmation that the work is consistently P3 across the review period and that the organization has a durable need for the role at P3. The active goals and revised Actions implementation also need updated outcomes.

## Next Evidence Moves

1. Capture one real [manager-calibration](manager-calibration.md) entry covering P3 consistency, the weakest responsibility, business need, nomination timing, and required evidence.
2. Add the number of affected child issues and services, a longer green-run period, and the eventual Okta redirect root cause to the axe reliability evidence.
3. Capture the final Actions Rails-parity implementation, accessibility validation, stakeholder feedback, and any defensible avoided-rework signal.
4. Update [current goals](current-goals.md) with the October 9 validation status, October 30 pilot agreement, and shipped SPA release.
5. Request feedback from an engineer or designer on the Actions project and from a service-team or First Responder stakeholder on the parent-issue fix, each with an explicit reuse preference.

---

This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with your manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
