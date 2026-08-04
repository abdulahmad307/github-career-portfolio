---
name: prep-1on1
description: "Prepare manager-safe talking points and calibration asks for your next 1:1 from selected impact notes, feedback, goals, and open questions."
---

You are helping the user prepare for their next manager 1:1. Follow this procedure step by step.

If the user asks what good manager prep looks like, point them to `examples/prep-1on1.md`. Use synthetic examples for structure and calibration only. Do not copy synthetic details into the user's real 1:1 prep.

## Persistence

`/prep-1on1` is meeting-specific prep, not a durable reflection. Do not auto-save shareable talking points or manager asks, because they may be tactical, time-bound, or worded for one conversation only.

After showing the prep, offer explicit save choices:

1. Save only the `Private Source Notes` section to `growth-plan/1on1-prep/YYYY-MM-DD.md`.
2. Append follow-up decisions, manager alignment, or action items to `growth-plan/manager-calibration.md`.
3. Do not save anything.

Only save when the user chooses one of those options. Never save feedback substance marked `Keep private`, and do not change any saved `User sharing preference` unless the user explicitly asks.

## Procedure

1. **Read the 3 most recent files in `impact-notes/`** (by the YYYY-MM-DD date prefix in filenames). If fewer than 3 exist, read all of them. Skip `TEMPLATE.md`, any files whose titles start with `Example:`, and clearly placeholder content.

   From each usable impact note, extract:
   - The ship, project, decision, or artifact.
   - The clearest outcome, metric, behavior change, or stakeholder signal.
   - Any unresolved items from sections like `Questions to Answer Later`, `To add later`, or open action items.
   - Any impact narrative opportunity: unclear audience, thin metrics, weak outcome, missing trade-off, strong but disconnected feedback, or a story that needs a clearer problem -> action -> outcome through-line.
   - The source file path, so the user can trace each talking point back to private evidence.
   - Treat any `Kudos and Feedback` section inside an impact note as feedback substance, not general impact evidence. Do not quote, summarize, paraphrase, theme, or move that content into shareable talking points unless the user explicitly approves it for this 1:1 prep. If it looks useful, mention privately that the impact note contains feedback to review, using only the file path and section name.

2. **Read the most recent feedback file in `feedback/`** (by quarter and year in the filename). **Skip any entries with headings that start with "Example:"** or are clearly template placeholders.

   **Respect user sharing preference before using feedback.**
   - Entries marked `Keep private`: do not include, summarize, quote, paraphrase, or turn into themes for the manager-facing output.
   - Entries marked `Okay to reuse in manager prep`: eligible for the 1:1 prep output.
   - Entries marked `Ask me before using` or `Not decided yet`: do not use automatically. Before generating the final prep document, show only the entry heading, source, date, and context, then ask which entries the user wants included.
   - Entries with no `User sharing preference` field are legacy entries. Treat them as `Not decided yet`.
   - If the user selects any entries during that approval prompt, treat those entries as **approved for this 1:1 prep only**. They are eligible for the final prep document, but their saved file value remains unchanged unless the user explicitly asks you to update it.
   - If the user does not choose any feedback entries, generate the prep from impact notes, goals, and manager-calibration notes only.

3. **Read `growth-plan/current-goals.md`** to understand the user's active goals. **Skip placeholder goals** (e.g., "Goal 1: [Title]") and the Example Goal section.

4. **Read `growth-plan/manager-calibration.md`** to understand recent manager alignment, prior calibration questions, and open action items. Skip starter placeholders and examples, including the `[Date] -- [1:1 / Career Conversation / Review]` template entry, bracketed placeholder text, placeholder unchecked action items, and the `Example:` block. Route real prior open action items or alignment questions into `Manager Asks` if they need manager input, or `Optional Follow-Up` if they are user-owned next steps after the meeting.

5. **If the user asks for broader career development, career fulfillment, role exploration, or career narrative support**, read `reference/career-fulfillment/README.md` and the relevant packet extract before generating talking points. Use those references to suggest career conversation questions, but keep the repo IC-owned and user-controlled.

6. **Generate a concise 1:1 prep document** as markdown output (do not save it to a file automatically) with these sections:

   ### Private Source Notes
   A short user-only section that names the private evidence used, with source file paths. This section is for the user, not for manager copy/paste.
   - Include impact note file paths, active goals, manager-calibration notes, and feedback entries that were explicitly allowed for manager prep.
   - Do not quote or summarize feedback marked `Keep private`.
   - For feedback marked `Ask me before using`, `Not decided yet`, or missing a sharing preference, stop before this step and complete the approval prompt in step 2. After the user approves entries, treat them as approved for this 1:1 prep only.
   - If any evidence is weak, stale, or missing metrics, flag that as a private prep note instead of turning it into a manager-facing claim.
   - Include up to three private impact narrative opportunities from the evidence, such as "audience needs clarification," "metric missing," "trade-off implied but not stated," or "strong feedback may connect to this impact note if the user approves."

   ### Shareable Talking Points
   2-4 manager-safe bullets the user can say or paste into a 1:1 agenda. Pull from impact notes, opted-in feedback, goals, and open questions. Keep each bullet to 1-2 sentences and avoid private source details unless the user explicitly opted in.

   ### Goal Check-In
   Brief status on each active goal, connected to recent impact notes, opted-in feedback, or manager calibration notes. If goals are still placeholder, say that and recommend updating goals after the 1:1.

   ### Manager Asks
   2-4 direct questions or calibration asks. These should help the user get manager input, not ask the manager to inspect the private repo. Good asks include:
   - "Does this evidence support the growth area we discussed?"
   - "Is this the right level of scope for my target role?"
   - "What would make this example stronger for reflection or readiness calibration?"
   - "What should I stop, start, or continue based on this work?"
   - Any prior manager-calibration action item that still needs manager input.

   ### Optional Follow-Up
   1-2 next steps the user can take after the 1:1, such as updating `growth-plan/manager-calibration.md`, enriching a specific impact note, connecting approved feedback to an impact story, or changing a goal.

7. **Keep the output concise and manager-safe.** The shareable sections should fit in a manager's 5-minute pre-read. The private source notes can be slightly more explicit, but should still be short.

8. **If no impact notes exist yet**, tell the user: "You don't have any impact notes yet. Try `/new-impact-note` to create your first one, then come back here."

9. **Reinforce the sharing boundary.** End with a short reminder: "Keep this repo as your private career workspace. Bring only the selected excerpts, talking points, or asks you choose into the conversation."

10. **Offer persistence choices.** Ask whether the user wants to save anything:
    - Save only private source notes to `growth-plan/1on1-prep/YYYY-MM-DD.md`
    - Append follow-up decisions or manager alignment to `growth-plan/manager-calibration.md`
    - Do not save anything

    If saving private source notes, include only source paths, evidence gaps, approved-feedback references by heading/source, and narrative opportunities. Do not include shareable talking points or manager asks. If appending to manager calibration, save only the user's chosen follow-up decisions, alignment signals, or action items.
