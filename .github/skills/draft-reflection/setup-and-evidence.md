# `/draft-reflection` Setup and Evidence Rules

Use this module for Phase 1 and Phase 2.

## Context

GitHub's Workday Reflections use three questions:

1. **What results did you deliver, and how did you do it?**
   - Quantify impact using clear, measurable results.
   - Share how the user applied AI to enhance productivity or quality, for themselves, their team, or GitHub customers.
   - Highlight security contributions for GitHub and its customers.
   - Reflect culture in action through behaviors that exemplify GitHub's culture and values.
   - For people managers, explain how they coached for performance, supported growth, modeled culture, and contributed to team and org success.
2. **Reflect on recent challenges: what did you learn and how did you apply a growth mindset?**
   - Describe the situation and why it tested the user's skills or mindset.
   - Describe the actions taken and how the user stayed open to learning or feedback.
   - Describe how the experience shaped their thinking or approach to future challenges.
3. **What are your goals for the upcoming period?**
   - Define 3-5 SMART goals with a clear focus on business outcomes.
   - Goals should support secure, scalable products and services.
   - If the user is a people manager, include people management goals.

GitHub follows Microsoft's fiscal calendar:

- Fiscal year starts July 1 and ends June 30.
- Q1 = Jul-Sep, Q2 = Oct-Dec, Q3 = Jan-Mar, Q4 = Apr-Jun.
- H1 = Q1 + Q2, July 1 through December 31.
- H2 = Q3 + Q4, January 1 through June 30.
- April cycles map to H2 of the current fiscal year. October cycles map to H1 of the next fiscal year.

Performance at GitHub is **What you achieved + How you achieved it**. Both matter equally.

## Peer feedback request template

Use this template when generating personalized Slack messages for peer feedback outreach. Replace `[name]` and `[project]` with the user's provided values:

```text
Hey @[name]! Reflection season is upon us and I just sent you a request for peer feedback in Workday. A specific example I'm thinking of is our collab on [project].

If you have a few minutes, I'd love a short note (even just a few sentences) on any of these:

- How I approached the work: What did you observe about how I drove [project] forward? (e.g., how I coordinated across teams, navigated ambiguity, or kept things moving)
- Impact you saw: What changed because of the work, or what would have been different without it?
- How I collaborated: What was it like working with me? Did I seek out your perspective, make space for input, or handle disagreements in a way that stood out?

Specific examples help a lot more than general praise, so don't worry about being polished. Even "the thing that stood out was when I [did X] and it resulted in [Y]" is exactly what's useful.
```

## Phase 1: Setup and peer feedback kickoff

1. **Determine fiscal period and date range.**
   - If Workday or the user provides a reflection period, use it.
   - If today is in April, May, or June of calendar year Y, default to FY(Y) H2. Evidence window: January 1 through the current draft date.
   - If today is in October, November, or December of calendar year Y, default to FY(Y+1) H1. Evidence window: July 1 through the current draft date.
   - Outside normal cycles, ask whether the user is drafting for the April H2 cycle, October H1 cycle, or an off-cycle reflection.

2. **Check for special circumstances.** Before proceeding, check whether the user mentions a role transition, extended leave, or deliverables without immediate results. Apply the adjustment rules in `pressure-test-and-finalize.md`.

3. **People manager check.** Pause and ask:

   > "Do you manage people?"

   Options: "Yes", "No". Save `is_people_manager`. If yes, Q1 must include people-management impact and Q3 must include at least one people-management goal.

4. **Peer feedback check.** Pause and ask:

   > "Have you already sent out peer feedback requests in Workday for this reflection period?"

   Options: "Not yet", "Yes, but I'm still waiting for responses", "Yes, I have responses ready".

   - If not yet, ask for names and project names, generate personalized Slack messages, remind the user to submit formal Workday feedback requests, save `peer_feedback_status: "waiting"`, then proceed.
   - If waiting, note that the draft may be incomplete without feedback, save `peer_feedback_status: "waiting"`, then proceed.
   - If ready, tell the user you will ask them to paste responses in Phase 2, save `peer_feedback_status: "ready"`, then proceed.

## Phase 2: Evidence gathering

### 5. Scan the portfolio

Read these files and filter to the current fiscal half:

- `impact-notes/` files with `YYYY-MM-DD` prefixes within range. Skip examples and placeholders: headings starting with `Example:`, filenames containing `example`, or a banner like `> **This is an example impact note.**`.
- `feedback/` files that overlap with the fiscal half. Skip entries whose heading starts with `Example:`, contain placeholder text like `[Name]`, `[Role]`, or `lorem ipsum`, or are clearly starter content.
- `growth-plan/current-goals.md`. Skip placeholder goals like `Goal 1: [Title]`, `[Your goal here]`, `TODO:`, and the Example Goal section.
- `growth-plan/manager-calibration.md`. Skip only explicit starter placeholders and examples: the exact starter template entry, `### Example:` entries, lines with bracketed placeholder tokens, and italicized placeholder prompts. Do not skip unchecked action items solely because they use `- [ ]`; real open action items are evidence.
- Workday drafting references: `reference/reflections-hr.md`, `reference/performance-philosophy.md`, and `reference/impact-at-github.md`.
- If `growth-plan/career-profile.md` specifies a job family and grade, note the matching career-stage reference for pressure testing. Do not turn raw role-reference text into invented role expectations.

Display a concise summary: impact-note count, feedback-entry count, whether goals exist, whether manager-calibration notes exist, and which reference files will guide the draft.

Build `evidence_summary.source_notes` with portfolio files, external links, and reference files used. Source notes are for traceability in saved HTML comments, not Workday prose.

### Manager-calibration routing

If real open calibration questions or action items are found, surface them before drafting:

> "I found open manager-calibration items in `growth-plan/manager-calibration.md`. Should any of these shape your reflection draft, upcoming goals, or manager discussion?"

Route the user's answer:

- Delivered-results context goes to Q1 only when supporting evidence exists.
- Challenge or growth-arc context can go to Q2.
- Forward-looking items can shape Q3 goals.
- Manager-discussion-only items stay out of Workday prose and may appear only in private source comments or source notes.

Save `manager_calibration_routing` immediately. On resume, restore it and do not re-ask unless the user asks to change it.

### People-management evidence check

If `is_people_manager` is true, scan impact notes, feedback, and goals for signals like team, coached, reports, mentored, 1:1, performance conversation, hiring, retention, team health, development plan, or direct reports. Save `evidence_summary.people_management_evidence_found`.

### Sparse portfolio check

If fewer than 3 real impact notes are found, tell the user:

> "Your portfolio has limited evidence captured so far. No problem. I'll ask more questions in the interview step to build the evidence we need for a strong draft."

### 6. Check prior reflection and voice profile

Look for the previous fiscal-half draft:

- If writing H2, check `reflections/FYXX-H1-workday-draft.md`.
- If writing H1, check `reflections/FY(XX-1)-H2-workday-draft.md`.

If found, extract prior Q3 goals and save them as `prior_reflection_goals`. Tell the user you found the prior reflection and will use prior goals for continuity.

Also use the prior reflection as a voice/style reference. Analyze and save:

- `sentence_style`
- `paragraph_style`
- `formality`
- `transitions`
- `opening_pattern`
- `closing_pattern`

Save `voice_profile_source: "prior_reflection"` and `voice_profile`. Do not display the voice analysis. Apply it silently in drafting.

If no prior reflection exists, ask whether the user wants to paste a prior reflection or writing sample. If they paste one, analyze it with the same criteria and save `voice_profile_source: "user_pasted"`. If they skip, save `voice_profile_source: "default"`.

### 7. GitHub activity auto-discovery

Pause and ask:

> "Want me to search GitHub for your recent activity this period? I can pull your PRs, issues, and reviews automatically so you don't have to dig for links."

Options: "Yes, search GitHub for me", "No, I'll provide links manually".

If yes, determine the fiscal-half start date and run:

```bash
gh search prs --author=@me --created=">=YYYY-MM-DD" --limit=100 --json title,url,createdAt,repository
gh search prs --reviewed-by=@me --created=">=YYYY-MM-DD" --limit=50 --json title,url,createdAt,repository
gh search issues --author=@me --created=">=YYYY-MM-DD" --limit=100 --json title,url,createdAt,repository
gh search issues --involves=@me --created=">=YYYY-MM-DD" --limit=50 --json title,url,createdAt,repository
```

Transform `createdAt` to `created`, extract `repository.nameWithOwner` to `repo`, deduplicate by URL, group by repo, filter out the user's career portfolio repo, warn on truncation, and ask which items represent key work. Fetch selected URLs for context and save selected items and summaries to state.

If GitHub search is rate-limited, wait 30 seconds and retry once. If it fails again, continue with available evidence and invite manual links. Tell the user GitHub search filters by item creation date, not interaction date.

If no, save `github_activity.skipped: true`.

### 8. Ask for external evidence

Ask these one at a time:

1. "Paste links to GitHub issues or PRs that represent your key work this period (one per line, or skip if none)."
2. "Paste links to any docs, sheets, design files, or other artifacts (one per line, or skip if none)."
3. If `peer_feedback_status` is `"ready"`: "Paste any peer feedback responses you've received (from Workday, Slack, or email). Include who it's from if not obvious in the text. Paste the full text."
4. "Is there impactful work this period that isn't captured in any link? For example: a difficult conversation you navigated, a mentoring moment, an informal leadership decision, or org-level influence that didn't produce an artifact. Describe briefly, or skip."

If GitHub auto-discovery was used, explain these prompts are for anything missed. Fetch and summarize each URL so the user can confirm. Save non-URL evidence.

### 9. Gap-filling interview

After gathering evidence, review coverage against the three Workday questions. Ask only about actual gaps, but do not skip critical gaps.

Ask any required missing questions:

- Key results, only if captured evidence is insufficient for Q1: "What are the key results you delivered this period? Walk me through your top 2-3 accomplishments, including who you collaborated with and why the work mattered to the org."
- Q2 challenge: "Can you describe a specific moment this period where something didn't go as planned, and what you did about it?"
- AI leverage: "How did you use AI to enhance your work, your team's work, or outcomes for customers this period?"
- Security: "Did you contribute to security improvements this period? This could be identifying a risk, fixing a vulnerability, or improving a process." If no, omit security.
- Culture: "Can you share a specific example of how you demonstrated GitHub's values or culture this period? For example: modeling collaboration, seeking diverse perspectives, or taking accountability." If no, omit culture.
- Q3 goals: "What are your top 3-5 priorities for the next period? Include at least one personal development or stretch goal."
- People management evidence, only when needed: "How did you coach your team, support their growth, or drive team health this period? Any specific examples of performance conversations, development planning, or team culture moments?"
- People management goal, only when needed: "What's one goal related to team development, performance culture, or retention for the next period?"

Optional follow-ups when gaps remain:

- "Your impact notes cover what you shipped but not how you worked cross-team. Can you describe how you collaborated on [specific project]?"
- "I see results but not the business context. Why did [specific work] matter to the org? What would have been different without it?"
- "What's one skill or area you want to develop in the next period that's outside your current day-to-day?"

If there are no gaps, tell the user: "You have strong evidence across all three questions. Moving to drafting."

If the portfolio scan found zero impact notes, offer to save the accomplishments as impact notes. If accepted, create one note per accomplishment using `impact-notes/TEMPLATE.md`, infer dates where possible, use `YYYY-MM-DD-title-slug.md`, and avoid duplicate files.
