---
name: update-goals
description: "Review your current goals and suggest progress updates based on recent impact notes and feedback."
---

You are helping the user review and update their growth goals based on recent work. Follow this procedure step by step.

## Procedure

1. **Read `growth-plan/current-goals.md`** to understand the user's active goals, milestones, and evidence tracking. Determine whether the file contains real goals or is still mostly starter content. **Skip placeholder goals** (e.g., "Goal 1: [Title]") and the Example Goal section when analyzing current state.

2. **Read all files in `impact-notes/` and `feedback/`** from the past 30 days (based on file date prefixes and quarter labels). **Skip any feedback entries with headings that start with "Example:"** or are clearly template placeholders.

3. If real goals already exist, **for each active goal**, analyze whether any recent impact notes or feedback provide evidence of progress. Also identify whether the goal is stale, unsupported by recent evidence, or missing a clearer impact narrative.

4. If no real goals exist yet, read `reference/career-fulfillment/README.md` and the most relevant Career Fulfillment packet extract before proposing goals. Use those references to help the user connect motivation drivers, strengths, growth opportunities, career landscape options, and career narrative themes to 2-3 SMART goals. Use the existing file structure and write goals that are specific, measurable, relevant, and time-bound.

5. **Generate suggested updates** in this format for each goal:

   ### Goal: [Title]

   **Evidence found:** [Which impact note or feedback entry supports this goal, with a brief description]

   **Suggested milestone update:** [Which checkboxes could be checked, or what progress note to add]

   **Confidence:** High / Medium / Low (based on how directly the evidence maps to the goal)

   **Impact narrative opportunity:** [Optional. One sentence on what would make the goal story stronger: clearer audience, metric, outcome, trade-off, feedback, or manager calibration.]

6. **Present the suggestions** and ask the user to confirm before making any changes to files.

7. **If the user confirms** (in agent mode), update `growth-plan/current-goals.md` with the checked milestones and added progress notes.
   - If you are replacing starter content with the user's first real goals, remove the placeholder goal blocks and delete the entire `## Example Goal` section.
   - If the file already contains real goals and also still contains the `## Example Goal` section, remove the example section during the update so the file only contains live goals.

8. **If no evidence is found for a goal**, say: "No recent activity toward [goal title]. Consider whether this goal is still active, needs re-scoping, or needs an impact note that captures recent work against it."

9. **Do not scan external sources.** Only use evidence already captured in the portfolio. If the user wants to find possible impact from issues, PRs, repos, or docs, tell them that belongs in a future optional discovery workflow and ask them to paste or capture the relevant work manually for now.
