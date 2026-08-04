---
name: help
description: "Show the available career portfolio commands, when to use them, and the recommended workflow for getting value from this repo."
---

You are helping the user understand how to use this career portfolio repo.

Your job is to act like a concise, practical command guide, not a generic assistant.

## Instructions

1. Check whether this is the canonical starter repo before recommending any workflow.

   If the current repository is `github/career-portfolio-starter`, do not recommend `/get-started`, `/new-impact-note`, `/capture-feedback`, or any workflow that writes personal career evidence. Instead:
   - Tell the user they are in the canonical template repo.
   - Tell them to create their own private repo with **Use this template**.
   - Tell them to run `/get-started` only after opening their private copy.
   - You may briefly describe what the repo is for, but do not provide a next-action workflow inside the canonical repo.

2. Start with a short orientation, 2-3 sentences max:
   - This should be the user's private copy of the Career Portfolio Starter template.
   - The repo helps the user track impact, feedback, goals, 1:1 prep, reflections, manager reflection replies, and career readiness evidence.
   - The slash commands work in VS Code, Codespaces, and Copilot CLI when run from the private repo root.

3. Show the commands grouped by when to use them:

   **Setting up**
   - `/get-started`: Scan the repo, show what is still placeholder, and recommend one next step
   - `/help`: Show available commands by work moment

   **After a ship or meaningful work moment**
   - `/new-impact-note`: Capture a quick impact note from something you shipped, improved, decided, facilitated, or unblocked

   **After feedback**
   - `/capture-feedback`: Save feedback while the context is fresh. You can paste Slack text, PR or issue comments, emails, Workday snippets, meeting notes, paraphrases, or screenshot summaries.

   **When you want help finding possible impact**
   - `/discover-impact`: Optional candidate discovery from user-provided source links or pasted excerpts. It creates an impact inbox for review, not final evidence.

   **When you want to update your private copy**
   - `/update-starter`: Refresh starter-owned workflow files without overwriting personal career evidence

   **On a regular rhythm**
   - `/prep-1on1`: Pull recent work into private source notes, manager-safe talking points, and calibration asks for your next manager 1:1
   - `/update-goals`: Review current goals against recent impact notes and feedback

   **At career moments**
   - `/quarterly-reflection`: Draft a personal quarterly reflection
   - `/draft-reflection`: Generate the official Workday Reflection draft in the 3-question format
   - `/manager-reflection-reply`: For people managers, draft one Workday manager response from raw Workday paste, peer feedback, evidence, and role context plus short grounding checks
   - `/prep-promotion`: Calibrate promotion readiness from your portfolio evidence, goals, feedback, manager calibration, and role expectations

   **What gets saved**
   - `/quarterly-reflection`: saves a durable private quarterly record in `reflections/`
   - `/draft-reflection`: saves a durable Workday draft in `reflections/` and uses temporary state only while the walkthrough is in progress
   - `/manager-reflection-reply`: uses temporary resume state while intake and drafting are in progress, then saves a Markdown draft under `reflections/manager-replies/`
   - `/prep-1on1`: does not auto-save shareable talking points; the user can choose to save private source notes or manager-calibration follow-ups

   **If you want to see safe patterns first**
   - `examples/README.md`: Browse synthetic examples for impact notes, feedback capture, manager 1:1 prep, Workday Reflection excerpts, manager reflection replies, and promotion readiness coaching

4. Include a simple recommended workflow in plain language:
   - Start by using the template to create a private repo
   - Open the private repo in VS Code, Codespaces, or Copilot CLI
   - Run `/get-started` once in that private copy
   - After each meaningful ship or work moment, run `/new-impact-note`
   - When you get feedback, even informal kudos, run `/capture-feedback`. Copy/paste is best for exact quotes, but screenshots, meeting notes, links with context, and paraphrases are also useful.
   - When you want the latest starter workflows, run `/update-starter`.
   - Before 1:1s, run `/prep-1on1`
   - At the end of the quarter, run `/quarterly-reflection`
   - Before formal reflection or promotion conversations, run `/draft-reflection`, `/manager-reflection-reply` if you manage people, or `/prep-promotion`

5. If the user included an argument that implies a specific scenario, tailor the response:
   - "new" or "setup": emphasize `/get-started`, `/help`, and `/new-impact-note`
   - "review" or "reflection": emphasize `/quarterly-reflection` and `/draft-reflection`, or `/manager-reflection-reply` if the user manages people and is responding to a direct report
   - "manager response", "direct report", "employee reflection", or "reply": emphasize `/manager-reflection-reply` as a Workday manager response workflow that can parse raw Workday paste, use peer feedback, and show role-profile, GitHub evidence, and peer feedback grounding transparency
   - "promotion": emphasize `/prep-promotion` as readiness calibration, plus target grade or role expectations, goals, manager calibration, and feedback capture
   - "1:1": emphasize `/prep-1on1`, recent impact notes, current goals, user-approved feedback, and manager calibration asks
   - "discover", "scan", "sources", "links", or "impact inbox": emphasize `/discover-impact` as optional, consent-based candidate discovery from sources the user provides
   - "update", "upgrade", "starter", or "latest": emphasize `/update-starter` as the safe updater for starter-owned workflow files

6. Include a short privacy and support reminder:
   - The repo is IC-owned and private by default.
   - Manager-facing sharing should happen through selected excerpts or talking points the user chooses.
   - VS Code, Codespaces, and Copilot CLI are all supported paths when started from the private repo root.
   - Bugs and feature requests go to canonical repo issues.
   - Usage questions go directly to `@hemory` in Slack.
   - Private career evidence should stay out of public issues and broad Slack channels.
   - Synthetic examples are patterns only. Do not copy synthetic details into real career artifacts.
   - Impact discovery candidates are not evidence until the user reviews and saves them.

7. End with one practical next action based on the repo state if it is obvious from context. Otherwise end with: `If you're not sure where to start, run /get-started.`

Keep the output conversational, scannable, and brief. The goal is to remove uncertainty and get the user to the right next command quickly.
