# Axe Duplicate-Issue Testing Strategy

**Date:** 2026-09-10

## Work moment

After the post-migration axe scanning incident produced duplicate issues, Lindsey Wild confirmed a testing gap I had raised previously: even with black-box and unit coverage, important behavior in the surrounding GitHub Actions workflow is difficult to exercise and reason about through conventional code tests.

Lindsey opened a placeholder issue and trusted me to fill in the technical plan because I had explored the problem before. I documented a workflow-simulation strategy covering three critical scenarios: opening issues for new findings, closing issues after remediation, and reporting the same findings again without creating duplicates. I also outlined constraints to keep the approach useful and maintainable, including running the real production code, changing inputs rather than bypassing behavior, limiting simulated scans to a small but realistic set of services and URLs, and using static JSON payloads to model issue-opening and issue-closing states.

The full simulation strategy has not been implemented. While working on other priorities, I did add more robust unit coverage for missed edge cases in the existing suite as a smaller improvement that did not expand or delay those deliverables.

## Why it mattered

Duplicate accessibility issues create noise for service teams and make it harder to distinguish new remediation work from findings already being tracked. The workflow also contains behavior outside the application code, particularly in GitHub Actions configuration and multi-run cache state, that existing tests cannot fully represent.

A realistic validation strategy needs to exercise state transitions across workflow runs without introducing a testing system so complex that it becomes difficult to maintain. It also needs to run quickly enough for practical iteration because the normal scanning workflow is slow.

## What changed

- A previously implicit testing gap now has a documented problem statement and proposed validation approach.
- The plan defines three concrete acceptance scenarios: open new issues, close remediated issues, and avoid duplicates when existing findings recur.
- The proposed design preserves fidelity by running the actual code and modifying its inputs, while limiting simulation scope to at most three services and six URLs for speed.
- Static JSON fixtures were identified as a possible way to model state across opening and closing runs, with the opening fixture reusable to test duplicate prevention.
- The existing unit-test suite gained additional coverage for missed edge cases through a lighter-weight change that fit alongside other committed work.
- The broader workflow-simulation implementation remains future work.

## Evidence

- [Testing deficiency and simulation plan](https://github.com/github/accessibility/issues/10370)
- Lindsey created the placeholder issue and left the detailed plan to me after I shared that I had previously explored the problem.
- Best evidence to add later: the pull request for the added unit tests, the exact edge cases covered, and before-and-after test counts or coverage.

## How I worked

I used judgment to manage scope twice. During my first attempt, I stopped when the testing strategy began adding too much complexity to unrelated committed work rather than delaying those deliverables. When the duplicate-issue incident made the deficiency concrete, I followed through by turning my earlier thinking into a structured plan that Lindsey and the team could evaluate.

I separated the ideal long-term solution from a practical near-term improvement. The simulation proposal prioritizes realistic behavior, maintainability, and runtime by exercising production code with controlled inputs and a small scan set. In parallel, I strengthened unit coverage where I could do so with a lighter lift and without disrupting other timelines. I kept the note explicit that broader workflow simulation remains unimplemented.

## Who benefited

- Accessibility engineers and First Responders who maintain or diagnose the axe scanning workflow.
- Service teams that rely on accurate, non-duplicative accessibility issues for remediation planning.
- Future contributors who now have a concrete outline for validating stateful workflow behavior.

## Questions to answer later

- Which pull request and edge cases document the added unit-test coverage, and how did the suite change?
- Will the team implement the proposed workflow simulation, and what design or trade-offs will it select?
- What duplicate-issue or workflow-reliability signal improves after the testing gap is addressed?
