# Promotion Readiness Coaching Snapshot

## Source and Reference Coverage

- **Role:** I am Abdul Ahmad, Software Engineer II in Software Engineering, targeting Software Engineer III. Source: [career profile](career-profile.md).
- **Role-reference coverage:** Curated reference available. The [curated Software Engineering summary](../reference/career-stage-profiles/curated/software-engineering.md) is the first-pass guide. The [raw profile](../reference/career-stage-profiles/software-engineering.md) supplies P3 responsibility detail, including quality planning, experimentation, and product telemetry.
- **Working level comparison:** II = P2/G7 and III = P3/G8, carried from prior snapshots. My profile records title levels rather than numeric grades, so Helen should confirm the crosswalk and current official expectations. P4/G9 is not the target used here.
- **Portfolio coverage:** All 28 real impact notes and all eight real feedback-log entries are included in the continuing portfolio review. This update adds Danyal's feedback and the VoiceOver note to the evidence reviewed for [November 23](2026-11-23-promotion-readiness-snapshot.md), with goals, career context, and manager calibration checked again.
- **Consent:** All eight feedback-log entries are eligible under my saved promotion-prep default. The customer quote in the VoiceOver note is also explicitly eligible. Other workflow permissions remain unchanged.
- **Grounding:** Captured notes and feedback are the evidence sources. Linked GitHub and Slack artifacts were not independently retrieved. Prior snapshots are historical coaching synthesis, not additional corroboration.

## Snapshot Metadata

| Field | Coverage |
|---|---|
| Snapshot date | November 24, 2026 |
| Current and target level | Software Engineer II to Software Engineer III |
| Career focus | Promotion prep |
| Real impact notes | 28, excluding the template |
| Eligible feedback-log entries | 8, with Randall's additional quote part of his existing entry |
| Additional customer feedback used | User confirmation preserved in the VoiceOver impact note, not a ninth feedback-log entry |
| Goals | 4: 2 active, 2 completed |
| Real manager-calibration entries | 0 |
| Prior snapshots | 16 |
| Immediate baseline | [November 23 snapshot](2026-11-23-promotion-readiness-snapshot.md) |

Prior coverage includes November 23 and the 15 August-through-October snapshots listed in its [prior snapshot coverage](2026-11-23-promotion-readiness-snapshot.md#snapshot-metadata). Those older snapshots were reviewed earlier in this continuing workflow; this comparison focuses on the newly captured evidence.

Capture dates do not establish delivery dates. Danyal's original feedback date is unknown. The VoiceOver work occurred during my last FR rotation, with exact implementation, merge, and user-confirmation dates still to add.

## Readiness Snapshot

The portfolio currently shows a consistent pattern: I clarify ambiguous work, identify dependencies, make proportionate technical decisions, deliver changes, help other engineers move forward, and verify outcomes. The strongest scope anchors remain the scanner platform and Port migration. Actions delivery, production recovery, and customer issue resolution show that the pattern carries into other scenarios.

Two additions sharpen that story:

- **Port partnership now has direct implementation-partner validation.** Danyal, Software Engineer III on the Port team, describes me as his scorecard point of contact. He specifically identifies fast requirements clarification, availability, migration momentum, clear communication, and data validation that built his confidence. Source: [FY27 Q2 feedback, Danyal entry dated November 24](../feedback/FY27-Q2-peer-feedback.md).
- **Customer focus now has another completed, verified outcome.** In the [VoiceOver fix](../impact-notes/2026-11-24-voiceover-label-description-fix.md), I reproduced the report, attempted a bounded fix, tested the preview, obtained owning-team approval, merged, and returned to the user. They confirmed that descriptions were announced once rather than three times.

Danyal's feedback strengthens the Port scenario; it does not introduce a separate delivered project or a level assessment. The VoiceOver fix is a compact supporting example of customer ownership and judgment, not proof of higher-grade scope by itself.

The portfolio provides concrete material for comparison with P3 requirements, dependencies, implementation, debugging, review, and execution. The unresolved questions are sustained III scope, explicit quality plans and success measures, recurring telemetry, active-goal status, and business need. These remain evidence and calibration questions, not a promotion verdict.

## Historical Readiness Movement

### What strengthened since November 23

| Prior position | New evidence | Movement |
|---|---|---|
| Port delivery had my account, Randall's manager feedback, and Arelia's knowledge-reuse perspective | Danyal's [November 24 feedback](../feedback/FY27-Q2-peer-feedback.md) | Adds the direct Port implementation partner's perspective on clarity, data validation, and migration execution. The need for this kind of corroboration is better supported, not still wholly missing. |
| Customer ownership had the [mobile reopen-button example](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md) and customer-driven scanner releases | [VoiceOver resolution](../impact-notes/2026-11-24-voiceover-label-description-fix.md) | Adds hands-on delivery, preview validation, owning-team review, and explicit customer confirmation of a measurable behavior change. |
| Proportionate judgment was supported by token alternatives, Port removal design, and Actions scope decisions | VoiceOver complexity-based fix-or-route decision | Adds another case of choosing a small solution when feasible while keeping the established handoff process as the fallback. This was not an unreviewed bypass of ownership. |
| Quality practices had workflow testing and observed production recovery | Preview check plus customer-confirmed description count of 3 to 1 | Adds a clear functional acceptance signal. Automated regression coverage and the broader quality-plan responsibility remain partial. |

### What stayed stable

The [scanner extension architecture](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [Port delivery](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [Actions parity implementation](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md), and [parent-mapping release](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md) remain the same delivered evidence. SPA support remains released, not pending, under [v3.5.0](../impact-notes/2026-10-12-released-spa-scanning-support.md).

The recorded axe reliability window remains **11 days as of November 23**, and the scoring recovery remains **one week as of November 23**. Neither has been extended merely because another day passed. Sources: [token fix](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md), [code-stats recovery](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md).

### What remains open

No new manager-calibration conversation or goal completion is recorded. The agentic pilot still lacks captured partner acceptance, implementation, and measured results. The eight-week label-report cycle and three Port checks are not documented as complete. These are separate from successful daily axe or scorecard runs.

### What changed in the narrative

I can now pair the Port delivery account with a partner explaining why the collaboration worked, and pair my customer-ownership account with the user's own confirmation of the outcome. This reduces reliance on self-description without changing the unresolved business-need or grade-calibration questions.

## Strengths to Lean On

1. **Scenario ownership across ambiguity and dependencies.** The [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md) and [audit-request link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) show planning, dependency resolution, environment validation, and deadline delivery. Danyal supports requirements clarity and validation; Randall supports adaptability and follow-through. Their named entries are in [FY27 Q2 feedback](../feedback/FY27-Q2-peer-feedback.md). This maps to P3 requirements, dependency identification, and execution.

2. **Reusable architecture that enables others.** The [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md) connect design with follow-on use. Joyce's April 17 entry and Lindsey's September 3 entry corroborate the design process and useful extension capability. Sources: [FY26 Q4](../feedback/FY26-Q4-peer-feedback.md), [FY27 Q1](../feedback/FY27-Q1-peer-feedback.md). Credit remains with other contributors for their follow-on implementations.

3. **Customer-focused delivery with verified closure.** The [VoiceOver fix](../impact-notes/2026-11-24-voiceover-label-description-fix.md) and [mobile reopen-button follow-through](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md) both end in reporting-user confirmation. The new example additionally shows my direct implementation and owning-team approval. This is strong behavioral evidence for staying close to customers and taking accountability.

4. **Proportionate judgment and production recovery.** The [token alternative comparison](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md), [code-stats handoff](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md), [Port removal workflow](../impact-notes/2026-09-22-port-scorecard-service-removal-workflow.md), and [parent identity fix](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md) show bounded implementation, maintainability, reversibility, and validation. They support Technical Depth and Scope and Impact without equating change size with impact.

5. **Create clarity and enable colleagues.** Arelia describes knowledge informing Web Performance's migration; Kendall describes clear trade-offs and a supportive learning environment; Danyal describes confidence built through communication and thoroughness. Clay's September 3 review feedback and Nick's April 27 governance feedback extend that pattern. Sources: [FY27 Q2](../feedback/FY27-Q2-peer-feedback.md), [FY27 Q1](../feedback/FY27-Q1-peer-feedback.md), [FY26 Q4](../feedback/FY26-Q4-peer-feedback.md). This maps to Breadth and Leadership and Communication.

## Gaps and Growth Opportunities

| Area | Evidence status | Useful next enrichment |
|---|---|---|
| Sustained III-level scope and level mapping | Needs manager calibration | Ask Helen which two or three scenarios demonstrate III expectations and what differentiates them from strong II execution. |
| Explicit quality plans and success metrics | Partial evidence | Preserve the VoiceOver acceptance signal and Port parity checks; link exact tests, regression results, and criteria for a representative scenario. Manual/customer verification is valuable, but not the whole quality-planning responsibility. |
| Experimentation | Partial evidence | Document what the token prototypes demonstrated and how the findings shaped the choice. Confirm whether that bounded comparison is sufficient evidence for P3; do not assume a new large pilot is required solely for a case. |
| Recurring instrumentation and telemetry feedback | Partial evidence | Capture ongoing checks and how results inform fixes or priorities. Diagnosis logs and isolated success windows do not yet establish sustained telemetry outputs and loops. |
| Active goal milestones | Partial evidence | Verify the unchecked October 30 pilot agreement and October 9 governance-check definition in [current goals](current-goals.md). Missing recorded completion is not proof the work did not happen. |
| Scale and aggregate benefit | Partial evidence | Add service coverage or adoption where useful. Danyal provides qualitative outcome confidence, not a numeric completeness metric or a service count. One customer confirmation does not establish prevalence across all VoiceOver users. |
| Discoverable implementation rationale | Partial evidence | Apply Kendall's advice to a specific change, placing local reasoning in code and broader context in a PR or document, then seek a concrete usability signal from a reader. |
| Durable higher-grade business need | Needs manager calibration | Identify future ownership needed by the organization, separately from completed delivery and staffing pressure. |

Do not treat unimplemented [workflow simulation](../impact-notes/2026-09-10-axe-duplicate-issue-testing-strategy.md), [scanning-speed proposals](../impact-notes/2026-08-11-accessibility-scanning-speed-proposal.md), or [agentic candidates](../impact-notes/2026-09-10-agentic-accessibility-fix-prioritization.md) as delivered results. The [Product Operations automation note](../impact-notes/2026-08-11-centralized-product-ops-automation.md) still needs rollout and security-resolution evidence.

## Impact Narrative Opportunities

- **Port: combine complementary perspectives.** The [migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [tier integration](../impact-notes/2026-10-12-port-action-items-tier-integration.md), [authentication standardization](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md), and [guidance](../impact-notes/2026-10-12-port-scorecard-migration-guidance.md) form one connected story. Use Randall for delivery under constraints, Danyal for direct collaboration and validation, and Arelia for cross-team knowledge reuse. Do not count their feedback as three new projects.
- **VoiceOver: focus on the observed result and bounded decision.** The user confirmed description announcements changed from three to one. Owning-team approval came the next business day; my account estimates approximately one-day fix turnaround. Add exact dates before claiming total report-to-confirmation time. Weeks or months avoided is a possible counterfactual, not measured time saved.
- **Scanner: retain contribution and metric boundaries.** I built extension points; Clay built persistent caching; Lindsey implemented the JSON-file transfer; other contributors built follow-on plugins and the original SPA change. Rough issue volume rose from 50 to 80 to 250 to 300 through additional plugin-enabled coverage, not through the migration alone. More findings do not demonstrate more remediation or conformance.
- **Actions: use delivered behavior and open follow-ups together.** Pair the [parity delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md) with Kendall's feedback about direction changes. Keep ref-selector focus loss and initial dialog focus as tracked follow-ups, not completed accessibility validation.
- **Supporting maintenance examples: select, do not list everything.** [Grouped dependency updates](../impact-notes/2026-09-02-grouped-dependabot-package-updates.md), [complete label reporting](../impact-notes/2026-09-10-complete-audit-label-reporting.md), and [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md) can reinforce a main story when tied to a concrete benefit. They should not displace the clearest scope examples.

## Behavioral Evidence (How)

| GitHub behavior | Specific evidence | Portfolio competency overlap |
|---|---|---|
| Stay close to customers | [VoiceOver preview and user confirmation](../impact-notes/2026-11-24-voiceover-label-description-fix.md); [mobile user follow-through](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md); customer-driven [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md) | Breadth; Scope and Impact |
| Model values through accountable work | [Post-migration incident ownership](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md) includes correcting my omission and crediting others; VoiceOver closure depended on user confirmation | Technical Depth; Leadership and Communication |
| Seek diverse perspectives | [Port guidance](../impact-notes/2026-10-12-port-scorecard-migration-guidance.md) sought three reviewer perspectives; [token choice](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) involved team consultation | Breadth; Leadership and Communication |
| Treat others with respect | Kendall's [learning-environment feedback](../feedback/FY27-Q2-peer-feedback.md); contributor credit in the [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md) | Leadership and Communication |
| Act with integrity | Followed owning-team review for the VoiceOver fix; separated expected from observed benefits; followed approved authentication in the [Port workflow work](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md) | Technical Depth; Leadership and Communication |
| Take accountability | Danyal's reachable point-of-contact and validation feedback; Randall's follow-through feedback; [code-stats recovery](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md) | Scope and Impact; Leadership and Communication |
| Create clarity | Danyal's requirements questions, Arelia's implementation knowledge, and Kendall's decision-history feedback in [Q2](../feedback/FY27-Q2-peer-feedback.md); Nick's governance framing in [Q4](../feedback/FY26-Q4-peer-feedback.md) | Breadth; Leadership and Communication |
| Generate energy so others succeed | Kendall's supportive learning example; Clay's sustained reviews and reference implementation; Lindsey's extension-enabled contribution examples in [Q2](../feedback/FY27-Q2-peer-feedback.md) and [Q1](../feedback/FY27-Q1-peer-feedback.md) | Leadership and Communication; Technical Depth |
| Deliver success | Port deadline and validated data, shipped Actions parity, production recovery windows, and a customer-confirmed reduction in repeated announcements | Scope and Impact; Technical Depth |

These examples support the Leadership Principles through observable actions. Encouragement to keep collaborating and learning is useful feedback, not a promotion recommendation or grade assessment.

## Role Expectation Map

Labels apply to captured evidence, not to a performance rating. P3/G8 is a working comparison requiring manager confirmation. Main expectations come from the curated and raw P3 summary; experimentation and telemetry use raw responsibility detail.

| Expectation | Evidence status | Supporting evidence | Coaching note |
|---|---|---|---|
| Determine scenario requirements with stakeholders | Strong evidence | [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), Danyal in [Q2](../feedback/FY27-Q2-peer-feedback.md), [Actions alignment](../impact-notes/2026-10-19-actions-rails-react-ux-scope-alignment.md) | New partner feedback validates clarity; manager should assess target-level scope. |
| Contribute architecture proposals with technical leadership from others | Strong evidence | [Plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), Joyce in [Q4](../feedback/FY26-Q4-peer-feedback.md) | Do not impose P4's independent architecture-leadership requirement. |
| Identify product-area dependencies with little oversight | Strong evidence | [Port links](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [tier/Vault sequencing](../impact-notes/2026-10-12-port-action-items-tier-integration.md), [code-stats recovery](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md) | Preserve actual blockers and coordination, not just PR counts. |
| Implement code and reuse it where applicable | Strong evidence | [Actions delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md), [shared authentication](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md), [VoiceOver fix](../impact-notes/2026-11-24-voiceover-label-description-fix.md) | The customer fix supports implementation, not a new platform-scale claim. |
| Use debugging methods to verify assumptions | Strong evidence | [CSV investigation](../impact-notes/2026-09-10-csv-parser-reliability-improvements.md), [parent mapping](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [token diagnosis](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) | Reactive investigation is clearer than recurring proactive telemetry. |
| Review code for reliability, accuracy, and appropriate scale | Strong evidence | Clay in [Q1](../feedback/FY27-Q1-peer-feedback.md), [code-stats review completion](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md), [SPA validation](../impact-notes/2026-10-12-released-spa-scanning-support.md) | Use representative review decisions rather than AI severity labels alone. |
| Execute projects, releases, and work items | Strong evidence | [Port delivery](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), Danyal and Randall in [Q2](../feedback/FY27-Q2-peer-feedback.md), [Actions delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md), [scanner release](../impact-notes/2026-10-12-released-spa-scanning-support.md) | More direct corroboration; sustained III ownership still needs calibration. |
| Plan testing and quality assurance and define success metrics | Partial evidence | Danyal's validation feedback, [VoiceOver acceptance result](../impact-notes/2026-11-24-voiceover-label-description-fix.md), [testing strategy](../impact-notes/2026-09-10-axe-duplicate-issue-testing-strategy.md), [completed testing goal](current-goals.md) | Manual validation and a clear before/after help; exact criteria and regression coverage remain to document. |
| Conduct experimentation and apply findings to development | Partial evidence | [Token prototype comparison](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md), [agentic research](../impact-notes/2026-09-10-agentic-accessibility-fix-prioritization.md) | No new completed systematic evaluation is recorded. |
| Account for deployment impacts and deploy safely | Strong evidence | [Port environments and deployment](../impact-notes/2026-10-12-port-action-items-tier-integration.md), [scanner integrated validation](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [VoiceOver preview and team approval](../impact-notes/2026-11-24-voiceover-label-description-fix.md) | Confirm preview/production result; do not imply all assistive-technology combinations were tested. |
| Contribute instrumentation, recurring telemetry loops, and outputs | Partial evidence | [Parent-mapping observability](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [governance goal](current-goals.md), recorded recovery windows | New customer validation is not telemetry instrumentation and does not close this gap. |
| Sustained application of III responsibilities | Needs manager calibration | Main scenarios above; no real entry in [manager calibration](manager-calibration.md) | Colleague praise and evidence mapping cannot substitute for Helen's scope assessment. |

## Business Need and Budget Boundaries

**Business need:** The portfolio documents valuable needs in accessibility governance, scanner extensibility, product migration, and timely customer remediation. Danyal's feedback strengthens confidence in the completed Port collaboration, not authorization for a higher-grade role. Helen should identify durable upcoming ownership and its connection to priorities. Staffing gaps and a small fix's quick turnaround do not by themselves establish grade-level business need.

**Budget availability:** Budget and approved financial capacity are not visible in the portfolio and cannot be assessed by AI. Keep this organizational dependency separate from evidence of my work.

## Manager Calibration Questions

1. "Can we confirm the II-to-III profile mapping, and which two or three scenarios best demonstrate sustained III scope rather than strong II delivery?"
2. "Does the Port story, now supported by Danyal's direct implementation-partner feedback, demonstrate the requirements, dependency, and validation ownership you expect? What is still missing?"
3. "How should we use the VoiceOver example: as customer-focus and judgment evidence supporting the larger scenarios? What quality-plan or experimentation evidence would you consider sufficient?"
4. "What durable higher-grade ownership does the team need next, and which of my existing goals best serves that need without creating work solely for a promotion case?"
5. "What are the nomination process, timing, required evidence, and organizational constraints? Which budget dependency should remain separate from readiness?"

## Optional Promotion Justification Draft

**Evidence-led working copy for manager adaptation, not a readiness decision or final recommendation.** Target-level interpretation and higher-grade business need remain unconfirmed and are not asserted. Only the quoted copy counts toward Workday's 2,000-character limit.

> Abdul's Software Engineer II work spans accessibility infrastructure, cross-team migrations, and GitHub Actions product delivery. He completed the accessibility scorecard migration to Port, coordinating dependencies and validating data across environments while meeting the retirement deadline despite FR interruptions and staffing gaps. His Port partner highlighted fast requirements clarification, sustained momentum, and thorough validation that built confidence; his practical guidance also informed Web Performance's migration.
>
> He built the scanner's plugin architecture and URL-specific configuration, enabling follow-on capabilities from other contributors, and carried a blocked community SPA contribution through validation and release. He delivered the revised React workflow-dispatch experience in approximately one week, including two related fixes while tracking separate accessibility follow-ups.
>
> He also took a reported Mac VoiceOver issue through reproduction, a bounded implementation, preview testing, owning-team approval, and customer confirmation. The user verified that label descriptions were announced once instead of three times. Recent workflow fixes have recorded 11 days of successful axe runs and a separate week of successful scoring runs as of November 23.
>
> Feedback describes clear trade-offs, preserved decision history, supportive learning, and practical cross-team knowledge sharing. These completed outcomes and behaviors provide concrete evidence for calibration against Software Engineer III expectations.

## Next Evidence Moves

1. **Use the new feedback, not another generic request for it.** Connect Danyal to the Port delivery note and Arelia to the guidance/knowledge-reuse story. Direct Port partner feedback is now present. Add original dates and sources when available.
2. **Capture the VoiceOver receipts precisely.** Add implementation and merge dates, the customer-confirmation timestamp, the actual technical cause/fix, and regression coverage. Keep the user-confirmed 3-to-1 change; do not infer weeks or months saved.
3. **Calibrate with Helen before expanding the case.** Bring Port and scanner scope as anchors, Actions delivery and customer/operational examples as support. Record actual scope feedback, business need, and next steps in [manager calibration](manager-calibration.md).
4. **Clarify existing goal status.** Confirm the overdue October checkpoints and progress toward the December 18 governance summary in [current goals](current-goals.md). Do not equate recent daily success with the required weekly reporting and Port checks.
5. **Close one targeted quality or rationale evidence gap.** Link specific acceptance criteria and regression results for a completed scenario, or apply Kendall's advice to a concrete code/PR/documentation example. Missing metrics everywhere is not a reason to invent them or initiate unnecessary projects.
6. **Keep old and new sources consistent.** Use the SPA release rather than stale in-progress wording in goals. Keep unresolved Actions focus and scanner redirect investigations explicit. Preserve each workflow streak's recorded observation date unless new evidence extends it.

This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with my manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
