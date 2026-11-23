# Promotion Readiness Coaching Snapshot

## Source and Reference Coverage

- **Role context:** I am Abdul Ahmad, Software Engineer II in Software Engineering, targeting Software Engineer III. Source: [career profile](career-profile.md).
- **Role-reference coverage:** Curated reference available. The [curated Software Engineering summary](../reference/career-stage-profiles/curated/software-engineering.md) is the first-pass guide. The [raw Software Engineering profile](../reference/career-stage-profiles/software-engineering.md), especially its P3 summary and Experimentation and Product Telemetry responsibilities, supplies detail omitted from the curated summary.
- **Level mapping:** Prior snapshots use II = P2/G7 and III = P3/G8. I use that as the working comparison, not a newly verified title-to-grade crosswalk. My current profile records II and III, not numeric grades. Helen should confirm the mapping and current official expectations. P4/G9 is not the target used here.
- **Evidence:** I reviewed all real impact notes, all feedback files, [current goals](current-goals.md), and [manager calibration](manager-calibration.md). Examples and placeholders were excluded.
- **Consent:** All seven real feedback entries are eligible for promotion prep under my November 23 permission and their saved promotion-specific preferences. This does not extend permission to other workflows.
- **Grounding:** Results below come from my captured notes and colleagues' feedback. Linked GitHub and Slack artifacts were not independently retrieved in this workflow. Prior snapshots provide historical coaching context, not independent corroboration.

## Snapshot Metadata

| Field | Coverage |
|---|---|
| Snapshot date | November 23, 2026 |
| Current and target level | Software Engineer II to Software Engineer III |
| Career focus | Promotion prep |
| Real impact notes reviewed | 27 |
| Eligible feedback entries | 7, including Randall's additional quote within his existing entry |
| Goals | 4: 2 active and 2 completed |
| Real manager-calibration log entries | 0 |
| Prior snapshots reviewed | 15 |
| Latest historical baseline | [October 19 snapshot](2026-10-19-promotion-readiness-snapshot.md) |

Capture dates are not necessarily delivery dates. The token fix was completed November 12; the code-stats fix was completed about a week before November 23. Older notes also capture work delivered earlier.

Prior snapshot coverage:

- [August 11](2026-08-11-promotion-readiness-snapshot.md) and [August 11, second snapshot](2026-08-11-promotion-readiness-snapshot-2.md)
- [September 2](2026-09-02-promotion-readiness-snapshot.md)
- [September 3](2026-09-03-promotion-readiness-snapshot.md), [second snapshot](2026-09-03-promotion-readiness-snapshot-2.md), and [third snapshot](2026-09-03-promotion-readiness-snapshot-3.md)
- [September 4](2026-09-04-promotion-readiness-snapshot.md) and [second snapshot](2026-09-04-promotion-readiness-snapshot-2.md)
- [September 6](2026-09-06-promotion-readiness-snapshot.md)
- [September 10](2026-09-10-promotion-readiness-snapshot.md) and [second snapshot](2026-09-10-promotion-readiness-snapshot-2.md)
- [September 11](2026-09-11-promotion-readiness-snapshot.md)
- [October 12](2026-10-12-promotion-readiness-snapshot.md) and [second snapshot](2026-10-12-promotion-readiness-snapshot-2.md)
- [October 19](2026-10-19-promotion-readiness-snapshot.md)

## Readiness Snapshot

The portfolio currently shows repeated ownership of technical scenarios: I clarify ambiguous requirements, identify dependencies, implement and release changes, help other engineers move forward, and stay accountable when production workflows fail. The strongest story combines two anchors, the scanner platform and Port migration, with recent examples showing that the same judgment carries into GitHub Actions product work and operational recovery.

The November evidence adds more than activity:

- The [Actions parity delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md) closes the implementation gap from the earlier scope-alignment note. I delivered the revised React dialog in approximately one week, fixed two related defects, and tracked unresolved focus issues separately.
- Arelia describes implementation knowledge that informed another team's migration. Randall validates delivery of an abstract migration task despite FR interruptions and staffing gaps. Kendall describes clear trade-off communication, preserved decision history, and support for learning. Sources: [FY27 Q2 feedback, Arelia, Randall, and Kendall entries dated November 23](../feedback/FY27-Q2-peer-feedback.md).
- The [token-expiry fix](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) records pre-merge validation and 11 days of successful daily axe runs. The [code-stats handoff](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md) records a full week of successful downstream scoring workflows after merge.

These are useful evidence for the working P3 comparison: scenario-level requirements, dependency identification with little oversight, implementation, debugging, review, and execution. They do not establish a promotion decision. Sustained target-level scope, formal quality measures, recurring telemetry, and organizational need for a higher-grade role still require evidence or manager calibration.

## Historical Readiness Movement

### What strengthened

| Previous position | New evidence | Movement |
|---|---|---|
| Actions scope alignment was documented, but the revised implementation was not delivered in the October 19 baseline | [October 26 parity delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md) | Delivery gap closed. Customer confirmation and accessibility/regression results remain open. |
| Port guidance was published, but its effect on other stakeholders was unmeasured | Arelia's [November 23 feedback](../feedback/FY27-Q2-peer-feedback.md) | Direct partner evidence now shows implementation knowledge informing Web Performance's migration and the guidance supporting a follow-on post. Broad readership and reduced support volume remain unmeasured. |
| Migration ownership was described primarily through impact notes and peer perspectives | Randall's [November 23 feedback](../feedback/FY27-Q2-peer-feedback.md) | Direct feedback from the manager who covered June through August corroborates adaptability, cross-team partnership, and deadline follow-through. It is not target-grade calibration. |
| Live-system validation had improved through the parent-mapping fix, but longer observation windows were thin | [11-day axe success streak](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) and [one-week scoring recovery](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md) | Two additional fixes have explicit post-merge reliability windows, based on my observation. These are separate workflows, not one combined streak. |
| Pragmatic technical judgment was supported by architecture and review examples | Token-refresh alternative comparison plus Kendall's [trade-off feedback](../feedback/FY27-Q2-peer-feedback.md) | Clearer evidence that I choose complexity proportionate to the problem and explain the decision to others. |

### What stayed stable

Scanner extensibility, cross-team Port delivery, detailed debugging, contributor enablement, and post-launch ownership remain consistent strengths. The earlier SPA delivery gap remains closed by [v3.5.0](../impact-notes/2026-10-12-released-spa-scanning-support.md). The [parent-mapping fix and v3.5.1](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md) remain concrete evidence of additive API design and integrated validation.

### What remains open

No real promotion-calibration conversation is recorded. The agentic pilot has no captured acceptance, implementation, or measured evaluation. The governance goal still has no recorded eight-week label-report validation cycle or three Port checks. Aggregate adoption, remediation, cost, and support-volume measures remain incomplete.

The new daily axe and scoring success streaks do not automatically satisfy the separate weekly governance-validation goal. Progress is based on new evidence, not elapsed time.

### What changed in the narrative

The story is less dependent on saying I shipped a large migration. It now has a clearer through-line: I make systems and decisions understandable, finish work across handoffs, help others reuse practical knowledge, and verify that production behavior improves. The new feedback adds external perspectives to that account without turning every compliment into a next-level claim.

## Strengths to Lean On

1. **Turn ambiguity into delivered scenarios.** In the [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), I managed dependencies, stakeholder updates, validation, and an end-of-August commitment. Randall's [feedback](../feedback/FY27-Q2-peer-feedback.md) confirms delivery despite interruptions. The [audit-request link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md) also shows a blocked dependency decomposed into four completed sub-issues before the UI shutdown. This maps to P3 requirements, dependency identification, and project execution.

2. **Design reusable capabilities that others can extend.** The [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), and [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md) connect architecture to follow-on use. Joyce's April 17 and Lindsey's September 3 entries validate design collaboration and the extension system's usefulness. Sources: [FY26 Q4](../feedback/FY26-Q4-peer-feedback.md) and [FY27 Q1](../feedback/FY27-Q1-peer-feedback.md). I built the extension architecture, not every follow-on plugin.

3. **Apply proportionate technical judgment.** I rejected unnecessary state in the [Port removal workflow](../impact-notes/2026-09-22-port-scorecard-service-removal-workflow.md), isolated the [label-report action](../impact-notes/2026-09-10-complete-audit-label-reporting.md) instead of migrating the whole repository to ESM, and compared a four-line token fix with a seven-file alternative before choosing the tested simpler solution. Clay's September 3 [feedback](../feedback/FY27-Q1-peer-feedback.md) similarly describes pragmatic review rather than textbook-driven blocking. This supports architecture, implementation, and review judgment.

4. **Own diagnosis through production recovery.** The [CSV investigation](../impact-notes/2026-09-10-csv-parser-reliability-improvements.md), [post-migration incidents](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), [parent mapping](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), and two November recoveries show tracing failures through dependencies, correcting defects, validating changes, and observing outcomes. The code-stats work also demonstrates finishing inherited work while keeping individual fixes reversible.

5. **Create clarity and help others succeed.** Arelia's migration feedback, Kendall's trade-off and learning feedback, and Nick's April 27 [governance feedback](../feedback/FY26-Q4-peer-feedback.md) describe practical knowledge sharing, careful decisions, and shared understanding. The [Actions alignment](../impact-notes/2026-10-19-actions-rails-react-ux-scope-alignment.md), delivered parity work, and [Port guidance](../impact-notes/2026-10-12-port-scorecard-migration-guidance.md) provide the corresponding work artifacts. This maps to Breadth and Leadership and Communication, and to creating clarity, generating energy, and delivering success.

## Gaps and Growth Opportunities

| Area | Evidence status | Smallest useful next evidence |
|---|---|---|
| Sustained III/P3 scope and current title-to-grade mapping | Needs manager calibration | Ask Helen which two or three scenarios best demonstrate III scope, what distinguishes them from strong II execution, and whether the working crosswalk is correct. |
| Clear quality plans and defined success metrics | Partial evidence | Link representative tests and pre-merge workflow runs; record explicit acceptance criteria and regression results for a completed scenario. Unit tests and successful runs are useful but do not fully document a quality plan. |
| Experimentation with findings applied to development | Partial evidence | The token alternatives provide a concrete prototype comparison and tested choice. Add what was exercised and learned; confirm whether this satisfies the P3 experimentation responsibility. The agentic pilot remains an uncompleted, more structured opportunity. |
| Recurring product telemetry and feedback loops | Partial evidence | Preserve the recent reliability windows, then record recurring checks and how their results change priorities or designs. Logs and green runs are not equivalent to a sustained instrumentation/notification/dashboard loop. |
| Active goal checkpoints | Partial evidence | Confirm whether the October 30 pilot agreement and October 9 governance-check definition happened. Both remain unchecked after their dates in [current goals](current-goals.md); this is a documentation/status gap, not proof the work did not happen. |
| Adoption, audience scale, and downstream value | Partial evidence | Add a dated service count, plugin/use-case adoption, or stakeholder example. Do not claim that detecting more issues proves remediation, accessibility conformance, or time savings. |
| Placement of implementation rationale | Partial evidence | Apply Kendall's feedback to one concrete change: place local code reasoning in a concise comment and broader decisions in the PR or relevant documentation, then ask whether the context is easier to find. |
| Durable need for a formally higher-grade role | Needs manager calibration | Ask what ongoing ownership the team needs beyond the completed migrations. Staffing pressure and valuable work alone do not establish grade-level business need. |

Other open source-note follow-ups should remain visible: the [scanning-speed proposal](../impact-notes/2026-08-11-accessibility-scanning-speed-proposal.md) is not implemented; [centralized Product Operations automation](../impact-notes/2026-08-11-centralized-product-ops-automation.md) lacks rollout and security-resolution confirmation; [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md) lacks measured operational benefit. These are enrichment opportunities, not presumed failed delivery.

## Impact Narrative Opportunities

- **Port: tell one connected story, not many unrelated PRs.** Connect the [migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [link dependency](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [tier integration](../impact-notes/2026-10-12-port-action-items-tier-integration.md), [authentication standardization](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md), and [guidance](../impact-notes/2026-10-12-port-scorecard-migration-guidance.md). Randall supports delivery under constraints; Arelia supports knowledge reuse. Add service scale, but do not infer company-wide adoption from company-wide relevance.
- **Scanner: distinguish enabling architecture from others' implementations.** Attribute the plugin architecture to me, persistent caching to Clay, the file-based scanner fix to Lindsey, and community SPA implementation to its contributor. The rough 50-to-80 versus 250-to-300 issue ranges describe later plugin-enabled detection coverage, not a migration-only effect or resolved violations.
- **Actions: lead with the resolved scenario.** The [October 26 delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md) now supplies outcome evidence. Pair it with Kendall's account of clear trade-offs and preserved decisions. Keep the focus-loss bug and initial-focus decision explicitly open rather than implying complete accessibility validation.
- **Operational recovery: show cause, choice, and observed outcome.** For the [token fix](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md), explain why refresh-before-labeling fit the actual runtime and why the broader solution was not proportionate. For [code-stats](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md), explain the upstream linting change, inherited review work, and downstream recovery. Keep the 11-day axe streak and one-week scoring streak separate.
- **Use compact supporting examples selectively.** [Case-insensitive exceptions](../impact-notes/2026-08-11-case-insensitive-linting-exceptions.md), [report lifecycle](../impact-notes/2026-09-02-audit-label-report-resolution.md), and [Dependabot grouping](../impact-notes/2026-09-02-grouped-dependabot-package-updates.md) reinforce practical maintenance judgment. They should not crowd out the two main scenarios; link concrete outcomes when available.

## Behavioral Evidence (How)

| GitHub behavior | Captured evidence | Portfolio competency overlap |
|---|---|---|
| Stay close to customers | [Mobile issue follow-through](../impact-notes/2026-09-02-mobile-reopen-button-accessibility-fix.md) includes user-confirmed resolution within two weeks; [SPA delivery](../impact-notes/2026-10-12-released-spa-scanning-support.md) responds to customer and community need. | Breadth; Scope and Impact |
| Model values through accountable work | I corrected the cache integration I had missed in the [incident note](../impact-notes/2026-09-03-axe-workflow-incident-ownership.md), credited others' work, and kept unresolved scope explicit. | Technical Depth; Leadership and Communication |
| Seek diverse perspectives | [Port guidance](../impact-notes/2026-10-12-port-scorecard-migration-guidance.md) sought technical, parallel-migration, and stakeholder review; the [token decision](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) included team consultation. | Breadth; Leadership and Communication |
| Treat others with respect | Kendall's [November feedback](../feedback/FY27-Q2-peer-feedback.md) describes reassurance and shared learning; the [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md) preserved contributor credit. | Leadership and Communication |
| Act with integrity | My notes distinguish my contribution from others' authorship and separate tested results from future benefits. [Authentication work](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md) followed the approved path and removed superseded configuration. | Technical Depth; Leadership and Communication |
| Take accountability | [Code-stats handoff](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md) was carried to merge and downstream recovery; Randall and Lindsey describe follow-through in [Q2](../feedback/FY27-Q2-peer-feedback.md) and [Q1](../feedback/FY27-Q1-peer-feedback.md). | Scope and Impact; Leadership and Communication |
| Create clarity | Arelia names tracking-repository distinctions that informed her migration; Kendall names preserved decision history; Nick names useful governance framing. Sources: [Q2 feedback](../feedback/FY27-Q2-peer-feedback.md), [Q4 feedback](../feedback/FY26-Q4-peer-feedback.md). | Breadth; Leadership and Communication |
| Generate energy so others succeed | Kendall describes a supportive learning environment; Clay describes sustained planning, review, follow-up, and a reference implementation; Lindsey describes the extension system enabling others. Sources: [Q2](../feedback/FY27-Q2-peer-feedback.md), [Q1](../feedback/FY27-Q1-peer-feedback.md). | Leadership and Communication; Technical Depth |
| Deliver success | Port deadline and validation, the Actions parity delivery, released scanner capabilities, and observed recovery windows connect actions to completed outcomes. | Scope and Impact; Technical Depth |

Together these support the Leadership Principles through specific behavior, not just competency labels. Randall's additional praise about learning is a useful qualitative signal; it does not independently establish next-level scope or promotion readiness.

## Role Expectation Map

Evidence labels describe the captured portfolio, not a performance rating. The working target is P3/G8; Helen should validate applicability. Requirements and the main engineering responsibilities come from the curated summary and raw P3 summary. Experimentation and telemetry use the raw responsibility tables.

| Expectation | Evidence status | Supporting evidence | Coaching note |
|---|---|---|---|
| Determine requirements with stakeholders for a set of features or a scenario | Strong evidence | [Actions alignment](../impact-notes/2026-10-19-actions-rails-react-ux-scope-alignment.md), [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), Arelia and Kendall in [Q2 feedback](../feedback/FY27-Q2-peer-feedback.md) | Connect requirements decisions to delivered behavior; confirm the target scope. |
| Contribute technical proposals and architecture with technical leadership from others | Strong evidence | [Plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md), [URL configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md), Joyce in [Q4 feedback](../feedback/FY26-Q4-peer-feedback.md) | Do not substitute P4's independent architecture-leadership requirement for P3. |
| Identify dependencies in a product area with little oversight | Strong evidence | [Port links](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [tier and Vault sequencing](../impact-notes/2026-10-12-port-action-items-tier-integration.md), [code-stats recovery](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md) | Preserve the blockers identified, collaborators involved, and dependency sequence. |
| Create and implement code, reusing code where applicable | Strong evidence | [Actions delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md), [standalone reporting action](../impact-notes/2026-09-10-complete-audit-label-reporting.md), [shared authentication](../impact-notes/2026-10-12-standardized-port-auth-for-audit-notifications.md) | Reuse and maintainability are concrete; quantify consumer adoption only when known. |
| Use debugging tools and logs to verify assumptions | Strong evidence | [CSV diagnosis](../impact-notes/2026-09-10-csv-parser-reliability-improvements.md), [parent identity diagnosis](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [token diagnosis](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) | Reactive diagnosis is well evidenced; recurring proactive checks remain thinner. |
| Review feature code for reliability, accuracy, and appropriate scale | Strong evidence | Clay's [Q1 feedback](../feedback/FY27-Q1-peer-feedback.md), [code-stats review completion](../impact-notes/2026-11-23-code-stats-herb-scorecard-recovery.md), [SPA validation](../impact-notes/2026-10-12-released-spa-scanning-support.md) | Link a consequential review finding and the resulting change, not just review volume. |
| Execute project plans, release plans, and work items | Strong evidence | [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [SPA release](../impact-notes/2026-10-12-released-spa-scanning-support.md), [Actions delivery](../impact-notes/2026-10-26-actions-workflow-dispatch-rails-parity.md), Randall in [Q2](../feedback/FY27-Q2-peer-feedback.md) | Multiple completed scenarios now support this pattern; manager should calibrate sustained ownership. |
| Plan testing and quality assurance and define success metrics | Partial evidence | [Testing strategy](../impact-notes/2026-09-10-axe-duplicate-issue-testing-strategy.md), completed testing goal in [current goals](current-goals.md), November pre-merge validation | Quality practices are present; the broader workflow simulation and explicit measured quality plan are incomplete. |
| Conduct experimentation, determine effectiveness, and apply findings to development | Partial evidence | [Token alternative comparison](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md), [agentic prioritization](../impact-notes/2026-09-10-agentic-accessibility-fix-prioritization.md) | Prototype comparison now adds evidence, but systematic evaluation and the agentic pilot are not captured. |
| Account for deployment impact, deploy safely, and follow standards | Strong evidence | [Tier deployment and validation](../impact-notes/2026-10-12-port-action-items-tier-integration.md), [v3.5.1 validation](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [token pre-merge test](../impact-notes/2026-11-23-axe-scan-labeling-token-expiry.md) | Recent success windows strengthen validation; do not impose P4 deployment-optimization scope. |
| Identify instrumentation opportunities and contribute sustained telemetry feedback loops and outputs | Partial evidence | [Parent-mapping observability](../impact-notes/2026-10-19-axe-parent-issue-mapping-reliability.md), [governance operational goal](current-goals.md), recent workflow observations | Diagnosis and run history are useful, but recurring instrumentation, outputs, and design feedback are not fully documented. |
| Consistency of these responsibilities at III scope | Needs manager calibration | Repeated scenarios above; no real entry in [manager calibration](manager-calibration.md) | Evidence mapping is not a substitute for Helen's assessment of expectations and scope. |

## Business Need and Budget Boundaries

**Business need:** The portfolio demonstrates real organizational problems: maintaining accessibility governance data through the Port transition, scaling scanner capabilities, keeping scoring automation reliable, and delivering the Actions Rails-to-React migration. Arelia's feedback adds a concrete example of cross-team knowledge reuse.

It does not establish that GitHub needs a formally higher-grade role for me. Randall's account of staffing gaps explains delivery constraints, not a staffing or promotion authorization. Helen should identify durable future responsibilities and how they connect to team priorities.

**Budget availability:** Budget and approved financial capacity are not visible in this portfolio and cannot be assessed by AI. This is a manager/organizational dependency, separate from evidence of my work.

## Manager Calibration Questions

1. "Do you agree that Software Engineer III corresponds to the P3/G8 reference we are using, and which two or three examples best demonstrate that scope rather than strong II execution?"
2. "Do the Port delivery and partner knowledge sharing, scanner architecture, and delivered Actions parity work show the sustained ownership you expect at III? Where would you need a different kind of evidence?"
3. "For quality planning, experimentation, and telemetry, which gap matters most? Would a concise validation record for an existing workflow be sufficient, or do you want a broader scenario?"
4. "What durable higher-grade ownership does the team need from me beyond these completed migrations, and how should we connect it to upcoming priorities?"
5. "What are the nomination process, timing, evidence requirements, and organization-specific expectations? What budget dependency should we treat separately from readiness?"

## Optional Promotion Justification Draft

**Evidence-led working draft for manager adaptation, not a readiness judgment or final promotion recommendation.** The completed scenarios support drafting results and behaviors responsibly. Target-level interpretation and business need remain unconfirmed, so this draft does not assert either. It is under 2,000 characters; only the quoted text is draft copy.

> Abdul's Software Engineer II work spans accessibility infrastructure, cross-team migrations, and GitHub Actions product delivery. He completed the accessibility scorecard migration to Port, coordinating dependencies and validating data across environments while meeting the retirement deadline despite FR interruptions and staffing gaps. His practical implementation guidance informed the Web Performance team's migration.
>
> He built the scanner's plugin architecture and URL-specific configuration, enabling follow-on scanning capabilities from other contributors, and carried a blocked community SPA contribution through validation and release. He also delivered the revised React workflow-dispatch experience in approximately one week, including two related fixes while documenting separate accessibility follow-ups.
>
> Recent operational work shows follow-through after implementation. He diagnosed token expiry, compared a small refresh with a more complex alternative, consulted the team, and tested the selected fix before merge. The axe workflow then ran successfully for 11 days. He also finished an inherited code-stats PR, resolving review findings in separate reversible commits; downstream scorecard workflows recovered and ran successfully for a full week.
>
> Colleague feedback describes clear trade-offs, preserved decision history, supportive learning, and practical cross-team knowledge sharing. These examples provide concrete results and behaviors for calibration against Software Engineer III expectations.

## Next Evidence Moves

1. **Calibrate the two main scenarios with Helen.** Bring Port and scanner ownership, with the recent Actions delivery and recoveries as supporting evidence. Record the actual level mapping, expectations, and follow-up decisions in [manager calibration](manager-calibration.md), not inferred conclusions.
2. **Attach receipts to the two recovery windows.** Add representative successful runs and the observation dates to the November notes. Record affected services if known. Do not combine the streaks or invent a run count.
3. **Clarify active goals before adding new scope.** Confirm the overdue checkpoints in [current goals](current-goals.md), then update only with actual progress. The December 18 governance summary remains upcoming; the daily recovery signals can inform it but do not replace its specified checks.
4. **Use the existing feedback more precisely.** Link Arelia to the Port implementation/guidance story, Randall to delivery under constraints, and Kendall to Actions trade-offs and rationale placement. Add original feedback dates and sources when available; supporting Slack links are not necessarily the feedback's source.
5. **Close one small evidence gap in quality or rationale.** Capture a completed scenario's acceptance checks and results, and apply Kendall's advice to a concrete code/PR/documentation example. Ask for a specific follow-up signal rather than requesting broad praise.
6. **Keep stale wording out of the case.** The completed scanner goal still describes SPA support as in progress, while the release note establishes it shipped. Use the newer release evidence. Track unresolved focus behavior and redirect behavior as follow-ups, not completed fixes.

This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with my manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
