---
name: quarterly-reflection
description: "Generate a quarterly reflection draft by scanning your impact notes and feedback from the current quarter. Synthesizes what you shipped, your biggest impact, feedback themes, and growth areas."
---

You are helping the user write their quarterly career reflection. Follow this procedure step by step.

## Persistence

`/quarterly-reflection` creates a durable private career record at `reflections/FYXX-QN-reflection.md`. It is for the user's portfolio and can later feed `/draft-reflection`, `/prep-1on1`, or `/prep-promotion`, but it is not Workday submission copy.

## Procedure

1. **Determine the current fiscal quarter** based on today's date. GitHub follows Microsoft's fiscal year (July through June):
   - **Q1** = July through September (FY starts July 1)
   - **Q2** = October through December
   - **Q3** = January through March
   - **Q4** = April through June
   - The fiscal year number is the calendar year of June. Example: July 2025 through June 2026 = FY26.
   - Today's date determines the quarter. Example: March 2026 = Q3 FY26.

2. **Scan `impact-notes/`** for all files with date prefixes (YYYY-MM-DD) that fall within the current fiscal quarter's date range. As you read, note impact narrative opportunities: unclear audience, weak outcome, missing metric, unresolved `Questions to Answer Later`, implied trade-offs, or strong work that needs a clearer through-line.

3. **Scan `feedback/`** for feedback files that overlap with the current fiscal quarter.

4. **Read `growth-plan/current-goals.md`** to understand the user's active goals.

5. **Important: Skip example entries.** When reading feedback, goals, or other files, ignore any entries with headings that start with "Example:" or are clearly template placeholders (e.g., "Goal 1: [Title]"). Only use real, user-created content.

6. **Generate a reflection file** at `reflections/FYXX-QN-reflection.md` (e.g., `reflections/FY26-Q3-reflection.md`) with these sections:

   ### What I Shipped
   List each impact note found, with a brief summary and a relative link to the file. If no impact notes were found for the quarter, write: "No impact notes found for this quarter. Consider using `/new-impact-note` to document recent ships."

   ### Biggest Impact
   Based on the metrics and results in the impact notes, identify which ship had the most measurable impact. Explain why in 2-3 sentences. If there are no impact notes, leave as a placeholder: `[Which piece of work had the most measurable impact this quarter? Why?]`

   ### What I Learned
   Leave as a placeholder for the user to fill in: `[What skills did you develop? What would you do differently?]`

   ### Where I Stretched
   Leave as a placeholder for the user to fill in: `[Did you take on new scope, lead something new, or step outside your comfort zone?]`

   ### Challenge and Growth Mindset
   Look for challenges in the impact notes (trade-offs, obstacles, cross-team friction) and infer a growth narrative. If enough detail exists, write a starter describing the situation, what the user did, and what it shaped. If not, leave as a placeholder: `[Describe a recent challenge. What was the situation? What did you do? How did it shape your approach going forward? This maps to Workday Reflections Question 2.]`

   ### Feedback Themes
   Summarize patterns from the feedback file. Map each theme to a career competency (Technical Depth, Breadth, Leadership and Communication, or Scope and Impact). If no feedback file exists for the quarter, write: "No feedback file found for this quarter. Consider using `/capture-feedback` to log feedback as it comes in."

   ### Goal Progress
   For each goal in `current-goals.md`, summarize what impact notes or feedback support progress toward that goal. If no evidence maps to a goal, note that.

   ### Impact Narrative Opportunities
   List 2-4 coaching notes that would make the quarter's story stronger. Focus on missing audience, outcome, evidence, trade-offs, feedback connections, or manager-calibration questions. Do not invent the missing details. If the quarter already has strong evidence, name the strongest story thread and what makes it strong.

   ### Next Quarter Focus
   Leave as a placeholder for the user to fill in: `[Based on what you learned, what are you prioritizing next?]`

6. After generating, remind the user:

   > Review the pre-filled sections, then fill in the placeholder sections with your personal reflections. This is your voice, not AI's.
