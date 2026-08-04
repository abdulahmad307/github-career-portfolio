# Copilot Instructions for Career Portfolio Repo

## Repo Purpose

This repo is a private career portfolio created from the Career Portfolio Starter template. The user tracks their work impact, feedback received, quarterly reflections, manager conversation prep, manager reflection replies, promotion readiness evidence, and growth goals. Everything here is personal and first-person unless the user is running a people-manager workflow for a direct report. Treat all user-created content as confidential career documentation.

If the user appears to be working in the canonical `github/career-portfolio-starter` template repo, do not ask them to add personal career evidence. Tell them to create a private copy with **Use this template** first.

## Interface Support

This repo supports VS Code, Codespaces, and Copilot CLI.

- In VS Code, Codespaces, and Copilot CLI, users can run the repo slash commands from the private repo root.
- Do not tell Copilot CLI users that they must switch to VS Code for core maintenance workflows.
- If a slash command is unavailable in a specific client, map the user's natural-language request to the matching workflow and proceed from the repo files.
- Preserve the same privacy, consent, source-grounding, and candidate-review rules in every interface.

## Impact Note Structure

Impact notes should be quick to capture and easy to enrich later. Use `impact-notes/TEMPLATE.md` as a scaffold, not a rigid form. Do not block the user from saving a note because metrics, feedback, audience, or "how I worked" details are missing.

Every impact note should capture as much of this as the user already knows:

1. **Work moment:** The shipped work, improvement, decision, facilitation moment, unblocked work, project, or artifact.
2. **Why it mattered:** The problem, gap, or opportunity.
3. **What changed:** The outcome, result, or visible shift.
4. **Evidence:** Metrics, links, screenshots, reactions, or feedback when available.
5. **How I worked:** Collaboration, facilitation, decisions, trade-offs, values, AI leverage, or security contributions when stated.
6. **Who benefited:** The audience or stakeholders, if known.

Impact note files are named `YYYY-MM-DD-short-kebab-title.md` and live in the `impact-notes/` folder.

## Writing Guidelines

- Be specific over vague. "All 260 Product Org Hubbers" is better than "the team."
- Metrics should use before/after tables when real or clearly rough numbers are available.
- Separate what changed from the supporting evidence.
- Capture trade-offs or judgment in "How I worked" when the user provides that context.
- Capture feedback the day it happens. Copy-paste beats waiting.

## Impact Narrative Quality

Use the portfolio's existing files to coach stronger impact narratives. This is proactive guidance inside the private repo, not external scanning.

When reviewing impact notes, feedback, goals, manager calibration, 1:1 prep, reflections, or promotion readiness material, look for:

- **Audience clarity:** Who benefited, at what scale, and why that audience matters.
- **Outcome strength:** What changed because of the work. Prefer behavior change, adoption, quality, speed, risk reduction, cost, revenue, customer signal, or stakeholder decision clarity over activity-only descriptions.
- **Evidence quality:** Metrics, links, feedback, screenshots, before/after notes, or clearly labeled rough signals.
- **Decision and trade-off clarity:** What the user chose, what they did not choose, and why that judgment mattered.
- **How the user worked:** Collaboration, facilitation, leadership, clarity creation, diverse perspectives, AI leverage, security, or values in action when stated.
- **Story through-line:** Problem or opportunity -> action or artifact -> outcome or signal -> why it matters.

Do not invent missing details. If the story is thin, name the missing evidence as a coaching opportunity and ask for or suggest the smallest useful next enrichment. Treat unresolved `Questions to Answer Later`, `To add later`, weak metrics, unclear audience, stale goals, strong disconnected feedback, and manager-calibration open asks as signals to surface for user review.

Do not turn narrative opportunities into manager-ready claims automatically. The user decides what becomes evidence, what stays private, and what is shared.

## Optional Impact Discovery Boundaries

`/discover-impact` is an optional source-intake workflow, not default monitoring. Use it only when the user asks for discovery help or provides specific sources to review.

Discovery can organize:

- User-provided links to repos, issues, pull requests, discussions, project boards, docs, or other work surfaces.
- Pasted source excerpts, screenshot notes, comments, changelog snippets, meeting notes, or summaries.
- Candidate signals such as shipped work, decisions, facilitation, unblocking, stakeholder comments, unresolved asks, repeated themes, possible metrics, and follow-up questions.

Discovery must not:

- Scan broad repos, organizations, calendars, messages, or work systems by default.
- Follow links beyond the exact sources the user provided.
- Convert candidates into impact notes, feedback entries, manager talking points, reflection claims, or readiness evidence without user approval.
- Treat activity as impact without an outcome, audience, or evidence path.

Save discovery output as an impact inbox candidate list. The user decides whether each candidate becomes an impact note, feedback entry, follow-up question, ignored item, or private-only note.

## Career Competencies

When mapping feedback or impact to career growth, use these four portfolio competencies:

- **Technical Depth:** Deep expertise, sound technical decisions
- **Breadth:** Handling diverse problems, cross-team work
- **Leadership and Communication:** Moving teams forward, influencing without authority
- **Scope and Impact:** Work that mattered, measurable outcomes

## GitHub's Official Behavioral Framework

GitHub's performance system evaluates impact as **What (results) + How (behaviors).** When writing content for Workday Reflections or promotion cases, also map to these official frameworks:

**Leadership Principles:**
- Create clarity and generate energy so others can succeed, and deliver success

**Values (How we work, interact, and lead):**
- How we work: Stay close to customers, model our values, seek diverse perspectives
- How we interact: Treat others with respect, act with integrity, take accountability
- How we lead: Create clarity, generate energy, deliver success

**Manager Fundamentals (people managers only):**
- Model culture, coach for performance, care for individuals

The portfolio competencies and GitHub's official frameworks overlap. Technical Depth maps to delivering results. Breadth maps to diverse perspectives and cross-team work. Leadership and Communication maps to Leadership Principles. Scope and Impact maps to delivering business outcomes.

## Career Stage Reference Layer

Use `reference/career-stage-profiles/curated/README.md` as the first-stop index of available GitHub career stage profile summaries. The files in `reference/career-stage-profiles/curated/` are curated summaries for role-specific evidence mapping. Product Org extensions that were not part of the generated 63-profile batch live under `reference/career-stage-profiles/curated/product-org/`. The files directly under `reference/career-stage-profiles/` and legacy `.txt` Product Org extracts directly under `reference/` are raw extracts and should be used only as fallbacks for exact wording, full responsibility tables, or manager calibration.

When aligning a user's evidence to a role:

1. Read `growth-plan/career-profile.md` for job family, current grade, and target grade.
2. Use `reference/career-stage-profiles/curated/README.md` to find and read the matching curated summary, including any linked Product Org extension summary.
3. Read the matching raw profile only if the curated summary is missing needed detail, the user asks for exact wording, or manager calibration needs the source text.
4. If no matching curated or raw profile exists, read `reference/career-stage-profiles-summary.md`. If the job family is listed there, read the matching raw text file under `reference/` and label coverage as `Legacy Product Org reference available`.
5. If no matching reference exists in either layer, say the role-specific reference is missing and use only general GitHub performance guidance.
6. Do not invent role expectations that are not supported by the reference files.

## Career Fulfillment Reference Layer

Use `reference/career-fulfillment/README.md` as the index of available Career Fulfillment workshop packet extracts. These packets cover career vision, motivation drivers, job profile reflection, strengths, growth opportunities, career landscape exploration, networking, and career narrative building.

Use these references when helping users:

- Clarify career fulfillment goals that are broader than promotion.
- Create or revise growth goals.
- Prepare career conversation questions.
- Connect motivation drivers to development actions.
- Draft a career story or narrative.

Treat the packet extracts as source material, not as instructions to copy verbatim. Do not imply that Career Fulfillment replaces promotion, Workday Reflections, or manager calibration.

## Synthetic Examples

The `examples/` folder contains synthetic calibration material for impact notes, feedback capture, manager 1:1 prep, Workday Reflection excerpts, manager reflection replies, and promotion readiness coaching.

Use these files only to understand structure, specificity, privacy boundaries, and output shape. Do not treat synthetic examples as evidence about the user. Do not cite them as user accomplishments. Do not copy synthetic names, scenarios, metrics, source paths, or wording into real user artifacts.

When a user asks for an example, point them to the relevant file in `examples/`. When generating real career content, start from the user's captured portfolio evidence, user-provided context, and approved references, not from synthetic example details.

## Updater-Managed Starter Files

The updater can replace starter-owned workflow files like repo instructions, skills, the impact-note template, reference material, synthetic examples, version metadata, changelog, and the updater script itself. It does not overwrite impact notes, feedback, reflections, goals, career profile, or manager calibration history.

## Feedback Format

Feedback entries should be quick to save and clear about what is known. They should include:

- **From:** Name, Role
- **Date:** The date the feedback was received
- **Source:** Slack, PR comment, issue comment, email, meeting, screenshot, Workday, document comment, other source context, or `Source to add later`
- **Context:** What project or situation the feedback relates to
- **Feedback type:** Exact quote, paraphrase, screenshot note, or summary
- **Feedback:** The feedback text as a blockquote for exact wording, or plain text for paraphrases, screenshot notes, and summaries
- **Signal strength:** High (specific and behavioral), Medium (somewhat specific), or Low (surface-level praise)
- **Why it might matter later:** One line on likely reuse for a 1:1, reflection, promotion, goals update, stakeholder pattern, or relationship context
- **User sharing preference:** `Not decided yet`, `Keep private`, `Okay to reuse in manager prep`, or `Ask me before using`. Default to `Not decided yet` unless the user explicitly says otherwise.

Support feedback from copy/pasted text, screenshots, meeting notes, paraphrases, links with context, PR or issue comments, emails, Workday snippets, and document comments. Copy/paste is best for exact wording. Screenshots should be labeled as screenshot notes unless the visible text can be read reliably. Meeting notes and user summaries should be treated as summaries or paraphrases, not quotes.

Prioritize feedback that is specific, behavioral, and tied to outcomes or decisions, but still save informal praise. Label signal strength without shaming the entry. Preserve source context as a receipt for the user, not as a system decision about what should be shared. The capture habit matters because weak signals can become useful patterns over time.

## Manager 1:1 Prep

`/prep-1on1` should help the user turn private career evidence into selected, manager-safe conversation material. The output must separate:

- **Private source notes:** User-only evidence trace with source files, weak spots, missing context, opted-in feedback references, and open questions.
- **Shareable talking points:** Short bullets the user can safely bring to a manager conversation.
- **Manager asks:** 2-4 direct calibration questions or asks tied to recent work, active goals, feedback the user opted into reusing, and prior manager-calibration notes.

Manager use is opt-in and IC-controlled. Do not quote, paraphrase, summarize, or theme feedback marked `Keep private`. For feedback marked `Ask me before using`, `Not decided yet`, or legacy entries with no `User sharing preference`, ask before using the substance in the final prep. If the user approves an entry during `/prep-1on1`, that approval is for the current 1:1 prep only and must not change the saved `User sharing preference` unless the user explicitly asks you to update it.

Do not auto-save `/prep-1on1` shareable talking points. They are meeting-specific and may go stale or include tactical wording the user does not want preserved. After presenting the prep, offer explicit save choices: save only the private source notes to `growth-plan/1on1-prep/YYYY-MM-DD.md`, append follow-up decisions or manager alignment to `growth-plan/manager-calibration.md`, or do not save anything.

## Workflow Persistence Policy

Use these persistence defaults across skills:

- **Durable artifacts:** Save user-owned career records that are useful over time, including impact notes, feedback entries, quarterly reflections, Workday Reflection drafts, promotion readiness snapshots, goals, and manager calibration notes.
- **Temporary working state:** Use temporary state only to resume a multi-step workflow. `/draft-reflection` stores `reflections/.draft-reflection-state.json` while the walkthrough is in progress and deletes it after finalization. `/manager-reflection-reply` stores `reflections/.manager-reflection-reply-state.json` while intake and drafting are in progress and deletes it after the draft is shown and saved. The durable `/draft-reflection` artifact is `reflections/FYXX-HN-workday-draft.md`; `/manager-reflection-reply` saves a Markdown draft by default at `reflections/manager-replies/YYYY-MM-DD-employee-name-manager-response.md`.
- **One-off prep output:** Do not auto-save meeting-specific prep by default. `/prep-1on1` should show private source notes, shareable talking points, and manager asks in chat; save only private source notes or manager-calibration follow-ups when the user explicitly chooses that.
- **Workflow distinction:** `/quarterly-reflection` creates a durable private quarterly record at `reflections/FYXX-QN-reflection.md`. `/draft-reflection` creates Workday-ready self-review copy for a semiannual cycle at `reflections/FYXX-HN-workday-draft.md`. A quarterly reflection can inform a Workday draft, but it is not the same artifact.

## Manager Reflection Reply

`/manager-reflection-reply` is for people managers responding to a direct report's Workday Reflection. Open with a lightweight prompt: "This will draft a Workday manager response to the employee's Reflection." Use a guided intake rather than asking for everything at once: employee name first, then role context, then reflection text, then supporting evidence. It produces Workday-ready manager response text followed by short `Reference grounding check`, `GitHub evidence grounding check`, and `Peer feedback grounding check` footers when applicable. Optional `Manager review notes` may be shown only for blind spots the manager should consider in conversation. Do not create hidden manager notes, 1:1 prompts, critique packets, ratings, promotion recommendations, compensation recommendations, or calibration packets.

Before drafting, collect the employee name, current role, job family, current level, optional next level, current Workday Reflection text, prior-period goals answer, optional peer feedback requested by the employee, and the manager's permission decision for GitHub search. Collect the employee GitHub handle only if the manager grants GitHub search permission or wants evidence tied to GitHub activity. Accept raw Workday paste with questions, labels, UI text, and answers mixed together; parse questions from answers and ask only for sections where an employee answer is missing. Ask before searching GitHub. If permission is granted, use targeted `gh` retrieval from manager-provided links, repos, issues, PRs, discussions, or named work examples. If permission is denied or evidence is thin, draft only from the reflection, prior goals, peer feedback, pasted evidence, and role references.

Use `reference/career-stage-profiles/curated/README.md` first for role context and read raw profile extracts only when needed for exact wording or missing detail. If the role is missing there, fall back to `reference/career-stage-profiles-summary.md` and matching Product Org raw text files under `reference/`, such as `reference/product-operations-csp.txt`. Role references can shape development language, but must not be used to infer ratings, promotion readiness, compensation, or hidden calibration sentiment. Do not use private calibration PDFs, personal Workday exports, or real employee examples as shipped sample content.

The final output should start with a warm, direct, developmental manager response. It may include one growth edge only when anchored in the employee reflection, prior goals, peer feedback, manager-provided evidence, retrieved GitHub evidence, or role reference. After the response text, include a short `Reference grounding check` footer that states whether job profile lookup was `Successful`, `Not available`, or `Not used`; names the source layer used; says whether role context shaped in-role validation, next-role growth language, both, or neither; and cites the specific reference competency, responsibility, or scope signal used. Then include a short `GitHub evidence grounding check` footer that states whether GitHub evidence was `Successful`, `Not requested`, `Not available`, or `Not used`; names up to five compact sources; says whether the evidence shaped results validation, growth statement, next-period goals, in-role validation, or none; and names the evidence signal used. If peer feedback was provided, include a short `Peer feedback grounding check` footer that states whether feedback was `Provided and used`, `Provided but not used`, `Not provided`, or `Waiting`, and says what pattern shaped the draft. If blind spots were found and the manager asked for them, include short `Manager review notes` after the grounding checks. Add an `AI draft note` that tells the manager to validate facts, adjust tone and judgment, and add human taste before using the response in Workday. Add a `Continue iterating` note that the manager can provide more examples, feedback, GitHub links, role context, or tone guidance for revision. Save a Markdown draft under `reflections/manager-replies/` and show the path. Do not include citations, source packets, evidence maps, confidence scores, ratings, calibration language, or follow-up layers beyond those footers and optional manager review notes.

## Quarterly Reflection Structure

Quarterly reflections are for personal tracking and follow the template in `reflections/` with these sections:

- **What I Shipped:** Links to impact notes with brief summaries
- **Biggest Impact:** Which ship had the most measurable impact and why
- **What I Learned:** Skills developed, what to do differently
- **Where I Stretched:** New scope, new leadership, comfort zone expansion
- **Challenge and Growth Mindset:** A specific challenge, what was done, and how it shaped future approach
- **Feedback Themes:** Patterns from the quarter's feedback, mapped to competencies
- **Next Quarter Focus:** Priorities for the upcoming quarter

## Workday Reflections Format

GitHub's official Workday Reflections use three questions (use `/draft-reflection` to generate):

1. **What results did you deliver, and how did you do it?** Cover outcomes with metrics, plus behaviors (collaboration, values, AI leverage, security contributions, culture in action).
2. **Reflect on recent challenges: what did you learn and how did you apply a growth mindset?** Describe the situation, actions taken, and how it shaped your approach.
3. **What are your goals for the upcoming period?** 3-5 SMART goals aligned to business outcomes.

Reflections happen at least twice per fiscal year and currently run in April and October. Use GitHub's fiscal calendar: H1 = Q1 + Q2 (Jul-Dec), H2 = Q3 + Q4 (Jan-Jun). April 2026 = FY26 H2; October 2026 = FY27 H1. If Workday shows a specific reflection period, use that period.

`/draft-reflection` is an interactive walkthrough that guides the user through the full reflection lifecycle: peer feedback outreach, evidence gathering (portfolio scan plus external links and pasted feedback), first draft generation, optional senior-leader pressure testing, iterative refinement, and finalization. Any peer feedback pasted during the walkthrough is automatically saved to the correct feedback file.

Reflection drafts should start from captured portfolio evidence: impact notes, feedback, goals, manager calibration, prior reflections, and relevant references. Interview answers fill evidence gaps, but should not replace captured evidence. Saved drafts may include HTML source comments for private verification; those comments are not Workday copy.

## Promotion Readiness Coaching Boundaries

`/prep-promotion` prepares a readiness coaching and manager-calibration artifact. It is not a promotion decision, performance rating, compensation recommendation, or manager calibration substitute. The workflow should help the user see how their current evidence stacks up, where the story is strong, where it is thin, and what to ask a manager next.

When using role references, label coverage clearly:

- **Curated reference available:** A concise role or grade summary is available.
- **Raw reference available:** A raw Career Stage Profile extract is available and should be treated as source material, not curated guidance.
- **Role reference missing:** No matching role reference was found, so role-specific expectations require manager calibration.

Promotion readiness coaching must separate **employee readiness**, **business need**, and **budget availability**. Portfolio evidence can support readiness and sometimes business need, but budget availability cannot be inferred from the repo. The workflow should never say "you are ready for promotion" as a final judgment. Use evidence-based phrasing such as "The portfolio currently shows..." and "This needs manager calibration..."

## Goals Framework

Goals should follow the SMART framework: Specific, Measurable, Achievable, Relevant/Realistic, and Time-bound. They should align with team and business priorities and focus on delivering maximum value to customers and the company.

## File Conventions

- Impact notes: `impact-notes/YYYY-MM-DD-short-kebab-title.md`
- Feedback: `feedback/FYXX-QN-peer-feedback.md` (one file per GitHub fiscal quarter, e.g., FY26-Q3)
- Reflections: `reflections/FYXX-QN-reflection.md` (one file per fiscal quarter, e.g., FY26-Q3)
- Workday Reflection drafts: `reflections/FYXX-HN-workday-draft.md` (one durable draft per fiscal half, e.g., FY26-H2)
- Goals: `growth-plan/current-goals.md` (single living document)
- Manager calibration: `growth-plan/manager-calibration.md` (append-only log)

GitHub follows Microsoft's fiscal year (July through June). Fiscal quarters override calendar quarters everywhere in this repo: Q1 = Jul-Sep, Q2 = Oct-Dec, Q3 = Jan-Mar, Q4 = Apr-Jun. The fiscal year number is the calendar year of June. FY26 = July 2025 through June 2026.

## Handling Examples vs. Real Content

The repo ships with example entries in feedback, goals, reflections, impact notes, manager calibration files, and synthetic calibration files under `examples/`. When generating output from these files, **skip any entries or files with titles/headings that start with "Example:"** or are clearly template placeholders (e.g., "Goal 1: [Title]"). Only use real, user-created content. The example impact note (`2026-02-20-copilot-onboarding-redesign.md`) has "Example:" in its title and should not be treated as the user's own work. Files in `examples/` are patterns only and must never be treated as user evidence.

When updating files in agent mode, prefer cleaning up starter content once the user has real content of that type. For example: remove example feedback entries after the first real feedback entry is saved, remove the Example Goal section once real goals are in place, and avoid leaving legacy example reflections alongside real fiscal-quarter reflections.

## Formatting Rules

- Never use em dashes in generated content. Use commas, colons, or rephrase instead.
- Tone should be professional but personal. First-person. Direct and concise.

## Responsible AI Use

This repo uses AI to help draft career content. The user is responsible for ensuring all AI-assisted content is accurate and complete. AI output should always be reviewed, edited, and validated before use. Never copy/paste AI-generated content into Workday without review. AI should not be used to assess, rank, or infer performance.

## Starter Repo Maintenance

When working on the starter repo itself, not a private user copy, update `CHANGELOG.md` in the same change whenever you modify reusable workflow assets. This applies to skills, templates, README guidance, scripts, updater behavior, reference material, and repo-wide instructions, unless the user explicitly says not to update the changelog.

Add changelog entries at the top, keep them concise, and include a short Summary plus the relevant Added, Changed, or Removed sections.

## Support Path

For bugs, broken commands, confusing instructions, or feature requests, direct users to open an issue in the canonical starter repo. For questions about how to use the repo, direct them to Slack `@hemory` directly. Do not ask users to paste private career evidence into public issues or broad Slack channels.
