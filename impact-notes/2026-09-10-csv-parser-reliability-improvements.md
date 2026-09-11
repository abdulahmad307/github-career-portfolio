# CSV Parser Reliability and Script Improvements

**Date:** 2026-09-10

## Work moment

In June 2025, one month after joining GitHub, I was asked to investigate a script that produced unexpected output while parsing a CSV file. Other engineers had already investigated without finding the cause.

I reproduced the failure across multiple runs, then progressively inserted logging after each stage of the script until I identified the exact line where the output became incorrect. Further experimentation isolated the problem to the CSV parser package. I reviewed the package's npm and GitHub pages and found that it had limited adoption and did not appear to be actively maintained.

Before replacing it, I asked other engineers whether the team had experience with the package and which alternatives they recommended. Based on that input, I replaced it with `csv-parse` and `csv-stringify`. I also used the opportunity to add unit tests, simplify the code and script workflow, remove unused code, improve error feedback and comments, add `.env`-based configuration with warnings against committing the file, and update the usage documentation.

## Why it mattered

This script is a vital part of the Accessibility Governance team's weekly workflow. It runs once a week to generate the "weather report," which grades services for Microsoft Accessibility Standards (MAS) compliance. Incorrect CSV parsing can therefore produce incorrect report data and throw off service grades, affecting a recurring governance process rather than an occasional utility task.

The parsing defect made the script's output unreliable, and its source was difficult to identify because the error appeared during a multi-step transformation. Continuing to depend on a lightly used, apparently unmaintained package also created an ongoing reliability and maintenance risk for the weekly grading process.

The surrounding script had additional usability gaps. Environment variables had to be entered manually on every run, setup included automatable steps such as dependency installation, and the code and documentation could be easier for future maintainers to understand and use correctly.

## What changed

- The CSV parsing defect was resolved by replacing the problematic package with `csv-parse` and `csv-stringify`.
- The weekly weather-report workflow could again rely on correctly parsed data when calculating service MAS compliance grades.
- Unit tests now verify the new behavior and expected inputs and outputs.
- Environment variables can be stored in a `.env` file instead of being re-entered for every run, with explicit warnings not to commit the file.
- Error feedback, comments, code structure, and logic were improved to make failures and behavior easier to understand.
- Old and unused code was removed.
- Script setup and usage were simplified by automating steps such as dependency installation.
- Usage documentation was updated so other engineers could run the script successfully.

## Evidence

- [Original CSV parsing issue](https://github.com/github/accessibility-governance/issues/2332)
- [Implementation pull request](https://github.com/github/accessibility-governance/pull/2494)
- The script runs weekly and generates the weather report used to grade services for MAS compliance.
- Kendall's final approval highlighted the tests, `.env` safety warnings, comments, and error feedback.
- Best evidence to add later: the specific incorrect before-and-after output, test count or coverage, subsequent successful weekly runs, and confirmation that weather-report grades were accurate after the fix.

## How I worked

I approached an ambiguous failure systematically. Rather than changing multiple parts at once, I reproduced the issue, added observation points after each processing stage, and narrowed the failure to a specific line and dependency. I then checked the package's adoption and maintenance signals before deciding that replacement was more appropriate than working around the defect.

Because I was new to the team, I explicitly sought other engineers' experience and recommendations before selecting a replacement. This helped me align with existing team patterns while still moving the investigation forward independently. I also looked beyond the immediate bug and made focused improvements to testing, configuration safety, error handling, maintainability, documentation, and ease of use.

## Who benefited

- The Accessibility Governance team, which runs the script weekly as part of its service-grading process.
- Service teams whose MAS compliance grades depend on accurate weather-report data.
- Future contributors who need to understand, test, configure, or troubleshoot the script.
- Stakeholders who use the weather report to understand service accessibility compliance.

## Kudos and feedback

Kendall, a senior engineer, gave the following final approval:

> This all seems very reasonable!
>
> I appreciate:
>
> - the tests ✨
> - `do not push .env` warnings ✨
> - all of the comments ✨
> - error feedback ✨

## Questions to answer later

- What incorrect output occurred before the fix, and what verified output did the updated script produce?
- How many weekly runs have completed successfully since the change, and how much setup or troubleshooting time did the improvements save?
- What validation confirmed that the resulting weather-report grades were accurate after the fix?
