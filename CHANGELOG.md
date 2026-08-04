# Changelog

All notable changes to this repo. Format: most recent first. Each release includes what changed and why.
---

## Unreleased

### Changed
- **Start here walkthrough:** Expanded the README setup path into step-by-step instructions for Copilot CLI, VS Code, and Codespaces, with screenshots for the template creation flow and placeholders for editor-specific screenshots.

## [0.7.21] - 2026-05-21

### Summary
Added a people-manager Workday Reflection response workflow with role-context calibration, explicit GitHub search permission, synthetic examples, and safety checks.

### Added
- **`/manager-reflection-reply`:** Helps people managers draft copy-ready Workday response text plus a short grounding check using the employee's reflection, prior goals, approved evidence, and role context.
- **Synthetic manager-response example:** Added a safe calibration example and thin-evidence variant that are not copied from private Workday exports, private portfolios, or real employee examples.
- **Quality gate:** Added a targeted check for `/manager-reflection-reply` wiring, grounding-check behavior, GitHub search permission, and privacy boundaries.

### Changed
- **Command surfaces:** README, `/help`, `/get-started`, examples guidance, and repo instructions now include the new people-manager workflow.
- **Role-reference fallback:** `/manager-reflection-reply` now falls back to the Product Org legacy reference layer when a job family is missing from the curated career-stage profile index.
- **Grounding transparency:** `/manager-reflection-reply` now appends a short reference grounding check showing whether job profile lookup succeeded and which role competency, responsibility, or scope signal shaped the draft.
- **GitHub evidence transparency:** `/manager-reflection-reply` now appends a short GitHub evidence grounding check showing whether GitHub evidence was requested, retrieved, and used, plus sources, where evidence was applied, and the signal that shaped the draft.
- **Manager reflection intake:** `/manager-reflection-reply` now uses a lighter opening prompt, parses raw Workday paste into questions and answers, accepts peer feedback as supporting evidence, saves temporary resume state, and can surface grounded manager-review blind spots separately from Workday copy.
- **Manager reflection saved drafts:** `/manager-reflection-reply` now saves a Markdown draft by default under `reflections/manager-replies/` and adds an AI draft note plus continue-iterating guidance after the Workday-ready response.

## [0.7.20] - 2026-05-20

### Summary
Protected local editor settings from starter updates and made the Workday Reflection skill usable across VS Code, Codespaces, and Copilot CLI.

### Changed
- **Updater safety:** `scripts/update-safe-files.sh` no longer refreshes `.vscode/settings.json`, so private copies keep local workspace settings when updating starter-owned files.
- **`/update-starter` guidance:** README and skill guidance now clarify that editor workspace settings are not updater-managed.
- **`/draft-reflection` compatibility:** Replaced VS Code-specific pause instructions with an interface-agnostic prompt pattern for VS Code, Codespaces, and Copilot CLI.
- **`/draft-reflection` maintainability:** Decomposed the Workday Reflection walkthrough into focused helper modules while keeping `/draft-reflection` as the single user-facing skill.
- **Workflow persistence:** Clarified which workflows save durable artifacts, temporary resume state, or meeting-specific prep, including `/quarterly-reflection`, `/draft-reflection`, and `/prep-1on1`.
- **Quality gates:** Added a GitHub Actions workflow and shared local quality script for updater tests, Markdown link checks, version/changelog sync, and targeted workflow regressions.
- **Updater coverage:** The updater now discovers starter-owned files from upstream `.github/skills/`, `examples/`, and `reference/` directories instead of hand-listing every file.
- **Impact note consistency:** Aligned the impact-note template, `/new-impact-note`, and the synthetic example around the same core evidence fields while preserving example flexibility.
- **Career-stage references:** Added curated summaries for all 63 raw career stage profile extracts and updated promotion-readiness routing to use curated summaries first, with raw extracts as fallbacks.
- **Product Org references:** Added curated extensions for legacy-only Product Org profiles, including Product Management, Business Program Management, Developer Advocacy, Product Operations, Technical Writing, and Technical Program Management.

## [0.7.19] - 2026-05-07

### Summary
Added a Copilot skill that gives users a friendly slash-command path for updating private portfolio copies.

### Added
- **`/update-starter`:** Wraps `scripts/update-safe-files.sh`, explains the personal-evidence safety boundary, handles the old-updater two-run bootstrap path, and verifies version, skill count, and retired prompt cleanup.

### Changed
- **Updater coverage:** `scripts/update-safe-files.sh` now refreshes the new `/update-starter` skill.
- **Docs and command guide:** README, `/help`, and `/get-started` now include `/update-starter` for newer copies, while the README recommends running `./scripts/update-safe-files.sh` twice as the broadest update path for older private copies.

## [0.7.18] - 2026-05-07

### Summary
Added cleanup support for private copies that still have retired prompt files after the skill migration.

### Changed
- **Updater cleanup:** `scripts/update-safe-files.sh` now removes an allowlist of retired starter-owned `.github/prompts/*.prompt.md` files that were replaced by skills, and only removes `.github/prompts/` if that directory becomes empty.
- **Migration guidance:** README now explains that private copies older than `0.7.17` should run the updater twice so the first run refreshes the updater and the second run applies the skill migration cleanup.
- **Regression coverage:** Updater tests now verify that deprecated prompt files are listed for cleanup.

## [0.7.17] - 2026-05-07

### Summary
Promoted every portfolio slash workflow to a Copilot skill so VS Code, Codespaces, and Copilot CLI use the same command surface.

### Changed
- **Workflow packaging:** `/get-started`, `/help`, `/new-impact-note`, `/capture-feedback`, and `/discover-impact` now live under `.github/skills/*/SKILL.md` instead of `.github/prompts/*.prompt.md`.
- **Prompt cleanup:** Removed prompt-file recommendations and prompt-safe-file coverage now that skills are the canonical workflow surface.
- **Updater coverage:** `scripts/update-safe-files.sh` now refreshes the promoted skill files for existing private portfolio copies.

## [0.7.16] - 2026-05-06

### Summary
Clarified that Career Portfolio Starter supports VS Code, Codespaces, and Copilot CLI, including slash-command usage from the repo root.

### Changed
- **Usage paths:** README now explains that the same slash commands work in VS Code, Codespaces, and Copilot CLI.
- **Command guidance:** `/help` and `/get-started` now describe both editor and CLI usage without treating CLI as a future-only path.
- **Agent behavior:** Repo instructions now tell Copilot to support CLI users directly and only fall back to natural-language workflow mapping when a specific client lacks a slash command.

## [0.7.15] - 2026-05-06

### Summary
Added promotion readiness snapshots and tightened manager-facing privacy language based on manual testing feedback.

### Changed
- **Readiness snapshots:** `/prep-promotion` now saves a dated `growth-plan/YYYY-MM-DD-promotion-readiness-snapshot.md` artifact and compares against prior snapshots when available.
- **Historical coaching:** Readiness coaching now identifies what strengthened, what stayed stable, what remains open, and how the impact narrative changed since prior snapshots.
- **Privacy language:** Manager-facing language now frames the repo as the user's private career workspace and avoids wording that implies managers can browse private repositories.

## [0.7.14] - 2026-05-06

### Summary
Fixed `/discover-impact` guidance so GitHub links are retrieved with `gh` when available instead of making users manually coach the workflow.

### Changed
- **GitHub link retrieval:** `/discover-impact` now instructs Copilot to use `gh` for user-provided PR, issue, discussion, and repo links when authenticated access is available.
- **Discovery boundaries:** The discovery reference now clarifies targeted `gh` retrieval scope and fallback behavior when linked content cannot be accessed.

## [0.7.13] - 2026-05-06

### Summary
Packaged the feedback iteration with regression coverage for onboarding routing, feedback modalities, readiness coaching, impact narrative guidance, and optional discovery boundaries.

### Changed
- **Release coverage:** Updated updater regression coverage to treat the impact inbox as a starter-owned surface while preserving user-owned candidate files.
- **Manual test coverage:** Expanded the manual test checklist with scenarios for `Current career focus`, feedback modalities, impact narrative coaching, promotion readiness output, and `/discover-impact` candidate review.

## [0.7.12] - 2026-05-06

### Summary
Defined the optional impact discovery layer so users can review candidate signals from sources they choose without turning scans into default evidence collection.

### Added
- **`/discover-impact`:** Added a source-intake prompt that creates an impact inbox from user-provided links or pasted excerpts instead of scanning broadly by default.
- **Impact inbox:** Added starter guidance for candidate files that remain user-reviewed and separate from saved impact notes or feedback.
- **Discovery reference:** Added an impact discovery design note covering source setup, candidate types, review actions, privacy boundaries, and future scan rules.

### Changed
- **Docs and onboarding:** README, `/help`, `/get-started`, and repo instructions now describe optional discovery as consent-based candidate review, not evidence creation.
- **Updater coverage:** Safe-file updates now include the new discovery prompt, impact inbox README, and discovery reference note.

## [0.7.11] - 2026-05-06

### Summary
Added portfolio-internal impact narrative coaching so manual workflows can surface stronger story opportunities without scanning external work sources.

### Changed
- **Impact narrative quality:** Repo instructions now define reusable coaching checks for audience clarity, outcomes, evidence quality, trade-offs, how the user worked, and story through-line.
- **Impact capture:** `/new-impact-note` now asks higher-leverage follow-ups when input is thin and frames missing details as future narrative enrichment.
- **Manual workflow coaching:** `/prep-1on1`, `/update-goals`, and `/quarterly-reflection` now surface narrative opportunities from existing portfolio evidence, such as unclear audience, weak metrics, unresolved questions, stale goals, and manager-calibration asks.
- **Manual-first boundary:** `/update-goals` explicitly avoids external source scanning and routes source discovery to a future optional workflow.

## [0.7.10] - 2026-05-06

### Summary
Reframed `/prep-promotion` as promotion readiness coaching so users can calibrate strengths, gaps, and narrative opportunities before manager conversations.

### Changed
- **Readiness coaching:** `/prep-promotion` now leads with readiness snapshot, strengths, gaps, impact narrative opportunities, role expectation mapping, manager calibration questions, and next evidence moves.
- **Promotion boundaries:** The workflow reinforces that portfolio evidence can support readiness and sometimes business need, but cannot make promotion decisions, performance ratings, manager calibration calls, or budget assessments.
- **Example alignment:** The synthetic promotion example now shows readiness coaching output instead of a promotion-case-first evidence map.
- **Docs language:** README, `/help`, `/get-started`, and repo instructions now describe promotion readiness calibration more clearly while keeping the command name stable.

## [0.7.9] - 2026-05-06

### Summary
Clarified first-run onboarding and feedback capture so users can start from their current career moment and preserve feedback from more real-world sources.

### Changed
- **Onboarding guidance:** `/get-started` now asks for `Current career focus` instead of promotion timing, then uses that answer to tailor next-step guidance without overriding evidence-readiness order.
- **Impact capture language:** README, `/help`, and `/get-started` now frame impact notes around meaningful work moments, including shipped work, improvements, decisions, facilitation, and unblocking.
- **Feedback modalities:** `/capture-feedback`, README, repo instructions, and the feedback example now explain how to capture copy/pasted text, screenshots, meeting notes, paraphrases, PR or issue comments, emails, Workday snippets, document comments, and links with context.

## [0.7.8] - 2026-05-05

### Summary
Hardened release hygiene checks so starter updates are safer for existing private portfolio repos.

### Changed
- **Updater test coverage:** `scripts/test-update-script.sh` now verifies every prompt, skill, reference file, and synthetic example is listed in `update-safe-files.sh`, and fails on stale safe-file entries.
- **Release hygiene checks:** The test script now checks for duplicate generated markdown files and verifies the top changelog version matches `.portfolio-starter-version`.
- **Update guidance:** README and updater-managed Copilot instructions now name synthetic examples, changelog, version metadata, and the updater script itself as starter-owned files the updater can refresh.

## [0.7.7] - 2026-05-05

### Summary
Added privacy-safe synthetic examples so users and Copilot can calibrate workflow quality without using real career evidence.

### Added
- **Synthetic examples:** Added `examples/` with calibration examples for impact notes, feedback capture, manager 1:1 prep, Workday Reflection excerpts, and promotion evidence maps.
- **Example safety checklist:** Added guidance for labeling examples synthetic, avoiding real identifiers, and keeping examples as patterns rather than evidence.

### Changed
- **Workflow guidance:** README, repo instructions, prompts, and skills now point to synthetic examples only as calibration material and instruct Copilot not to copy synthetic details into real user artifacts.
- **Updater coverage:** `update-safe-files.sh` now includes the synthetic examples folder so private copies can receive starter-owned example updates.

## [0.7.6] - 2026-05-05

### Summary
Improved reflection and promotion workflows so they reuse captured evidence while labeling source and decision boundaries clearly.

### Changed
- **Reflection evidence reuse:** `/draft-reflection` now starts from captured impact, feedback, goals, manager calibration, and references, then uses interview questions only to fill gaps.
- **Source visibility:** Reflection drafts can include private HTML source comments so users can verify claims before copying Workday-ready prose.
- **Promotion prep boundaries:** `/prep-promotion` now labels role-reference coverage as curated, raw, or missing, separates employee readiness from business need and budget availability, and states that AI output is not a promotion decision, performance rating, or manager calibration substitute.
- **Review-hardening fixes:** Clarified manager-calibration placeholder filtering, persisted reflection routing decisions, stripped private HTML comments before pressure testing, and made promotion-prep feedback reuse honor `User sharing preference`.

## [0.7.5] - 2026-05-05

### Summary
Strengthened manager opt-in support for `/prep-1on1` so users can prepare career conversations without exposing the full private repo.

### Changed
- **Manager 1:1 prep:** `/prep-1on1` now separates private source notes from shareable talking points, pulls in manager-calibration open questions, and generates 2-4 direct manager asks.
- **Sharing boundaries:** README, `/help`, `/get-started`, repo instructions, and manager calibration guidance now reinforce that manager sharing is opt-in and IC-controlled.

## [0.7.4] - 2026-05-04

### Summary
Added lightweight feedback source context while keeping sharing decisions user-owned.

### Added
- **Feedback source context:** Feedback entries now include `Source` so users can remember whether feedback came from Slack, PRs, email, meetings, screenshots, Workday, or another source.
- **User sharing preference:** Feedback entries now default to `Not decided yet`, making later manager-prep reuse an explicit user choice instead of a system assumption.

### Changed
- **Capture guidance:** `/capture-feedback`, `/draft-reflection`, repo instructions, README copy, and the starter feedback example now frame source context as a receipt for the user, not a classifier for what should be shared.
- **Manager prep guidance:** `/prep-1on1` now honors `User sharing preference`, skips `Keep private` entries, and asks before using entries marked `Not decided yet`, `Ask me before using`, or legacy entries with no preference field.

## [0.7.3] - 2026-05-04

### Summary
Standardized feedback and reflection period handling on GitHub fiscal quarters and fiscal years.

### Changed
- **Feedback quarter naming:** Feedback files now use `feedback/FYXX-QN-peer-feedback.md` based on GitHub fiscal quarters, not calendar quarters.
- **Workflow instructions:** `/capture-feedback`, `/draft-reflection`, repo instructions, and README examples now use GitHub's fiscal calendar: Q1 = Jul-Sep, Q2 = Oct-Dec, Q3 = Jan-Mar, Q4 = Apr-Jun.
- **Starter feedback file:** Renamed the starter feedback log from `feedback/2026-Q1-peer-feedback.md` to `feedback/FY26-Q3-peer-feedback.md`.

## [0.7.2] - 2026-05-04

### Summary
Reduced capture friction for impact notes and feedback so users can save lightweight evidence quickly and enrich it later.

### Changed
- **Impact notes:** Reframed `/new-impact-note`, the template, and repo instructions around quick capture first, structured enrichment later.
- **Feedback capture:** Reframed `/capture-feedback` and the feedback starter file so informal kudos, paraphrases, screenshot notes, and exact quotes can all be saved without overprocessing.
- **Evidence quality:** Preserves unknowns and adds small "to add later" prompts instead of forcing invented metrics, stakeholder reactions, or complete promotion-ready framing.
- **Consistency fixes:** Aligns examples, `/help`, `/get-started`, and Workday Reflection feedback saving with the lightweight capture formats.

## [0.7.1] - 2026-05-04

### Summary
Improved the first-run trust and onboarding experience so users understand they should create a private copy from the template before adding career evidence.

### Changed
- **README front door:** Reworked README around the repo promise, template-first setup, private-copy requirement, privacy model, first action, and support path.
- **First-run prompts:** Updated `/get-started` and `/help` to foreground private ownership, manager opt-in sharing, one next action, and safe support boundaries.
- **Repo instructions:** Added template/private-copy guardrails and support path guidance to Copilot instructions.
- **Support references:** Use `@hemory` in user-facing support guidance so GitHub employees can find the right Slack contact.
- **Command support matrix:** Clarified that the slash-command experience is VS Code-first today and that Copilot CLI parity is planned, not yet validated.

## [0.7.0] - 2026-05-04

### Summary
Expanded the career-stage reference layer from Product Org coverage to GitHub-wide raw Career Stage Profile extracts, including leader profiles.

### Added
- **GitHub-wide career-stage profile extracts:** Added `reference/career-stage-profiles/` with 63 raw Career Stage Profile extracts and an index covering job families across Engineering, Design, Product, Program Management, Security, Sales, Support, Marketing, HR, Legal, Learning, IT, Data, Operations, and Leadership.
- **Leader profile coverage:** Added Engineering Leader, Product Leader, Sales Leader, and General Leader Guide profiles covering P7/L1-L3 and G12-G14 expectations where available.
- **Career Fulfillment workshop references:** Added `reference/career-fulfillment/` with four participant packet extracts covering career vision, motivation drivers, job-profile reflection, strengths, growth opportunities, career landscape exploration, networking, and career narrative building.
- **Reference-layer index:** Added `reference/career-stage-profiles/README.md` so Copilot can find the right job family profile before mapping evidence to role expectations.

### Changed
- **Workday Reflection guidance:** Updated `/draft-reflection`, `reference/reflections-hr.md`, and the starter Workday draft to use the current three Workday questions, April/October reflection cycles, GitHub fiscal-half mapping, and soft word-count targets instead of a fake Workday character limit.
- **Promotion prep reference lookup:** `/prep-promotion` now starts with the GitHub-wide career-stage index, falls back to legacy Product Org summaries when needed, and explicitly avoids inventing role expectations when no matching profile exists.
- **Goal and 1:1 workflows:** `/update-goals` and `/prep-1on1` can now use Career Fulfillment references when the user is working on broader career development, not just promotion.
- **Repo guidance:** README and Copilot instructions now describe the expanded raw reference layer and distinguish raw profile extracts from curated user-facing guidance.
- **Updater safe files:** `scripts/update-safe-files.sh` now includes the expanded reference layer so existing portfolio repos can pull the new profile coverage.

## [0.6.1] - 2026-04-15

### Summary
Fixed update script failing on private/internal repos, added .gitignore, added update script tests.

### Fixed
- **Update script auth for private repos:** `scripts/update-safe-files.sh` now uses `gh api` (GitHub CLI) as the primary download method for private/internal repos instead of `curl` against `raw.githubusercontent.com`, which silently failed even with valid credentials. Falls back to `GITHUB_TOKEN` via the Contents API, then unauthenticated `curl` for public repos.
- **Script crash on first download:** Fixed `((UPDATED++))` / `((FAILED++))` arithmetic that caused the script to exit under `set -e` when the counter was 0.
- **Failed downloads could clobber files:** Downloads now write to a temp file and only replace the target on success, preventing empty/corrupt files from a failed fetch.
- **Auth failures were silent:** Added `verify_repo_access` pre-check that fails fast with actionable error messages instead of silently skipping all files.
- **gh auth scoped to github.com:** Auth check now uses `--hostname github.com` so users authenticated to GitHub Enterprise Server don't hit the wrong host.

### Added
- **`.gitignore`:** Ignores `.DS_Store`, editor swap files, and draft reflection state files.
- **`scripts/test-update-script.sh`:** 22 tests covering syntax, arithmetic safety, atomic writes, auth detection, SAFE_FILES completeness, and a live download verification.

## [0.6.0] - 2026-04-10

### Summary
GitHub activity auto-discovery, voice matching, and P0/P1 fixes from 4-model persona simulation.

### Added
- **GitHub activity auto-discovery (step 7):** Optional step that searches GitHub for the user's PRs authored, PRs reviewed, issues created, and issues involved using `gh` CLI. Results grouped by repo, user picks which items to include as evidence. Includes rate limit handling, truncation warnings, field mapping, date limitation note, and state file persistence for resume without re-querying.
- **Voice matching from prior reflection (step 6):** When a prior reflection draft exists, analyzes the full text for sentence length, paragraph structure, tone, formality, and transition patterns. Saves structured `voice_profile` object to state file for cross-session persistence. Applies the voice profile silently during draft generation so the new reflection sounds consistent with the user's established style.
- **Voice matching from user sample:** If no prior reflection exists, offers the user the option to paste a previous reflection or writing sample for style matching. Falls back to default professional tone if skipped.
- **People management in Q1 formatting rules:** Dedicated guidance for managers to include a team leadership theme covering coaching, development wins, team outcomes, and culture modeling.
- **People management goal in Q3 rules:** Managers must include at least one goal addressing team development, performance culture, hiring, or retention.
- **People management checks in pressure test:** Step 16 now validates Q1 management paragraph and Q3 management goal for people managers.
- **State file fields:** `github_activity` (raw search results, user selections, skip flag), `voice_profile_source`, and `voice_profile` (structured analysis with sentence_style, paragraph_style, formality, transitions, opening_pattern, closing_pattern).

### Fixed
- **Example impact note contamination (P0):** Added skip rule for impact notes with titles starting with "Example:" or containing the example banner. Previously only feedback had example-skip rules, causing cold start detection to fail and example content to appear in real drafts.
- **New hire skip path incomplete (P0):** Rewrote Special Circumstances new hire section to explicitly list steps 5-9 as skipped (portfolio scan, voice matching, GitHub auto-discovery, external evidence, gap-filling). Added goal elicitation questions, Phase 4-5 skip, and state file guidance for new hires. Previous wording predated steps 6-7 and left models guessing.
- **Voice profile not persisted (P0):** Voice analysis is now saved as a structured `voice_profile` object in the state file. On resume, the profile is used directly without re-reading the source. Legacy state files (source without profile) trigger re-derivation.
- **gh CLI field name mismatch (P1):** Added explicit mapping instruction: rename `createdAt` to `created`, extract `repository.nameWithOwner` as `repo`.
- **Truncation not surfaced (P1):** Added warning when search results hit the limit count, telling users results may be truncated.
- **Pressure test contradicted draft rules (P1):** Changed Q1 check from "clearly separates What from How" to "shows What and How woven together," matching the draft formatting rules.
- **--created date limitation (P1):** Added note that GitHub search filters by item creation date, not interaction date. Reviews on older PRs may not appear.

### Changed
- **Step numbering:** Renumbered all steps (1-20) to eliminate duplicate step numbers that existed across phase boundaries.
- **External evidence prompt (step 8):** Now adapts when auto-discovery was used, noting that GitHub links are already covered.
- **Phase 3 generation (step 10):** Now synthesizes GitHub activity data alongside portfolio and external evidence. Voice profile applied when available with structured criteria.

## [0.5.0] - 2026-04-07

### Summary
Quality guardrails, session persistence, and coverage gap fixes for `/draft-reflection`.

### Changed
- **Draft quality:** Added core writing principles (impact over activity, weave How into What, limit issue/PR references, no placeholders, natural voice check). Enforced 2,000 char Workday limit during generation, not just pressure test.
- **Q1 formatting:** Organize around 2-4 themes, embed behaviors inline, require gap-filling for AI/security/culture if missing.
- **Q2 formatting:** Coach single-challenge narrative with specific growth arc instead of multiple half-stories.
- **Q3 formatting:** Filter out 80%+ completed work, require at least one development goal, frame goals as forward-looking.
- **Gap-filling interview:** Required coverage checks (AI, security, culture, challenge, goals, people mgmt). Increased max questions from 5 to 7. Added business context and non-URL evidence prompts.

### Added
- **Session persistence:** State file (`reflections/.draft-reflection-state.json`) saves progress after every phase. Users can resume where they left off across sessions. State file cleaned up on finalization.
- **People manager detection:** Asks if user manages people; adjusts Q1 (coaching paragraph), Q3 (people mgmt goal), and gap-filling accordingly.
- **Cold start extended interview:** When portfolio has zero impact notes and zero feedback, runs a 10-question structured interview and offers to save answers as impact notes.
- **Late-arriving peer feedback:** On resume, detects "waiting" status and offers to weave new quotes into existing draft without regenerating.
- **Prior reflection continuity:** Checks for prior half's draft, extracts Q3 goals, uses for Q1 framing and Q3 dedup.
- **Character counts in saved draft:** Appends `<!-- Q1: 1,847 / 2,000 characters -->` after each section for offline editing.
- **Non-URL evidence prompt:** Fourth evidence prompt for unlinkable work (conversations, mentoring, informal leadership).
- **Untrusted data handling:** State file free-text fields (peer feedback, fetched summaries) marked as data-only on resume to prevent prompt injection.

## [0.4.0] - 2026-04-07

### Summary
Rewrote `/draft-reflection` from a single-pass generator into a guided, multi-phase walkthrough covering peer feedback outreach, evidence gathering, drafting, optional pressure testing, and finalization.

### Changed
- **`/draft-reflection` skill:** Complete rewrite. Now a 6-phase interactive walkthrough: (1) Peer Feedback Kickoff with personalized Slack message generation, (2) Evidence Gathering from portfolio plus external links pasted by the user, (3) Draft Generation with auto-save of pasted peer feedback, (4) Optional pressure test as a senior-leader persona against GitHub's reflection rubric, (5) Iterative refinement loop, (6) Finalization with Workday submission guidance.
- **`copilot-instructions.md`:** Updated Workday Reflections section to describe the walkthrough experience.
- **`STARTER-workday-draft.md`:** Updated starter text to describe the guided walkthrough users get when they run `/draft-reflection`.

### Added
- Embedded peer feedback request template in the skill for generating personalized Slack outreach messages.
- Senior-leader pressure test phase that validates drafts against `reference/reflections-hr.md`, `reference/performance-philosophy.md`, `reference/impact-at-github.md`, and career stage profiles.
- Auto-save of peer feedback pasted during the walkthrough to the correct `feedback/FYXX-QN-peer-feedback.md` file.
- 2,000 character per question Workday limit check during pressure testing.

## [0.3.1] - 2026-03-12

### Summary
Added a `/help` command for workflow discovery and documented changelog upkeep for future starter-repo changes.

### Added
- **`/help` prompt:** A built-in command that shows available portfolio commands, when to use them, and the recommended workflow.

### Changed
- `/get-started` now points users to `/help` when they are not sure what to run.
- `README.md` now documents `/help` in onboarding, the command table, and the weekly rhythm guidance.
- `scripts/update-safe-files.sh` now includes `.github/prompts/help.prompt.md` so existing users can pull the new command safely.
- `.github/copilot-instructions.md` now requires `CHANGELOG.md` updates for reusable starter-repo changes unless the user explicitly opts out.

## [0.3.0] - 2026-03-11

### Summary
Cleaned up all personal content for public starter distribution. Renamed `performance/` to `reference/`, added version marker and updater script, made reflection starters generic.

### Added
- `.portfolio-starter-version` file for tracking starter version across updates.
- `scripts/update-safe-files.sh` for one-command safe-file updates from the canonical repo.
- Auto-cleanup note in feedback file explaining example entries are removed on first real save.
- "Starter content cleans itself up" tip in README.
- `reference/` folder explanation in README linking it to `/prep-promotion`.
- "Updating to the Latest Version" section in README with the updater script command.
- "Found a Bug? Have an Idea?" section in README pointing to Issues on the canonical repo.

### Changed
- Renamed `performance/` to `reference/` across all files (README, CHANGELOG, prep-promotion SKILL, career-stage-profiles-summary).
- Reflection starter files renamed from hardcoded `FY26-Q3-reflection.md` / `FY26-H2-workday-draft.md` to generic `STARTER-quarterly-reflection.md` / `STARTER-workday-draft.md`.
- Manager calibration example heading simplified for consistent "Example:" detection.
- All user content files reset to clean placeholder state for starter distribution.

### Removed
- `UPDATE-STRATEGY.md` (internal maintainer doc, not needed by end users).
- `TESTING.md` (internal testing plan, not needed by end users).
- `copilot-integration-plan.md` (internal implementation spec).
- Real impact note `2026-03-11-ai-workflow-series.md` (personal content).
- All personal references (names, project details, feedback quotes) from starter files.

## [0.2.2] - 2026-03-11

### Summary
Made `/draft-reflection` a durable saved artifact while keeping `/prep-1on1` output-only.

### Changed
- `/draft-reflection` now saves a single Workday draft per fiscal half to `reflections/FYXX-HN-workday-draft.md` and overwrites that file on subsequent runs for the same period.
- `README.md`, `TESTING.md`, and `copilot-instructions.md` now document the saved draft behavior and the new file naming convention.

## [0.2.1] - 2026-03-11

### Summary
Cleaned up starter-content behavior, added persistent role context for onboarding, and expanded promotion support to more job families.

### Added
- `growth-plan/career-profile.md` for storing name, role title, job family, current grade, target grade, and promotion timing context.
- 4 additional performance reference files in `reference/`: Developer Advocacy, Product Operations, Technical Writing, and Technical Program Management.

### Changed
- `/capture-feedback` prompt now saves directly to the current quarter feedback file and removes starter examples when the first real entry is captured.
- `/update-goals` now explicitly removes placeholder goal blocks and the Example Goal section once real goals exist, and can propose first-time SMART goals when the file is still starter content.
- `/get-started` now checks whether career profile metadata has been filled in.
- `/prep-promotion` now reads `growth-plan/career-profile.md` when available and supports additional job families.
- `reference/career-stage-profiles-summary.md` now includes Developer Advocacy, Product Operations, Technical Writing, and Technical Program Management.
- `README.md` now references `growth-plan/career-profile.md` and points to a real impact note instead of starter example content.

### Removed
- Legacy example sections from the live `feedback/FY26-Q3-peer-feedback.md` and `growth-plan/current-goals.md` files once real user content existed.
- The stale starter reflection file `reflections/2026-Q1-reflection.md` in favor of fiscal-quarter reflections.

## [0.2.0] - 2026-03-11

### Summary
Aligned the repo to GitHub's official performance framework (Reflections, promotions, SMART goals) and added an interactive onboarding experience.

### Added
- **`/get-started` prompt:** Interactive onboarding that scans repo state and gives personalized next steps. Added to prompt recommendations in `.vscode/settings.json`.
- **`/draft-reflection` skill:** Generates Workday Reflections in the official 3-question format. Aligned to fiscal halves (H1: Jul-Dec, H2: Jan-Jun, due May 31) with correct FY mapping. Handles special circumstances: new hires, role transitions, return from leave, and long-running deliverables.
- **`/prep-promotion` skill:** Builds a promotion case from impact notes, feedback, goals, and manager calibration. Aligned to GitHub's 3 promotion criteria (Employee Readiness, Business Need, Budget). Generates a draft justification under 2,000 characters.
- **"How I Worked" section** in the impact note template and `/new-impact-note` prompt. Captures the "How" alongside the "What": collaboration, values, diverse perspectives, AI leverage, security.
- **"Challenge and Growth Mindset" section** in the quarterly reflection template and `/quarterly-reflection` skill. Maps directly to Workday Reflections Question 2.
- **GitHub's Official Behavioral Framework** in `copilot-instructions.md`: Leadership Principles, Values (how we work, interact, lead), Manager Fundamentals, and mapping to portfolio competencies.
- **Workday Reflections Format** section in `copilot-instructions.md` documenting the 3-question structure and fiscal half cadence.
- **Goals Framework** section in `copilot-instructions.md` referencing SMART goals.
- **Responsible AI Use** section in `copilot-instructions.md` and draft-reflection output.
- **Signal strength** field in feedback template and `/capture-feedback` prompt (High/Medium/Low). Low-signal feedback triggers a tip to ask for more specific feedback.
- **Feedback quality guidance** in the feedback file template and capture-feedback prompt.
- **Feedback weaving** in `/draft-reflection`: High/Medium signal feedback quotes are woven into the Workday Q1 narrative as behavioral evidence.
- **Special circumstances handling** in `/draft-reflection` for new hires, role transitions, return from leave, and long-running deliverables.
- **TESTING.md** with automated and manual testing plans.
- **CHANGELOG.md** (this file).
- **UPDATE-STRATEGY.md** for distributing changes to existing users.

### Changed
- **Goals template** (`growth-plan/current-goals.md`): Restructured from "What success looks like" to SMART framework with explicit guidance.
- **Feedback template** (`feedback/FY26-Q3-peer-feedback.md`): Replaced "Copy this file each quarter" with `/capture-feedback` workflow. Added "What Belongs Here" section emphasizing behavioral, verbatim, outcome-tied feedback. Added Signal strength field to template and examples.
- **README.md**: Commands table expanded from 5 to 8. Getting Started simplified to "run `/get-started`". "How I Use This" updated with slash commands. "Weekly Rhythm" table updated. Impact note description now includes "How I Worked."
- **All template files**: Replaced manual workflow instructions ("copy this template," "write this at the end of quarter") with slash command references.
- **Reflection template** (`reflections/2026-Q1-reflection.md`): Added Challenge and Growth Mindset section. Updated Feedback Themes to reference `/quarterly-reflection`.
- **Manager calibration** (`growth-plan/manager-calibration.md`): Updated "How to Use This" to reference `/prep-1on1`. Fixed em dashes in template headings.
- **`.vscode/settings.json`**: Added `get-started` to prompt recommendations (now 3: get-started, new-impact-note, capture-feedback).

### Performance Reference Files
- Added `reference/` folder with 4 HR reference documents (impact-at-github.md, performance-philosophy.md, promotions-at-github.md, reflections-hr.md). These are reference material, not generated content.

---

## [0.1.0] - 2026-03-11

### Summary
Initial Copilot integration. Added slash commands, repo-wide AI context, and prompt recommendations.

### Added
- **`.github/copilot-instructions.md`**: Repo-wide AI context covering impact note structure, writing guidelines, career competencies, feedback format, reflection structure, and file conventions.
- **`/new-impact-note` prompt:** Generates a structured impact note from a description of what was shipped.
- **`/capture-feedback` prompt:** Formats Slack messages, PR comments, or kudos into structured feedback entries.
- **`/quarterly-reflection` skill:** Generates a quarterly reflection draft by scanning impact notes and feedback.
- **`/prep-1on1` skill:** Prepares talking points for manager 1:1s from recent impact notes, feedback, and goals.
- **`/update-goals` skill:** Reviews goals against recent impact notes and feedback, suggests progress updates.
- **`.vscode/settings.json`**: Prompt recommendations for new-impact-note and capture-feedback.
- **README.md** updated with "Built-in Copilot Commands" and "Level Up: Connect to Your GitHub Activity" sections.
