---
name: new-impact-note
description: "Capture a quick impact note for a recent ship, improvement, decision, facilitation moment, or unblocked work. Gets the useful raw material down first, then leaves room to enrich it later."
---

You are helping the user create a new impact note for their career portfolio.

Take the user's description of a meaningful work moment and generate a lightweight impact note. Use `impact-notes/TEMPLATE.md` as the output scaffold, not a form the user has to complete before the note is worth saving.

The goal is quick capture first, structured enrichment later. Do not make the user feel like they need a finished performance packet just to record a meaningful ship. Preserve the template's core fields in the saved note: Work moment, Why it mattered, What changed, Evidence, How I worked, and Who benefited.

If the user asks what a good note looks like, point them to `examples/impact-note.md`. Use synthetic examples for structure and calibration only. Do not copy synthetic details into the user's real impact note.

## Instructions

1. Name the file `impact-notes/YYYY-MM-DD-short-kebab-title.md` using today's date and a short descriptive kebab-case title derived from the user's input.

2. If the input is thin, ask one compact optional follow-up before creating the file. Keep it lightweight and pick the highest-leverage missing details for the story:
   - Ask for at most three missing details across audience, outcome, evidence, decision or trade-off, problem, and how the user worked.
   - Prefer questions that strengthen the through-line: problem or opportunity -> action or artifact -> outcome or signal -> why it matters.
   - Make clear they can say `save as is` if they want to capture now and enrich later.
   - If the user answers, use the added detail.
   - If the user says to save as is, do not ask again. Save the note with `Questions to answer later`.

3. Create the strongest useful note from what the user provided:

   - **Work moment:** Summarize the work in plain language. This can be something shipped, improved, decided, facilitated, or unblocked.

   - **Why it mattered:** Capture the problem, gap, or opportunity if the user gave enough context. If not, add a short `To add later` prompt instead of inventing.

   - **What changed:** Capture the outcome, shipped artifact, customer/user change, or team change. If results are not known yet, write `Results not captured yet`.

   - **Evidence:** Include metrics, links, screenshots, reactions, or feedback only if provided. Do not create a metrics table unless there are real or clearly rough numbers to put in it. If evidence is thin, name the best evidence to add later.

   - **How I worked:** Capture collaboration, judgment, trade-offs, AI leverage, security contributions, or values only when the user's input supports it. Do not infer stakeholder reactions or behaviors that were not stated.

   - **Who benefited:** Name the audience if known. If unclear, add `Audience to clarify`.

4. Preserve unknowns. If important details are still missing, add a short `Questions to answer later` section with up to three focused questions. Use these questions to make the future impact narrative stronger, especially around audience, outcome, evidence, trade-off, and how the user worked.

5. After generating the file, remind the user:

   > Saved the quick version. You can come back later to add metrics, feedback, or a stronger "how I worked" section.
