# `/draft-reflection` Drafting and Feedback Rules

Use this module for Phase 3.

## Phase 3: Draft generation and save

### 10. Generate the first draft

Generate the first Workday-ready draft by answering all three reflection questions from the gathered evidence:

- Impact notes
- Feedback entries eligible for reuse
- Goals
- Manager calibration
- Relevant references
- GitHub activity when selected
- External links and fetched summaries
- Non-URL evidence
- Pasted peer feedback
- Gap-filling interview answers

Start from captured portfolio evidence before interview answers. Use interview answers to complete missing context, not to replace impact notes, feedback, goals, manager-calibration notes, or references. If a strong claim cannot be traced to captured evidence, external evidence, or a user interview answer, ask for the missing context or omit the claim.

### Voice matching

If `voice_profile_source` is `"prior_reflection"` or `"user_pasted"`, apply the saved voice profile. Match sentence length patterns, paragraph structure, tone, transitions, opening patterns, and closing patterns. Do not mention the voice matching to the user.

If `voice_profile_source` is `"default"`, null, or absent, use the standard writing rules below.

### Structure and length

Structure the draft as three sections:

1. `## Question 1: What results did you deliver, and how did you do it?`
2. `## Question 2: Reflect on recent challenges: what did you learn and how did you apply a growth mindset?`
3. `## Question 3: What are your goals for the upcoming period?`

Workday currently does not enforce a character limit for these reflection questions. Keep the draft focused and manager-readable. Recommended targets:

- Q1: 450-650 words
- Q2: 225-350 words
- Q3: 3-5 SMART goals at roughly 50-90 words each

If the draft exceeds roughly 1,300 total words, tighten by removing weaker examples, combining similar themes, and making goals more direct.

### Prior reflection framing

If `prior_reflection_goals` exist, use them to strengthen Q1 by framing results as goal completion where applicable. In Q3, check whether new goals repeat prior goals. Reframe repeated goals as an evolution or flag them for the user.

### People manager content

If `is_people_manager` is true:

- Q1 must include a substantive paragraph on coaching for performance, supporting growth, modeling culture, and contributing to team and org success.
- Q3 must include at least one people-management goal from interview answers or `growth-plan/current-goals.md`.

### Cold-start drafting

If there are fewer than 3 impact notes and evidence primarily came from the interview, lead with the user's interview narrative as the primary source. Use GitHub activity only as supporting evidence to anchor claims. Do not pad thin evidence; concise and honest is better than inflated.

### 11. Save the draft

Save to `reflections/FYXX-HN-workday-draft.md`, where `FYXX-HN` matches the fiscal half from Phase 1.

If a draft already exists, back it up before overwriting:

- Copy it to `reflections/FYXX-HN-workday-draft-v{N}.md`, using the next available version.
- Tell the user which backup path was created.
- Overwrite the main draft file with the new content.

After each question's response, append an HTML word-count comment:

```html
<!-- Q1: 582 words, recommended 450-650 -->
```

After each word-count comment, append a short HTML source comment:

```html
<!-- Sources: impact-notes/2026-02-20-copilot-onboarding-redesign.md; feedback/FY26-Q3-peer-feedback.md; reference/reflections-hr.md -->
```

These comments are for private verification in the repo. They are not Workday copy.

### 12. Save pasted peer feedback

If peer feedback was pasted during Phase 2, save it to the correct fiscal-quarter feedback file. If no peer feedback was pasted, skip this step.

Use GitHub fiscal quarter naming: `feedback/FYXX-QN-peer-feedback.md`. Fiscal year follows Microsoft's calendar:

- Q1 = Jul-Sep
- Q2 = Oct-Dec
- Q3 = Jan-Mar
- Q4 = Apr-Jun
- FY number is the calendar year of June

Examples:

- April 2026 feedback -> `feedback/FY26-Q4-peer-feedback.md`
- August 2026 feedback -> `feedback/FY27-Q1-peer-feedback.md`

When scanning existing feedback files, treat `FYXX-QN-` naming as canonical and read older `YYYY-QN-` files only as legacy imports.

Format each feedback entry:

- `### From: [Name], [Role] -- [Date]`
- `Source` (Slack / PR / Email / Meeting / Screenshot / Workday / Other / Source to add later)
- `Context`
- `Feedback type` (Exact quote / Paraphrase / Screenshot note / Summary)
- `Feedback`
- `Signal strength` (High / Medium / Low)
- `Why it might matter later`
- `User sharing preference` (default `Not decided yet` unless the user explicitly says otherwise)
- Optional `To add later`

Extract name, role, and date from the pasted text. If attribution is unclear, ask: "Who is this feedback from? (Name and role)". Use blockquotes only for exact quotes. Replace starter placeholder entries, or append to files with real entries.

### 13. Pause and offer a choice

After saving, display the full draft and ask:

> "What would you like to do next?"

Options: "Pressure test this draft as a senior leader", "This looks good, I'm done".

If pressure testing, tell the user to review and make any edits first, then proceed to Phase 4 when they respond. If done, skip to Phase 6.

## Draft formatting rules

### Core writing principles

- **Impact over activity.** Lead each paragraph with what changed for the organization, not what the user did.
- **Weave How into What.** Embed collaboration, behaviors, values, AI leverage, and security contributions into results. Do not create a separate "How I worked" section.
- **Limit issue/PR references.** Use at most 2-3 issue or PR numbers across the entire draft. Prefer descriptive references.
- **No placeholders.** Never leave brackets like `[Add detail here]`. Ask for missing details or omit unsupported claims.
- **Natural voice.** Re-read the draft. It should sound like a person reflecting on work, not AI summarizing a changelog. Vary sentence length and avoid repeated "I also" openings.

### Question 1: Results and how

When impact notes are available, organize around 2-4 themes or workstreams, not a list of ships. When evidence primarily comes from interview answers, organize around the accomplishments the user described. If Q1 runs long, consolidate to 2-3 themes with more depth.

For each theme, cover:

- **What:** Results, measurable outcomes, and business/customer/team impact.
- **How:** Partners, trade-offs, diverse perspectives, accountability, AI leverage, security, and culture in action woven into the same paragraph.

Weave High and Medium signal feedback naturally when it supports a behavior or outcome. Do not use feedback marked `Keep private`, `Ask me before using`, `Not decided yet`, or legacy entries without approval.

AI leverage, security, culture, and people management should appear naturally when relevant. If evidence is missing, Phase 2 must ask. If the user says a category does not apply, omit it.

### Question 2: Challenge and growth mindset

Use one focused narrative. Do not cover multiple challenges unless one sentence of context is needed.

Structure it as:

1. The situation: project, stakeholders, stakes, and why it was hard.
2. Actions taken: what changed, how the user sought feedback or learned, and what pivot they made.
3. What it shaped: a specific insight or approach they will apply going forward.

Avoid generic lessons. Make the growth arc concrete.

### Question 3: Goals

Use 3-5 SMART goals from `growth-plan/current-goals.md` and interview answers:

- Specific
- Measurable
- Achievable
- Relevant
- Time-bound

Filter out completed work. Include at least one development or stretch goal. If the user manages people, include at least one team development, performance culture, hiring, or retention goal. Goals must be forward-looking and tied to team or business outcomes.
