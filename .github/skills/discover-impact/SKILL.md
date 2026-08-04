---
name: discover-impact
description: "Create an impact inbox from source links or pasted work excerpts the user chooses to provide. Candidates stay private until reviewed."
---

You are helping the user discover possible impact signals from sources they choose to provide.

This workflow is optional, consent-based, and candidate-first. It does not replace `/new-impact-note` or `/capture-feedback`. It creates an impact inbox so the user can review possible signals before saving anything as evidence.

## Instructions

1. **Check whether this is the canonical starter repo before doing anything else.**

   If the current repository is `github/career-portfolio-starter`, stop after this response:
   - Tell the user they are in the canonical template repo, not their private career portfolio.
   - Tell them to create a private copy with **Use this template** before adding career evidence or source links.
   - Do not create or edit files.
   - End with: `After you create and open your private copy, run /discover-impact there.`

2. **Explain the boundary briefly.**

   Say that discovery works only from sources the user provides. It creates candidates for review, not final impact notes, feedback entries, manager talking points, reflection claims, or promotion-readiness evidence.

3. **Collect source input.**

   If the user did not provide sources, ask for one of these:
   - Links to specific PRs, issues, discussions, project boards, docs, launch notes, or other work surfaces.
   - Pasted excerpts from comments, changelogs, emails, meeting notes, or stakeholder feedback.
   - Screenshot summaries or copied text from places where work happened.

   Do not ask for broad access to an organization, repo, calendar, mailbox, chat workspace, or project system. Do not scan adjacent sources that the user did not name.

4. **Retrieve GitHub links when possible.**

   When the user provides GitHub PR, issue, discussion, or repo links, use the GitHub CLI (`gh`) to retrieve the source material if `gh` is available and authenticated. Do this before asking the user to paste command output manually.

   Use targeted reads only:
   - For PR links: retrieve title, body, author, state, merged date, changed files, review comments, issue comments, and commits when relevant.
   - For issue links: retrieve title, body, author, state, labels, comments, and linked PRs when relevant.
   - For discussion links: retrieve title, body, author, category, comments, and answers when available.
   - For repo links without a specific issue, PR, discussion, or file path: ask the user which specific items or timeframe to review before running broader searches.

   Keep retrieval scoped to the exact links the user provided. Do not follow adjacent issues, PRs, commits, project boards, or related links unless the user explicitly adds them to the source set.

   If `gh` is unavailable, unauthenticated, lacks access, or cannot retrieve the linked content, explain the specific limitation and ask the user to paste the relevant excerpt or run the exact `gh` command if they want to provide the source manually. A link alone is a source pointer, not proof of impact. Do not summarize impact from inaccessible link metadata.

5. **Create candidate signals from the provided material.**

   For each source, identify possible candidates such as:
   - Shipped work, improvements, decisions, facilitation, or unblocking.
   - Stakeholder comments or behavioral feedback.
   - Repeated themes across comments or updates.
   - Possible metrics, adoption signals, quality signals, risk reduction, speed improvements, or decision clarity.
   - Open questions needed to turn activity into an impact story.

   Do not invent outcomes, audiences, metrics, quotes, dates, or source details. Label uncertain items as `Needs user context`.

6. **Write an impact inbox file.**

   Create `impact-inbox/YYYY-MM-DD-discovery-candidates.md`. If that file already exists, append a short source-set suffix before `.md`, such as `YYYY-MM-DD-pr-candidates.md`, so you do not overwrite prior inbox work. Use this structure:

   ```markdown
   # Impact Discovery Candidates - YYYY-MM-DD

   ## Source Set
   - [Source title or link] - [What the user provided: link, pasted excerpt, screenshot summary, or note]

   ## Candidate Signals

   ### Candidate 1: [Short title]
   - **Source:** [source path, link, or pasted excerpt label]
   - **Signal type:** Impact note candidate / Feedback candidate / Goal evidence / Manager calibration ask / Follow-up question
   - **What happened:** [grounded summary]
   - **Why it might matter:** [outcome, audience, evidence path, or `Needs user context`]
   - **Missing context:** [up to three questions]
   - **Suggested action:** Save as impact note / Save as feedback / Ask follow-up / Keep private / Ignore
   - **Status:** Candidate, not evidence

   ## Review Queue
   - [ ] Decide which candidates to save as impact notes.
   - [ ] Decide which candidates to save as feedback.
   - [ ] Mark private-only candidates.
   - [ ] Ignore low-signal or irrelevant candidates.
   ```

7. **After creating the inbox, summarize next actions.**

   Give the user a short review menu:
   - Save selected candidates as `/new-impact-note`.
   - Save selected comments as `/capture-feedback`.
   - Keep candidate private.
   - Ignore candidate.
   - Add missing context.

8. **Respect privacy and consent.**

   Do not convert candidates automatically. Ask before creating impact notes or feedback entries from the inbox. If feedback reuse preference is unclear, default to `Not decided yet`.

Keep the output practical and grounded. The user should leave with a reviewable candidate list, not a polished career narrative.
