# Current Goals

Your active growth goals. Run `/update-goals` to check recent impact notes and feedback against these goals, or update manually after a manager conversation.

Goals should be **SMART**: Specific, Measurable, Achievable, Relevant, and Time-bound. They should align with team and business priorities and focus on delivering value to customers and the company.

## Active Goals

### Goal 1: Validate an Agentic Accessibility Fix Pilot

**Goal statement:** By March 31, 2027, partner with Developer Experience to implement and evaluate at least one scoped WCAG 1.3.1 agentic-fix pilot, measuring identification accuracy, fix validity, reviewer disposition, and remediation time against a manual baseline.

**Why this matters:** A successful pilot could reduce the accessibility expertise and engineering time required from service teams while scaling remediation of the most common WCAG violation category. This develops cross-team requirements work and end-to-end ownership of a technical scenario.

**Progress:**

- [x] Identify the highest-volume WCAG category and separate it into distinct technical fix patterns.
- [x] File two scoped Developer Experience candidates.
- [ ] Agree with Developer Experience on the selected pilot, owner, representative test set, manual baseline, and success criteria by October 30, 2026.
- [ ] Implement and exercise one pilot against representative captured findings by February 26, 2027.
- [ ] Publish measured results and a continue, revise, or stop decision by March 31, 2027.

**Evidence I'm collecting:** Partner acceptance and feedback, implementation pull requests, test-set size, correct-identification rate, valid-fix rate, reviewer disposition, manual versus agent-assisted remediation time, and the [agentic accessibility fix impact note](../impact-notes/2026-09-10-agentic-accessibility-fix-prioritization.md).

---

### Goal 2: Operationalize Accessibility Governance Data Quality

**Goal statement:** By December 18, 2026, establish an operational validation cycle for the migrated Port integrations and audit-label automation, covering eight consecutive weekly label-report runs and three scheduled Port data checks, with freshness, completeness, failures, and follow-up ownership recorded.

**Why this matters:** The Port migrations and audit-label fixes have shipped, but sustained freshness, completeness, and reliability are not yet measured. A recurring validation cycle will protect governance data used by maintainers and service owners while turning completed delivery into accountable live-site operation.

**Progress:**

- [x] Ship direct Port integration with current data and production validation.
- [x] Migrate audit-request links to stored Port URLs.
- [x] Fix audit-label report completeness and lifecycle behavior.
- [ ] Define weekly label-report and Port verification checks for freshness, completeness, report size, link validity, and affected service count by October 9, 2026.
- [ ] Collect eight consecutive weekly label-report results and three scheduled Port checks, then share a summary of reliability, defects, service coverage, and follow-up ownership by December 18, 2026.

**Evidence I'm collecting:** Successful workflow runs, largest report size, hidden-error recurrence, Port data freshness, parity checks, number of represented services, broken-link reports, incidents, maintainer or service-owner feedback, and the [Port migration](../impact-notes/2026-09-02-accessibility-scorecard-port-migration.md), [Port-link migration](../impact-notes/2026-09-04-audit-request-port-link-migration.md), [report-resolution](../impact-notes/2026-09-02-audit-label-report-resolution.md), and [complete-reporting](../impact-notes/2026-09-10-complete-audit-label-reporting.md) impact notes.

## Completed Goals

### Goal: Add Unit-Level Confidence to the Axe Scanning Workflow

**Goal statement:** During the axe scanning workflow migration and my scanner contributions over the following year, complement the existing snapshot tests with unit tests across my implementation work so individual functions, classes, and logic branches could be validated and failures could be isolated more precisely.

**Why this mattered:** The existing snapshot tests validated overall workflow inputs and outputs, but their large text snapshots were difficult to review and did not make it easy to identify which branch of logic caused a failure. Adding unit-level assertions made the test suite more useful for understanding behavior and diagnosing regressions, especially while I was learning the workflow as a new team member.

Clay initially believed the existing snapshot tests were sufficient because they were the agreed-upon way to test GitHub Actions. I explained the strengths and limitations of both approaches: snapshot tests validate the workflow as a whole, while unit tests make it possible to assert on individual branches and localize failures. After discussing the trade-offs, we aligned that the two approaches complement each other and that using both was stronger than relying on either alone. Clay also agreed that manually reviewing large snapshot updates makes it difficult to determine confidently whether every change is correct.

**Progress:**

- [x] Identify the limits of relying only on workflow-output snapshot tests.
- [x] Build alignment with Clay on using snapshot and unit tests together by explaining their complementary strengths and review trade-offs.
- [x] Preserve snapshot coverage while adding unit tests for individual units and logic branches.
- [x] Add unit tests in almost all of my axe workflow pull requests to make the suite more robust and failures easier to localize.
- [x] Continue contributing unit tests through the scanner pull requests I opened over the following year.
- [x] Continue adding missed edge-case coverage after the migration as a lower-scope reliability improvement.

**Evidence collected:** The [axe workflow migration](../impact-notes/2026-09-03-axe-scanning-workflow-migration.md) documents the broader migration work, and the [duplicate-issue testing strategy](../impact-notes/2026-09-10-axe-duplicate-issue-testing-strategy.md) records continued unit-test enrichment after migration. My scanner pull requests over the following year also included unit tests. Representative pull requests, the exact tests added, and before-and-after test or coverage counts still need to be linked.

---

### Goal: Make the Accessibility Scanner More Useful and Expand Its Use

**Goal statement:** During the period following my last Workday Reflection, make the accessibility scanner more useful across different team needs by expanding it beyond its original fixed axe workflow and URL-list input through an extensible plugin system, multiple plugin-loading paths, and URL-specific configuration.

**Why this mattered:** The scanner originally supported only non-interactive axe scanning, and its `urls` input accepted only URL strings without page-specific settings. These constraints limited its usefulness for teams that needed other accessibility checks, custom plugins, third-party content exclusions, or other behavior tailored to a specific page. Extensible plugins and URL configuration let the scanner support broader needs without adding a new hard-coded scan mode or top-level action input for every use case.

**Progress:**

- [x] Identify the limitations of the scanner's fixed single-scan architecture.
- [x] Design, validate, implement, and announce an extensible plugin system.
- [x] Enable built-in plugin capabilities, including optional Reflow scanning.
- [x] Enable plugins to be loaded from the file system or npm so users can bring custom implementations.
- [x] Support broader use through custom plugins, including adoption by Tetralogical, and customer meetings and demos.
- [x] Expand the daily workflow beyond axe scanning, contributing to an increase from roughly 50 to 80 total issues to roughly 250 to 300 with Reflow scanning included.
- [x] Independently identify that the URL-list input could not express page-specific scanning behavior.
- [x] Design and ship the `urlConfigs` action input so each URL can carry its own scanner configuration.
- [x] Enable teams to exclude third-party content with per-URL selector settings while preserving room for additional use cases, including the in-progress SPA contribution.

**Evidence collected:** The [scanner plugin system](../impact-notes/2026-08-11-accessibility-scanner-plugin-system.md) documents the architecture, implementation, built-in Reflow capability, file-system and npm loading, custom plugin use, the [Tetralogical plugin contribution](https://github.com/github/tetralogical-playwright/pull/8), and Core UX announcement. It also records the rough increase from 50 to 80 total issues under axe-only scanning to 250 to 300 with Reflow contributing to the daily accessibility scanner workflow. The [URL-specific scanner configuration](../impact-notes/2026-08-11-extensible-url-specific-scanner-config.md) documents the identified URL-list deficiency, shipped `urlConfigs` input, selector exclusions, and the in-progress SPA use case. Joyce Zhu's feedback in [FY26 Q4](../feedback/FY26-Q4-peer-feedback.md) validates the plugin design process, implementation, communication, and Reflow adoption. Lindsey Wild's feedback in [FY27 Q1](../feedback/FY27-Q1-peer-feedback.md) validates custom plugin adoption by Tetralogical and use in customer meetings and demos. Links to the Reflow and file-system/npm loading implementations, dated issue-count sources, service-team confirmation of selector exclusions, issue volume by plugin type, plugin and scanner-user counts, and broader adoption measures still need to be added.
