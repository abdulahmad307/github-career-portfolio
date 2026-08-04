# Optional Impact Discovery

Impact discovery is the optional layer for helping users notice possible career evidence from places where work already happened. It is designed to stay manual-first, consent-based, and user-reviewed.

## Product stance

Discovery creates candidates, not evidence.

The workflow can help organize user-provided sources into an impact inbox. It must not create final impact notes, feedback entries, manager talking points, Workday Reflection claims, or promotion-readiness evidence without user approval.

## Source setup

Users may provide specific sources such as:

- Pull requests, issues, discussions, or project board items.
- Docs, launch notes, decision records, changelog entries, or planning artifacts.
- Pasted comments, emails, meeting notes, stakeholder feedback, or screenshot summaries.
- Links with enough context to explain why the source may matter.

The workflow should not ask for broad access to an organization, repo, mailbox, chat workspace, calendar, or project system. It should not follow adjacent links, scan unrelated files, or monitor sources by default.

## GitHub link retrieval

When users provide GitHub links, discovery should retrieve the linked source with the GitHub CLI (`gh`) when it is available and authenticated. Users should not have to manually instruct the agent to use `gh` for GitHub PRs, issues, discussions, or repos.

Retrieval stays scoped to the provided links:

- PR links: title, body, author, state, merged date, changed files, review comments, issue comments, and commits when relevant.
- Issue links: title, body, author, state, labels, comments, and linked PRs when relevant.
- Discussion links: title, body, author, category, comments, and answers when available.
- Repo links: ask the user for specific issues, PRs, discussions, files, or timeframe before broader retrieval.

If `gh` is unavailable, unauthenticated, lacks access, or cannot retrieve the linked content, the workflow should say that plainly and ask the user to paste the relevant excerpt or provide command output. Link metadata alone is not enough to summarize impact.

## Candidate signal types

Candidate signals can include:

- Work shipped, improved, decided, facilitated, or unblocked.
- Stakeholder comments or feedback that may be worth saving.
- Repeated themes across comments, issues, or updates.
- Metrics, adoption signals, quality signals, risk reduction, speed improvements, or decision clarity.
- Open questions that would turn activity into an impact story.
- Manager-calibration asks or goal evidence that need user context.

Activity alone is not impact. Candidates should name the missing outcome, audience, or evidence path when the source does not show it.

## Impact inbox model

Discovery output belongs in `impact-inbox/YYYY-MM-DD-discovery-candidates.md`.

Each candidate should include:

- Source.
- Signal type.
- Grounded summary of what happened.
- Why it might matter.
- Missing context.
- Suggested action.
- Status: `Candidate, not evidence`.

Suggested actions:

- Save as impact note.
- Save as feedback.
- Add missing context.
- Ask a follow-up question.
- Keep private.
- Ignore.

## Privacy and consent rules

- No default scanning.
- No broad source access.
- No manager-ready material from discovery candidates.
- No final evidence creation without user approval.
- No invented outcomes, metrics, quotes, names, or dates.
- No use of feedback substance unless sharing preference is clear or the user approves reuse.

The user owns the decision about what becomes evidence, what stays private, and what is ignored.

## Future scan implementation rules

If a later version adds actual source scanning, it should preserve these boundaries:

- Scans are opt-in per source set.
- The user can see and edit the source list before scanning.
- The scanner only reads the sources the user named.
- The scanner writes candidates to the inbox, not final artifacts.
- The user must approve every conversion from candidate to impact note, feedback entry, reflection claim, or manager-prep talking point.
