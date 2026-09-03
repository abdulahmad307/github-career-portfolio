# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Accessibility Engineering, Level II targeting Level III.
- **Role-reference coverage:** `Role reference missing`. Accessibility Engineering is absent from both curated and raw Career Stage Profile indexes. Software Engineering expectations were not substituted.
- **References used:** [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general guidance.
- **Portfolio evidence used:** six real [impact notes](../impact-notes/), [current goals](current-goals.md), [manager calibration](manager-calibration.md), and the [baseline readiness snapshot](2026-08-11-promotion-readiness-snapshot.md). Goals and calibration contain only starter placeholders or examples.
- **Feedback coverage:** [FY26 Q3 peer feedback](../feedback/FY26-Q3-peer-feedback.md) contains only an example entry. No feedback was eligible or used.

## Snapshot Metadata

- **Snapshot date:** 2026-08-11
- **Current grade and target:** Level II to Level III
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** [2026-08-11 baseline](2026-08-11-promotion-readiness-snapshot.md)
- **Evidence counts:** 6 real impact notes, 0 eligible feedback entries, 0 real goals, 0 manager-calibration entries, 1 prior snapshot

## Readiness Snapshot

The portfolio currently shows a recurring pattern of finding systemic problems behind immediate symptoms, then creating reusable technical or operational foundations. Evidence includes extensible scanner architecture, per-URL configuration, centralized security ownership, a casing fix that cleared older issues, two automated governance workflows, and team-wide framing of a slow daily scanning process.

The two newest notes strengthen evidence for independent problem discovery, operational ownership, decomposition of ambiguous systems, and creating clarity for others. They do not resolve the baseline gaps in quantified outcomes, evidence over time, peer perspectives, active goals, manager calibration, role-specific Level III expectations, or documented business need. Manager calibration remains necessary before treating these examples as promotion-relevant.

## Historical Readiness Movement

- **What strengthened:** The [governance automation note](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md) adds concrete delivery beyond product architecture: two locally run processes now execute weekly in visible GitHub Actions workflows. The [scanning-speed proposal](../impact-notes/2026-08-11-accessibility-scanning-speed-proposal.md) adds evidence of identifying a recurring 30 to 40 minute bottleneck, exploring options, and creating a team discussion.
- **What stayed stable:** Extensible architecture, independent ownership, security and maintenance awareness, accountable review of AI-generated code, and enabling others remain the strongest themes.
- **What remains open:** Role-specific Level III mapping, quantified adoption and time savings, stakeholder feedback, SMART goals, manager calibration, sustained evidence across time, business need, and budget visibility remain unchanged.
- **What changed in the narrative:** The narrative is broader than reusable code alone. It now includes operational resilience, reducing person-dependent processes, surfacing hidden system knowledge, and proactive technical facilitation. The speed proposal is evidence of judgment and clarity, not delivered results.

## Strengths to Lean On

### 1. Extensible systems that enable follow-on work

The plugin system enabled built-in and npm-loaded plugins, while `urlConfigs` supported a separate SPA proposal. This maps to Technical Depth, Scope and Impact, and creating conditions for others to succeed. Sources: [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).

### 2. Looking beyond symptoms to systemic causes

A labeling bug exposed opaque governance operations; a security issue exposed duplicated automation; stale linting issues exposed a casing defect. In each case, Abdul identified a broader system problem rather than limiting the response to the immediate symptom. This maps to Technical Depth, Breadth, accountability, and Scope and Impact. Sources: [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md), [centralized automation](../impact-notes/2026-08-11-centralized-product-ops-automation.md), and [linting exceptions](../impact-notes/2026-08-11-case-insensitive-linting-exceptions.md).

### 3. Operational resilience and visibility

Two governance scripts that depended on local manual execution now run weekly through GitHub Actions, making execution history visible and reducing reliance on a small group. This maps to delivering success, creating clarity, and secure and scalable operations. Source: [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md).

### 4. Technical judgment and responsible AI leverage

Abdul used Copilot to accelerate `urlConfigs`, rejected an insufficient first pass, and redirected it toward a durable model. He then helped an external contributor improve an SPA proposal without claiming authorship. This maps to Technical Depth, Leadership and Communication, integrity, and accountability. Source: [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).

### 5. Creating clarity before execution

Issue decomposition, architecture discussions, and the scanning-speed proposal make unclear systems and trade-offs visible to broader groups. This maps to Leadership and Communication, Breadth, and the leadership principle of creating clarity so others can succeed. Sources: [governance automation](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md), [scanning-speed proposal](../impact-notes/2026-08-11-accessibility-scanning-speed-proposal.md), and [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md).

## Gaps and Growth Opportunities

### Role-specific Level III expectations: Needs manager calibration

No Accessibility Engineering profile is available. Obtain the actual Level III expectations and ask the manager to map scope, autonomy, complexity, technical depth, and leadership signals to them.

### Quantified outcomes and adoption: Partial evidence

The portfolio now includes two weekly automations and a rough 30 to 40 minute scanning runtime, but still lacks time saved, run reliability, repository counts, plugin adoption, affected-user scale, and broad defect reduction. Capture before-and-after measures and audience size.

### Proposal-to-outcome conversion: Partial evidence

The speed proposal demonstrates problem framing and team facilitation, but no approach has been selected or implemented. Track the decision, ownership, target runtime, delivery, and measured result without presenting the proposal itself as impact already delivered.

### Consistency over time: Needs manager calibration

Six examples suggest a coherent pattern, but all were captured on one date and actual delivery dates are not recorded. Add ship dates and use future snapshots to demonstrate sustained behavior rather than inferring it from the number of notes.

### Peer feedback, goals, and manager alignment: Missing evidence

There is no eligible feedback, no real goal, and no real calibration entry. Request behavioral feedback, define SMART goals tied to team priorities, and record the manager's assessment of Level III evidence and gaps.

## Impact Narrative Opportunities

- Add manual run time, weekly success rate, failure rate, and troubleshooting participation to the [governance automation note](../impact-notes/2026-08-11-accessibility-governance-workflow-automation.md).
- Keep the [speed proposal](../impact-notes/2026-08-11-accessibility-scanning-speed-proposal.md) framed as clarity and initiative until a decision or result exists; later add the selected trade-off and before-and-after runtime.
- Add plugin counts, adoption, scan coverage, and user feedback to the [plugin-system note](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md).
- Add service-team confirmation and the final PR #223 outcome to the [URL-specific configuration note](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).
- Add repository count, rollout status, security closure, and maintenance savings to the [centralized automation note](../impact-notes/2026-08-11-centralized-product-ops-automation.md).
- Add the number and age of issues recovered by the [linting fix](../impact-notes/2026-08-11-case-insensitive-linting-exceptions.md).

## Behavioral Evidence (How)

- **How we work:** Service-team feedback shaped `urlConfigs`; recurring workflow delays and governance opacity prompted broader investigation. Reusable architecture and automation show an emphasis on scalable customer and operational value. Competencies: Technical Depth, Breadth, Scope and Impact.
- **How we interact:** The notes show accountability in reviewing AI-generated work, transparent attribution of others' contributions, and support for an open-source contributor. Direct feedback about respect and collaboration is still missing. Competencies: Leadership and Communication, Technical Depth.
- **How we lead:** Abdul created issue structures, proposals, discussions, extension points, and visible workflows that make it easier for others to understand, contribute, and troubleshoot. Competencies: Leadership and Communication, Breadth, Scope and Impact.
- **Leadership Principles:** Evidence is strongest for creating clarity and delivering reusable foundations. Generating energy is plausible through contributor enablement and team discussion, but requires stakeholder feedback before it becomes a strong claim.

## Role Expectation Map

This map is lower confidence because the Accessibility Engineering role reference is missing. It uses general GitHub promotion criteria and requires manager calibration for Level III.

| Expectation                                           | Evidence status           | Supporting evidence                                                                               | Coaching note                                                                                      |
| ----------------------------------------------------- | ------------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| Consistently delivers meaningful impact               | Partial evidence          | Six [impact notes](../impact-notes/)                                                              | More examples are captured, but delivery dates, metrics, and sustained consistency remain unclear. |
| Demonstrates target-grade skills and behaviors        | Needs manager calibration | Architecture, operational automation, security ownership, review, and facilitation                | Map these signals to the actual Accessibility Engineering Level III profile.                       |
| Models culture and core values                        | Partial evidence          | Customer response, accountable AI review, attribution, knowledge sharing, and contributor support | Add eligible peer and manager observations.                                                        |
| Prepared for broader or more complex responsibilities | Partial evidence          | Open-source platforms, company-wide automation, and governance-system improvement                 | Confirm whether breadth, complexity, and ownership meet Level III expectations.                    |
| Creates clarity so others can succeed                 | Partial evidence          | Plugin discussion, issue decomposition, visible workflows, and speed proposal                     | Add evidence that others acted more effectively because of this clarity.                           |
| Role scope has expanded to support business need      | Needs manager calibration | Shared scanner infrastructure and reduced person dependency in governance work                    | Document the organizational need, expected ownership, and future scope at Level III.               |

## Business Need and Budget Boundaries

- **Business need:** The portfolio now shows additional capability-gap signals: governance knowledge concentrated in a few people, manual local workflows, a slow daily scanning loop, reusable scanner infrastructure, and cross-repository security ownership. It still does not prove that the organization requires Abdul's role at Level III. The manager should connect these needs to priorities, durable ownership, and expected higher-grade scope.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Which Accessibility Engineering Level III expectations apply, and which of these six examples demonstrate them?
2. Do the governance automations and systemic follow-through from individual bugs strengthen the case for Level III scope, autonomy, or operational ownership? What evidence is still missing?
3. Which outcome measures and stakeholder perspectives would most strengthen the architecture, automation, and contributor-enablement narrative?
4. Is there a sustained business need for Abdul to own accessibility infrastructure, governance automation, and technical clarity at broader scope?
5. What timing, nomination process, goals, and additional evidence should Abdul plan for, separate from budget availability?

## Optional Promotion Justification Draft

`Not recommended yet.` The two new notes broaden the narrative but do not close the missing role expectations, manager calibration, eligible feedback, active goals, quantified outcomes, sustained evidence, or documented business need. A responsible promotion justification would still require unsupported assumptions.

## Next Evidence Moves

1. Obtain the applicable Accessibility Engineering Level III expectations and capture the manager's evidence mapping in [manager calibration](manager-calibration.md).
2. Add actual delivery dates and concrete adoption, reliability, time-saving, security, and audience measures to all six impact notes.
3. Request feedback from service teams, scanner contributors, governance workflow users, and automation owners, then choose sharing preferences explicitly.
4. Replace [current goals](current-goals.md) placeholders with 3 to 5 SMART goals tied to measurable accessibility infrastructure and operational outcomes.
5. Track the speed proposal from discussion through decision and implementation, keeping proposal activity distinct from delivered results.
6. Compare this snapshot with another snapshot in 3 to 6 months using only new outcomes, feedback, goal progress, and manager calibration.
