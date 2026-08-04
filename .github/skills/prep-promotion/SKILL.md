---
name: prep-promotion
description: "Calibrate promotion readiness by comparing portfolio evidence, goals, feedback, and manager calibration against role expectations, then identify strengths, gaps, narrative opportunities, and manager questions."
---

You are helping the user calibrate promotion readiness and strengthen their impact narrative. Follow this procedure step by step.

If the user asks what good promotion readiness coaching looks like, point them to `examples/prep-promotion-evidence-map.md`. Use synthetic examples for structure and calibration only. Do not copy synthetic details into the user's real readiness prep.

## Context

Promotion readiness coaching must separate three different questions:
1. **Employee Readiness:** Evidence that the user consistently delivers meaningful impact, demonstrates skills and behaviors at the next grade, models culture and core values, and is prepared for broader or more complex responsibilities.
2. **Business Need:** Evidence that the org needs the role at a higher grade because of evolving priorities, organizational goals, scope growth, or capability gaps.
3. **Budget Availability:** Approved financial capacity. This is outside the Hubber's control and should be labeled as a dependency, not inferred from portfolio evidence.

There is no minimum time at GitHub or in a grade to be promoted.

The promotion justification in Workday has a **2,000 character maximum**. Promotions at grade 12+ also require a separate GitHub Promotion Template.

This workflow is not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. It is a coaching and calibration artifact. It helps the user see how their current portfolio stacks up against available role expectations, where the story is strong, where it is thin, and what to ask a manager next.

## Procedure

1. **Read all files in `impact-notes/`** to build a complete picture of the user's meaningful work moments and measurable impact. Skip `TEMPLATE.md`, files whose titles start with `Example:`, and clearly placeholder content. Track the source file path for each piece of evidence used.

2. **Read all files in `feedback/`** to identify behavioral evidence and peer perspectives on readiness. **Skip any entries with headings that start with "Example:"** or are clearly template placeholders. Track the source file path and feedback entry heading for each feedback item used.

   **Respect user sharing preference before using feedback in readiness calibration.** This workflow produces manager-calibration material, so feedback reuse must be opt-in:
   - Entries marked `Keep private`: do not include, summarize, quote, paraphrase, or turn into themes for any readiness-calibration output.
   - Entries marked `Okay to reuse in manager prep`: eligible for readiness calibration.
   - Entries marked `Ask me before using` or `Not decided yet`: do not use automatically. Before generating the readiness document, show only the entry heading, source, date, and context, then ask which entries the user wants included.
   - Entries with no `User sharing preference` field are legacy entries. Treat them as `Not decided yet`.
   - If the user selects any entries during that approval prompt, treat those entries as **approved for this readiness calibration only**. They are eligible for the output, but their saved file value remains unchanged unless the user explicitly asks you to update it.
   - If the user does not choose any feedback entries, generate the prep from impact notes, goals, manager-calibration notes, and references only.

3. **Read `growth-plan/current-goals.md`** for the user's active goals and progress. **Skip placeholder goals** (e.g., "Goal 1: [Title]") and the Example Goal section.

4. **Read `growth-plan/career-profile.md`** if it exists. Use it to determine the user's name, role title, job family, current grade, and target grade. If this file is missing or still placeholder and the information is not provided in the prompt, ask the user for the missing role context before doing grade-level alignment.

5. **Read `growth-plan/manager-calibration.md`** for alignment signals from the user's manager on promotion readiness, gaps, and expectations.

   **Skip only explicit starter placeholders and examples:**
   - Skip the entire starter template entry whose heading is exactly `### [Date] -- [1:1 / Career Conversation / Review]`, from that heading through the next horizontal rule or next `###` heading.
   - Skip any entry whose heading starts with `### Example:` or contains `Example:` before the first real entry.
   - Skip lines that still contain bracketed placeholder tokens such as `[What goals...]`, `[Key feedback...]`, `[Title]`, or italicized placeholder prompts like `_[What are you going to do based on this conversation?]_`.
   - Do **not** skip unchecked action items solely because they use `- [ ]`. Real open action items outside the skipped template/example blocks are valid calibration evidence and should be routed into gaps, manager asks, or next steps.

6. **Read prior promotion readiness snapshots** in `growth-plan/` before generating the new output.

   Look for files matching `*promotion-readiness-snapshot*.md`. Skip placeholder files and ignore the file you are about to create. Use prior snapshots to identify:
   - Strengths that have remained consistent
   - Gaps that appear closed or better supported by new impact notes, feedback, goals, or manager calibration
   - Gaps that remain open
   - New opportunities or risks that emerged since the prior snapshot
   - Whether the user's impact narrative has become clearer, more evidenced, or better calibrated

   If no prior readiness snapshot exists, state that the new snapshot becomes the baseline for future comparison.

7. **Read career stage references** to understand grade-level expectations and label coverage:
   - Start with `reference/career-stage-profiles/curated/README.md`. If it lists the user's job family, read the matching curated file linked from that index, including Product Org extension links under `reference/career-stage-profiles/curated/product-org/`, and label role-reference coverage as `Curated reference available`.
   - Use the curated summary as the first-pass evidence-mapping guide for the target grade.
   - Read the matching raw file only when the curated summary is missing needed detail, the user asks for exact wording, or manager calibration needs the source text. For generated profiles this raw file is usually in `reference/career-stage-profiles/`; for Product Org extensions it may be a legacy `.txt` file directly under `reference/`. Label raw files as fallback source material.
   - If no curated summary exists, read `reference/career-stage-profiles/README.md`. If the user's job family is listed, read the matching raw file and label coverage as `Raw reference available`.
   - If neither the curated index nor raw index contains a matching job family, label coverage as `Role reference missing`.
   - Use legacy files in `reference/` only as supporting source material when they clearly match the user's job family and grade. Label them as source material, not as a promotion decision or manager calibration.

   Coverage labels mean:
   - **Curated reference available:** A concise role and grade summary is available for first-pass evidence mapping. Use it with higher confidence than raw extracts, while still asking the manager to calibrate.
   - **Raw reference available:** Only a raw Career Stage Profile extract is available. Use it as source material, label it raw in the output, and avoid over-interpreting responsibilities beyond what the text supports.
   - **Role reference missing:** No matching role reference was found. Use only general GitHub performance guidance, and make role-specific calibration a manager ask.

   Use the available reference material to:
   - Identify what scope and responsibilities look like at the target grade for the user's specific role
   - Assess whether the user's impact notes demonstrate work at that scope
   - Flag specific responsibilities from the target grade that lack evidence in the portfolio
   - Avoid inventing role expectations that are not present in the reference material
   - Label each major expectation as `Strong evidence`, `Partial evidence`, `Missing evidence`, or `Needs manager calibration`

8. **Generate and save a promotion readiness snapshot** in `growth-plan/YYYY-MM-DD-promotion-readiness-snapshot.md`.

   If a snapshot for today's date already exists, do not overwrite it. Add a short suffix before `.md`, such as `YYYY-MM-DD-promotion-readiness-snapshot-2.md` or `YYYY-MM-DD-promotion-readiness-snapshot-g10.md`.

   The saved snapshot should be a dated coaching artifact the user can compare 3-6 months later. Use these sections:

---

### Source and Reference Coverage

Briefly list:
- Role context from `growth-plan/career-profile.md`: role title, job family, current grade, and target grade when known.
- Role-reference coverage label: `Curated reference available`, `Raw reference available`, or `Role reference missing`.
- Reference files used, with a short note on whether each is curated guidance, raw source material, or general performance guidance.
- Portfolio evidence sources used: impact notes, approved feedback files, goals, and manager calibration notes.

Keep this section user-facing and concise. It is a confidence and traceability note, not promotion copy.

### Snapshot Metadata

Include:
- Snapshot date
- Current grade and target grade when known
- Career focus when present in `growth-plan/career-profile.md`
- Prior snapshot coverage: `No prior snapshot found` or a list of prior snapshot files used for comparison
- Evidence counts: real impact notes, eligible feedback entries, goals, manager-calibration entries, and prior snapshots

### Readiness Snapshot

Give a short evidence-based snapshot of what the current portfolio appears to support:
- What looks strong based on captured evidence
- What is still unclear or thin
- What requires manager calibration before the user treats it as promotion-relevant

Do not say the user is ready or not ready for promotion. Use phrasing like "The portfolio currently shows..." and "This needs manager calibration..."

### Historical Readiness Movement

Compare the new snapshot to prior snapshots when available:
- **What strengthened:** new impact notes, feedback, goals progress, metrics, or manager calibration that better support prior gaps
- **What stayed stable:** strengths or evidence patterns that continue to show up
- **What remains open:** prior gaps that still need evidence, feedback, metrics, or manager calibration
- **What changed in the narrative:** how the user's story is clearer, more focused, or more grounded than the prior snapshot

If no prior snapshot exists, write: `No prior readiness snapshot found. This snapshot is the baseline for future comparison.`

Do not infer progress from time passing alone. Progress must come from new captured evidence, changed goals, approved feedback, or manager-calibration notes.

### Strengths to Lean On

Identify 3-5 strengths the user can confidently build around. For each:
- Name the strength
- Cite the impact note, approved feedback, goal, or manager-calibration source
- Explain how it maps to available target-grade expectations or GitHub's behavioral framework

Focus on specific evidence, not generic traits.

### Gaps and Growth Opportunities

Identify specific areas where the evidence is missing, partial, stale, or unclear. For each:
- Name the expectation, behavior, or scope signal
- Label it as `Partial evidence`, `Missing evidence`, or `Needs manager calibration`
- Explain what kind of evidence would make it stronger
- Avoid turning missing portfolio evidence into a performance judgment

### Impact Narrative Opportunities

Coach the user on how to tell the story better. Look for:
- Audience or scale that needs to be clearer
- Outcomes or metrics that are missing or weak
- Trade-offs or decisions that are implied but not explicit
- Collaboration, facilitation, or leadership behaviors that need sharper wording
- Examples that need a stronger through-line from problem to action to outcome

Tie each opportunity to a specific source file or missing evidence pattern.

### Behavioral Evidence (How)

Using approved feedback entries and "How I Worked" sections from impact notes, describe how the user demonstrates GitHub's official behavioral framework:

**Values (How we work, interact, and lead):**
- How we work: Staying close to customers, modeling values, seeking diverse perspectives
- How we interact: Treating others with respect, acting with integrity, taking accountability
- How we lead: Creating clarity, generating energy so others succeed, delivering success

**Leadership Principles:**
- Creating clarity and generating energy so others can succeed, and delivering success

For each value or principle, cite specific evidence from impact notes and approved feedback. Also map to the portfolio competencies (Technical Depth, Breadth, Leadership and Communication, Scope and Impact) to show overlap.

Skip any feedback entries with headings that start with "Example:" or are clearly template placeholders. Only use real, user-created content that is eligible under the `User sharing preference` rules above.

### Role Expectation Map

If a target grade and role reference are available, map the user's evidence to specific target-grade expectations. Use a compact table:

| Expectation | Evidence status | Supporting evidence | Coaching note |
|---|---|---|---|
| [Expectation] | Strong evidence / Partial evidence / Missing evidence / Needs manager calibration | [Source path or "No source yet"] | [What this means or what to strengthen] |

If the role reference is raw or missing, state that the map is lower confidence and should be calibrated with the manager.

### Business Need and Budget Boundaries

Separate these from employee readiness:
- **Business need:** If the portfolio includes evidence that the org needs higher-grade scope, summarize it. If not, say the portfolio does not show business need yet and make it a manager-calibration question.
- **Budget availability:** State that budget availability is not visible from this portfolio and cannot be assessed by AI.

### Manager Calibration Questions

Create 3-5 direct questions for the user's manager. Include questions about:
- Whether specific examples count as target-grade evidence
- Which gaps matter most for the target grade
- Whether the business need exists for higher-grade scope
- What evidence would make the user's impact narrative more convincing
- Timing, nomination process, and any org-specific expectations the repo cannot know

### Optional Promotion Justification Draft

Only include this section when the evidence is strong enough to draft responsibly. If the evidence is thin, write `Not recommended yet` and explain what needs to be strengthened first.

When included, write a draft justification under 2,000 characters that a manager could adapt for Workday. Cover:
- The role and how scope has expanded
- Evidence of sustained impact at the next level (What)
- Evidence of behaviors and leadership at the next level (How)
- Business need for the role at a higher grade, only when there is evidence for it

Do not include budget availability unless the user or manager provided explicit evidence. If budget is unknown, omit it from the draft justification and keep it in the Business Need and Budget Boundaries section.

### Next Evidence Moves

Based on any gaps identified:
- Specific actions to strengthen the portfolio
- Missing feedback to request
- Metrics, audience, or business impact to add to impact notes
- Manager-calibration follow-ups to capture in `growth-plan/manager-calibration.md`

---

9. After saving, tell the user the snapshot path and remind them:

   > This is a readiness coaching artifact, not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. Use it to calibrate strengths, gaps, business need, timing, and any budget dependency with your manager. The strongest promotion cases are built over time, not assembled last minute. Keep capturing impact notes, feedback, manager-calibration notes, and future readiness snapshots as evidence.
