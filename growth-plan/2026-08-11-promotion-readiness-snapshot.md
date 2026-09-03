# Promotion Readiness Snapshot

## Source and Reference Coverage

- **Role context:** Abdul Ahmad, Software Engineer II, Accessibility Engineering, Level II targeting Level III.
- **Role-reference coverage:** `Role reference missing`. Accessibility Engineering does not appear in the curated or raw Career Stage Profile indexes, so no Software Engineering profile was substituted.
- **References used:** [Impact at GitHub](../reference/impact-at-github.md), [Performance and Development Philosophy](../reference/performance-philosophy.md), and [Promotions at GitHub](../reference/promotions-at-github.md) as general performance and promotion guidance.
- **Portfolio evidence used:** four real [impact notes](../impact-notes/), [current goals](current-goals.md), and [manager calibration](manager-calibration.md). The goals and calibration files contain only starter placeholders or examples, so they contribute no readiness evidence.
- **Feedback coverage:** [FY26 Q3 peer feedback](../feedback/FY26-Q3-peer-feedback.md) contains only an example entry, which was excluded. No feedback was used.

## Snapshot Metadata

- **Snapshot date:** 2026-08-11
- **Current grade and target:** Level II to Level III
- **Career focus:** Promotion prep
- **Prior snapshot coverage:** No prior snapshot found
- **Evidence counts:** 4 real impact notes, 0 eligible feedback entries, 0 real goals, 0 manager-calibration entries, 0 prior snapshots

## Readiness Snapshot

The portfolio currently shows repeated technical judgment across four meaningful work moments: creating extensible accessibility infrastructure, responding to service-team needs, finding and addressing security and maintenance risks, and helping another contributor improve an implementation. The strongest pattern is not isolated feature delivery. It is replacing narrow or duplicated implementations with reusable systems that enable future work by others.

The evidence is still thin on quantified adoption, business outcomes, sustained performance over time, peer perspectives, active goals, and explicit manager calibration. Because the Accessibility Engineering Level III profile is missing, the portfolio cannot yet show which role-specific target expectations these examples meet. The manager must calibrate whether the demonstrated scope, complexity, autonomy, and contributor enablement are Level III signals and whether they have been consistent enough to support promotion readiness.

## Historical Readiness Movement

No prior readiness snapshot found. This snapshot is the baseline for future comparison.

## Strengths to Lean On

### 1. Extensible architecture that enables others

The scanner plugin system replaced a single scan mode with an extension model that later supported reflow, npm-loaded plugins, and a user-owned alt-text plugin. The `urlConfigs` design similarly solved an immediate exclusion problem while enabling a separate SPA proposal. This maps to Technical Depth, Scope and Impact, rapid delivery, and scaling impact through others. Sources: [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).

### 2. Independent ownership of systemic risk

The Product Operations automation work identified a company-wide security and maintenance problem and replaced repository-level copies with a reusable composite Action. The linting fix found a subtle casing failure that left older issues open and cleared affected backlog. This maps to Technical Depth, accountability, secure and scalable delivery, and Scope and Impact. Sources: [centralized automation](../impact-notes/2026-08-11-centralized-product-ops-automation.md) and [linting exceptions](../impact-notes/2026-08-11-case-insensitive-linting-exceptions.md).

### 3. Judgment beyond the first implementation

For `urlConfigs`, the first Copilot-generated pass solved the problem too narrowly. Abdul reviewed it, recognized the limitation, and redirected the implementation toward a durable data model. He later applied similar judgment while helping an open-source contributor revise the SPA proposal. This maps to Technical Depth, Leadership and Communication, continuous learning, and accountability. Source: [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).

### 4. Creating clarity and enabling contribution

The plugin-system discussion gave Core UX a path to understand and build on the new capability. Issue #212 translated service-team feedback into a defined technical problem and approach, while review support on PR #223 helped another contributor move toward a stronger implementation. This maps to Leadership and Communication, Breadth, and the leadership principle of creating clarity so others can succeed. Sources: [plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) and [URL-specific configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).

## Gaps and Growth Opportunities

### Role-specific Level III expectations: Needs manager calibration

No Accessibility Engineering career-stage profile is available. Ask the manager to identify the applicable Level III responsibility, scope, autonomy, and behavior expectations before treating any example as target-grade evidence.

### Quantified outcomes and adoption: Partial evidence

The notes show shipped artifacts and concrete follow-on use, but not the number of scanner users, plugins, migrated repositories, resolved failures, affected teams, or maintenance time saved. Add adoption, before-and-after, reliability, security closure, and audience measures where available.

### Consistency over time: Needs manager calibration

Four distinct examples suggest a pattern, but all were captured on one date and the portfolio does not establish the delivery period or whether the behavior is sustained. Add actual ship dates and compare this baseline with evidence from the next 3 to 6 months.

### Peer and stakeholder validation: Missing evidence

There is no eligible real feedback. Request specific feedback from a service-team partner, an accessibility-scanner user, the PR #223 contributor, and the owner of the centralized automation. Ask what changed and how Abdul's judgment or collaboration affected the outcome.

### Goals and business alignment: Missing evidence

The goals file is still a template, and there is no manager-calibration history. Add SMART goals tied to team priorities and capture manager guidance on how this work connects to Level III scope and organizational need.

## Impact Narrative Opportunities

- **Make platform adoption concrete:** Add counts and links for reflow, npm loading, user-owned plugins, scanner consumers, and new scan coverage to the [plugin-system note](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md).
- **Show customer closure:** Add which service teams raised the third-party-content issue and whether exclusions fixed their workflow to the [URL-specific configuration note](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md).
- **Quantify company-wide scope:** Add repository count, rollout status, security resolution, and maintenance savings to the [centralized automation note](../impact-notes/2026-08-11-centralized-product-ops-automation.md).
- **Measure backlog recovery:** Add the number and age of issues closed by the casing fix, plus merge status, to the [linting-exceptions note](../impact-notes/2026-08-11-case-insensitive-linting-exceptions.md).
- **Clarify collaboration:** Capture who reviewed the architecture, who adopted it, and how the PR #223 contributor experienced the guidance. This would strengthen Breadth and Leadership and Communication without overstating authorship.

## Behavioral Evidence (How)

- **How we work:** The service-team feedback loop shows closeness to internal customers. Extensible plugin and URL configuration designs, plus centralized automation, show a preference for scalable outcomes over one-off fixes. Competencies: Technical Depth, Breadth, Scope and Impact.
- **How we interact:** The portfolio shows accountability for reviewing AI-generated work and accurately distinguishes enabling architecture, review guidance, and contributions authored by others. Direct peer evidence about respect, integrity, and collaboration is still missing. Competencies: Leadership and Communication, Technical Depth.
- **How we lead:** Issues and discussion posts created clarity; reusable extension points generated room for others to add plugins and propose SPA support; review guidance helped a contributor improve a design. Competencies: Leadership and Communication, Breadth, Scope and Impact.
- **Leadership Principles:** The strongest evidence is creating clarity so others can succeed, then delivering reusable systems. Evidence for generating energy is indirect and should be strengthened with contributor or stakeholder feedback.

## Role Expectation Map

This map is lower confidence because the Accessibility Engineering role reference is missing. It uses only GitHub's general promotion criteria and requires manager calibration for Level III.

| Expectation                                           | Evidence status           | Supporting evidence                                                                           | Coaching note                                                                                        |
| ----------------------------------------------------- | ------------------------- | --------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| Consistently delivers meaningful impact               | Partial evidence          | Four [impact notes](../impact-notes/)                                                         | Multiple concrete outcomes exist, but timing, metrics, and sustained consistency are unclear.        |
| Demonstrates target-grade skills and behaviors        | Needs manager calibration | Architecture, security ownership, review, and contributor enablement across the four notes    | Map these examples to the actual Accessibility Engineering Level III profile.                        |
| Models culture and core values                        | Partial evidence          | Customer feedback response, accountable AI review, knowledge sharing, and contributor support | Add eligible peer feedback and manager observations.                                                 |
| Prepared for broader or more complex responsibilities | Partial evidence          | Open-source platform architecture and company-wide automation centralization                  | Confirm whether this scope and complexity match Level III and whether ownership is sustained.        |
| Role scope has expanded to support business need      | Needs manager calibration | Reusable scanner capabilities and cross-repository automation                                 | The work suggests broader scope, but the organizational need for a Level III role is not documented. |

## Business Need and Budget Boundaries

- **Business need:** The portfolio contains possible signals: company-wide automation risk, reusable accessibility infrastructure, service-team requirements, and open-source contributor enablement. It does not yet establish that the organization needs Abdul's role to operate at Level III scope. This requires manager confirmation tied to current priorities, capability gaps, ownership, and expected future scope.
- **Budget availability:** Budget availability is not visible from this portfolio and cannot be assessed by AI.

## Manager Calibration Questions

1. Which Accessibility Engineering Level III expectations should we use, and which of these four examples count as evidence against them?
2. Do the plugin architecture, `urlConfigs` design, and cross-repository automation demonstrate the scope, autonomy, and complexity expected at Level III? What is still missing?
3. Which outcome measures or stakeholder perspectives would make this impact narrative more convincing for a promotion review?
4. Does the organization have a sustained business need for Abdul to own broader accessibility infrastructure and contributor enablement at Level III scope?
5. What timing, nomination process, and additional evidence should Abdul plan for, separate from any budget dependency?

## Optional Promotion Justification Draft

`Not recommended yet.` The portfolio has promising examples but lacks role-specific Level III expectations, manager calibration, eligible peer feedback, active goals, quantified outcomes, and documented business need. Drafting promotion copy now would require assumptions that the evidence does not support.

## Next Evidence Moves

1. Ask the manager for the applicable Accessibility Engineering Level III profile and record the mapping in [manager calibration](manager-calibration.md).
2. Update each impact note with actual ship dates, merge or deployment status, audience scale, adoption, and measurable outcomes.
3. Request specific feedback from service teams, scanner users or contributors, and automation owners, then set a deliberate sharing preference for each entry.
4. Replace the placeholders in [current goals](current-goals.md) with 3 to 5 SMART goals tied to accessibility infrastructure, customer outcomes, security, or contributor leverage.
5. Revisit this baseline in 3 to 6 months and compare only evidence-backed changes in scope, outcomes, behaviors, business need, and manager calibration.
