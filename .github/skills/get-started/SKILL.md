---
name: get-started
description: "Get oriented in your career portfolio. Scans what you've set up so far and tells you exactly what to do next."
---

You are onboarding the user into their career portfolio repo. This is an interactive walkthrough, not a wall of text. Follow this procedure.

## Instructions

1. **Check whether this is the canonical starter repo before doing anything else.**

   If the current repository is `github/career-portfolio-starter`, stop after this response:
   - Tell the user they are in the canonical template repo, not their private career portfolio.
   - Tell them to use **Use this template** to create their own private repo before adding career evidence.
   - Do not scan the repo state.
   - Do not ask career profile questions.
   - Do not create or edit files.
   - End with: `After you create and open your private copy, run /get-started there.`

2. **Welcome the user** with a brief intro (3-4 sentences max):
   - This repo should be the user's **private copy** of the Career Portfolio Starter template.
   - It is for tracking work impact, feedback, goals, manager conversation prep, Workday Reflections, manager reflection replies, and promotion readiness evidence at GitHub.
   - The user owns this repo as a private career workspace. Sharing should happen through selected excerpts or talking points the user chooses.
   - They can use the same slash commands in VS Code, Codespaces, or Copilot CLI when started from the private repo root.
   - If they are still in the canonical template repo, tell them to stop and create a private copy with **Use this template** before adding career evidence.

3. **Scan the repo state** to understand what's been set up and what's still templated:

   Check each of these:
   - **Career profile:** Read `growth-plan/career-profile.md` if it exists. Determine whether name, role title, job family, current grade, and target grade are filled in or still placeholder. Also note `Current career focus` if the user has filled it in.
   - **Impact notes:** Are there any files in `impact-notes/` beyond `TEMPLATE.md`? Count them. Files with titles starting with "Example:" are shipped with the repo and should NOT be counted as real impact notes.
   - **Goals:** Read `growth-plan/current-goals.md`. Are the goals still placeholder (e.g., "Goal 1: [Title]") or have they been filled in? Skip any section headed with "Example:".
   - **Feedback:** Read the most recent file in `feedback/`. Does it contain any real feedback entries beyond the examples?
   - **Impact inbox:** Are there any dated candidate files in `impact-inbox/`? Ignore `README.md`. Count candidate files only as candidates, not saved evidence.
   - **Reflections:** Are there any files in `reflections/` with real content (not just the example template)?
   - **Manager calibration:** Read `growth-plan/manager-calibration.md`. Are there any real entries beyond the example?

4. **If career profile is still placeholder, fill it in interactively:**

   If `growth-plan/career-profile.md` still has placeholder values (e.g., `[Your name]`), do this before showing the status table:

   - Tell the user: "Let's set up your career profile first. This makes every other command work better."
   - Ask all five questions in a single message (do NOT ask them one at a time):
     1. What's your name?
     2. What's your role title? (e.g., Senior Program Manager)
     3. What's your job family? (e.g., Business Program Management, Product Operations, Technical Program Management, Developer Advocacy, Technical Writing, Product Management, Product Design, Design Engineering, User Research)
     4. What's your current grade/level? (e.g., P4 / G9). If you do not know it, check Workday: open your profile, go to Job, and look for job profile, level, grade, or compensation grade details. If you still cannot find it, write "unknown" and come back to it later.
     5. What's your target grade/level? (e.g., P5 / G10)
   - Optionally ask: "What career moment are you using this repo for right now? (e.g., regular impact tracking, manager 1:1s, reflection season, promotion prep, or not sure yet). Feel free to skip this one."
   - If the user answers this optional question, save the answer in `growth-plan/career-profile.md` as `Current career focus`. Use it only to tailor the next-step recommendation and command guidance. Do not treat it as a promotion timeline, manager commitment, or readiness signal.
   - **Stop and wait for the user's response.** Do not continue with the status table or recommendations until they reply.
   - Once they answer, update `growth-plan/career-profile.md` with their responses and confirm briefly: "Career profile saved."
   - Then continue with step 5.

   If the career profile is already filled in, skip this step entirely.

5. **Report the repo status** as a quick checklist:

   | Area | Status |
   |---|---|
   | Career profile | Set up / Still placeholder |
   | Impact notes | X note(s) found / No notes yet |
   | Goals | Set up / Still placeholder |
   | Feedback | X entries found / No entries yet |
   | Impact inbox | X candidate file(s) found / No candidates yet |
   | Reflections | X reflection(s) found / None yet |
   | Manager calibration | X entries found / No entries yet |

6. **Recommend the single most valuable next step** based on what's missing, in this priority order. Recommend exactly one primary next action, not a menu:
   - No impact notes? "Start with `/new-impact-note`. Pick something you shipped, improved, decided, facilitated, or unblocked recently and describe it in your own words. Impact notes are the foundation for 1:1 prep, reflections, goals, and readiness calibration."
   - Impact notes exist but goals are placeholder? "Set your goals next. Open `growth-plan/current-goals.md` and fill in 2-3 SMART goals for this quarter. Or run `/update-goals` to get suggestions based on your existing impact notes."
   - Both exist but no feedback? "Next time someone gives you kudos in Slack, a PR comment, or a meeting, run `/capture-feedback` and paste it in."
   - The user has source links or pasted work excerpts they want reviewed? "Run `/discover-impact` to create an impact inbox of candidate signals. Review the candidates before saving any as impact notes or feedback."
   - All three exist but no reflection? "You have enough to generate your first reflection. Try `/quarterly-reflection` for a personal draft, or `/draft-reflection` to generate your Workday Reflection."
   - Everything populated? "You're in great shape. Run `/prep-1on1` before your next manager meeting to pull it all together."

   Use `Current career focus` to tailor the onboarding path and the explanation for the recommended next step:

   - `regular impact tracking`: frame `/new-impact-note` as the core habit and `/capture-feedback` as the companion habit.
   - `manager 1:1s`: if impact notes exist, recommend `/prep-1on1`; otherwise recommend `/new-impact-note` and explain that it creates source material for better 1:1 prep.
   - `reflection season`: if impact notes, goals, and feedback exist, recommend `/draft-reflection` or `/quarterly-reflection`; otherwise recommend the missing evidence step first and explain that it strengthens the reflection.
   - `promotion prep`: if career profile, goals, impact notes, and manager calibration exist, recommend `/prep-promotion`; otherwise recommend the missing setup or evidence step first and explain that it supports readiness calibration.
   - `not sure yet`: recommend `/new-impact-note` as the safest first step.

   Do not let career focus override the evidence-readiness order. Use it to explain why the recommended next step matters. For example, if the user chose "reflection season" but has no impact notes, still recommend `/new-impact-note` and explain that reflection drafts get stronger once a few impact notes exist.

7. **Show the command cheat sheet** grouped by when to use them:

   **If you're unsure what to run:**
   - `/help` : Show the full command list and recommended workflow
   - `/update-starter` : Pull the latest starter-owned workflow files without overwriting personal career evidence
   - `examples/README.md` : Browse synthetic examples if you want to see safe patterns before adding your own evidence

   **After you ship or improve something:**
   - `/new-impact-note` : Capture a quick impact note from what you shipped, improved, decided, facilitated, or unblocked
   - `/capture-feedback` : Save feedback while the context is fresh. You can paste text, summarize a screenshot, attach a screenshot if your Copilot client supports it, paste a PR or issue comment, or capture a meeting paraphrase.
   - `/discover-impact` : Optional candidate discovery from user-provided source links or pasted excerpts. It creates an impact inbox for review, not final evidence.

   **On a regular rhythm:**
   - `/prep-1on1` : Generate private source notes, manager-safe talking points, and calibration asks before your next manager 1:1
   - `/update-goals` : Check your goals against recent impact notes and feedback

   **At key career moments:**
   - `/quarterly-reflection` : Draft a personal quarterly reflection
   - `/draft-reflection` : Generate your official Workday Reflection (3-question format)
   - `/manager-reflection-reply` : For people managers, draft one Workday manager response to a direct report's Reflection plus role reference, GitHub evidence, and peer feedback grounding checks
   - `/prep-promotion` : Calibrate promotion readiness from your portfolio evidence, goals, and role expectations

8. **Two quick setup checks:**
   - Remind them: "Make sure this is your **private copy** of the template, not the canonical starter repo. This is your personal career record."
   - Recommend: "For the best experience, use VS Code, Codespaces, or Copilot CLI from the private repo root in a mode that lets Copilot read and create files. The same slash commands work in each interface."
   - Remind them: "Synthetic examples are patterns only. Do not copy synthetic details into your real career artifacts."
   - Support path: "Open canonical repo issues for bugs or feature requests. Slack @hemory directly for usage questions. Do not paste private career evidence into public issues or broad Slack channels."

9. Keep the entire output conversational and scannable. No section should be longer than a few sentences. The goal is to get them to their first action quickly.
