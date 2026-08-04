# `/draft-reflection` Pressure Test and Finalize Rules

Use this module for Phases 4-6 and special circumstances.

## Phase 4: Pressure test

### 14. Re-read the draft from disk

Always read the current draft file from disk before reviewing. The user may have edited it offline.

Before reviewing, create a clean in-memory review copy by stripping HTML comments:

- Remove word-count comments like `<!-- Q1: 582 words, recommended 450-650 -->`.
- Remove source comments like `<!-- Sources: impact-notes/... -->`.
- Remove all other `<!-- ... -->` HTML comment blocks, including multi-line comments.

Use only the stripped copy for pressure-test analysis, word counts, quote selection, and proposed revisions. Keep comments in the saved markdown unless the user asks to remove them.

### 15. Read validation references

Read:

- `reference/reflections-hr.md`
- `reference/performance-philosophy.md`
- `reference/impact-at-github.md`

If `growth-plan/career-profile.md` specifies a job family and grade, also read the matching career-stage profile from `reference/`. Prefer curated career-stage summaries when available. Do not invent role expectations.

### 16. Pressure test as a senior leader

Adopt the persona of a skip-level manager reviewing the reflection. Evaluate:

- **Q1:** Clear What (results with metrics) and How (behaviors woven into results), AI leverage, security contributions, culture in action, peer feedback integration, specific metrics, and people-management outcomes when relevant.
- **Q2:** One specific challenge, not a generic statement, with situation, actions, and how it shaped future approach.
- **Q3:** 3-5 SMART goals aligned with business outcomes, including a people-management goal when relevant.
- **Overall:** Specificity, authenticity, concise length, natural voice, and whether the draft is manager-readable. If Q1 is over 650 words, Q2 over 350 words, Q3 has more than 5 goals, or the full draft is over roughly 1,300 words, suggest trims.

Present a structured review with Q1, Q2, Q3, and Overall sections. Quote relevant passages and provide proposed revisions. Do not rewrite the entire draft.

## Phase 5: Refinement loop

Iterate until the user approves:

- If the user edited offline and asks for another review, re-read the file, strip HTML comments in memory, and pressure test again.
- If the user asks Copilot to make specific changes, edit only Workday prose unless they ask to change source comments.
- Each iteration should flag only new or unresolved issues, not repeat feedback that was addressed.
- If the user says it is good, proceed to Phase 6.

## Phase 6: Finalize

Display the final draft and tell the user:

> Your reflection is ready. Copy each question's response into Workday. Workday currently does not enforce a character limit for these questions, but keep the final version focused enough for a productive manager conversation. You can also use Workday's AI Companion for additional feedback on your responses.
>
> **Important:** You are responsible for ensuring all AI-assisted content is accurate and complete. Always review, edit, and validate before submitting. Do not copy/paste without review. AI should not be used to assess, rank, or infer performance.
>
> The saved markdown may include HTML source comments for your private verification. Do not paste those comments into Workday.

Summarize saved artifacts:

- Draft file: `reflections/FYXX-HN-workday-draft.md`
- Feedback entries, if pasted: `feedback/FYXX-QN-peer-feedback.md`

Remind the user:

> This reflection covers [H1/H2 FYXX]. Keep logging impact notes with `/new-impact-note` and feedback with `/capture-feedback` throughout the next period so your next draft has strong evidence automatically.

Delete `reflections/.draft-reflection-state.json`. The walkthrough is complete.

## Special circumstances

Before proceeding past Phase 1, check whether the user mentions any of these situations and adjust the walkthrough.

### Role transition

If the user transferred from another team:

- Focus on past contributions and future goals.
- Run the full walkthrough, but note that the prior manager should complete Questions 1 and 2 for the period before transition.
- The current manager should set goals for Question 3.
- Tell the user to coordinate with the prior manager for impact before the transition.

### Return from extended leave

If the user returned from leave longer than 30 days:

- Gather evidence only from before leave.
- Generate Q1 for the pre-leave period only.
- Skip or shorten Q2 when appropriate.
- Generate Q3 with re-entry goals for the next 3-6 months.
- Tell the user to work with their manager to document accomplishments together.

### Deliverables without immediate results

If the user has long-running projects that have not shipped:

- Focus on milestones achieved, collaboration, decision quality, and growth mindset.
- Do not require final outcomes to show impact.
- Tell the user: "For work still in progress, highlight milestones, collaboration, and what you've learned so far. You don't need final results to show impact."
