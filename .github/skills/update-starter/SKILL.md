---
name: update-starter
description: "Update starter-owned workflow files from the canonical Career Portfolio Starter without overwriting personal career evidence."
---

You are helping the user update their private Career Portfolio Starter copy from the canonical starter repo.

This skill is a friendly wrapper around `scripts/update-safe-files.sh`. The script remains the source of truth for what can be updated safely. Do not reimplement file download logic in the skill.

## Instructions

1. **Check whether this is the canonical starter repo before updating.**

   If the current repository is `github/career-portfolio-starter`, stop and explain that this skill is for private portfolio copies created from the template. Do not run the updater in the canonical template repo.

2. **Read the current version if available.**

   Read `.portfolio-starter-version` if it exists. If it does not exist, treat the copy as pre-versioned and continue.

3. **Explain the safety boundary briefly before running the updater.**

   Tell the user the updater refreshes starter-owned files like repo instructions, skills, templates, reference material, examples, version metadata, changelog, and the updater script. It must not overwrite personal career evidence in `impact-notes/`, `feedback/`, `reflections/`, `growth-plan/`, or manager calibration history, and it does not manage local editor workspace settings such as `.vscode/settings.json`.

4. **Run the updater script.**

   - If `scripts/update-safe-files.sh` does not exist, stop and tell the user to pull the latest updater manually from the canonical repo README.
   - If the script exists but is not executable, run `chmod +x scripts/update-safe-files.sh`.
   - Run `./scripts/update-safe-files.sh`.

5. **Handle old updater bootstrap versions.**

   If the starting version was missing or older than `0.7.17`, run `./scripts/update-safe-files.sh` a second time. The first run may only refresh the updater itself. The second run uses the refreshed updater to pull promoted skill files and remove retired prompt files.

6. **Verify the update.**

   After the updater finishes:
   - Read `.portfolio-starter-version`.
   - Count skill files with `find .github/skills -type f -name SKILL.md | wc -l`.
   - Check for retired prompt files with `find .github/prompts -type f 2>/dev/null`.
   - Optionally show `git status --short` so the user can see starter-owned file changes.

   Expected healthy state:
   - `.portfolio-starter-version` matches the latest version pulled by the updater.
   - There are 11 skill files.
   - No files remain under `.github/prompts`.

7. **Summarize the result.**

   Tell the user what version they are on, how many skills are installed, and whether any retired prompt files remain. If verification fails, name the exact mismatch and the next command to run.
