# Port Action Items Tier Integration

**Date:** 2026-10-12

## Work moment

Toward the end of the accessibility scorecard migration to Port, payload structures changed, new fields were added, and some lower-priority fields were intentionally left out of the initial migration. I created a batch of follow-on issues to capture this new scope separately, which allowed the initial migration to finish on time while leaving the team with ready-to-tackle next steps.

One of those follow-on efforts was adding `tier` to the Port action items payload. Delivering it required more than updating the payload: the GitHub Actions workflows needed authenticated access to the Port REST API. I added the necessary repository and workflow configuration to `vault-config`, managed that change through deployment, and then completed the scorecard implementation using the recommended Port credentials action.

## Why it mattered

Separating late-arriving requirements from the initial migration protected the original delivery timeline without losing track of the additional work. It turned new scope into an explicit, actionable backlog rather than allowing it to delay the migration or remain undocumented.

Adding `tier` made the action items payload more complete, but doing so required reliable Port API authentication. Without the correct credentials, the workflows would receive 4xx responses from the API. Establishing the recommended service-account and Vault-based credentials path gave the workflows the access needed to retrieve tier data while aligning the implementation with Port's documented approach for GitHub Actions.

## What changed

- The post-migration payload changes and omitted lower-priority fields were captured in a dedicated batch of follow-on issues.
- The initial Port migration was able to complete on time while the newly identified scope remained visible and ready for implementation.
- `vault-config` now authorizes the relevant scorecard repositories and workflows to retrieve Port credentials.
- The Vault configuration was deployed to production and verified before the dependent scorecard work was completed.
- The scorecard workflows now use the recommended Port credentials action, with the appropriate production and staging inputs, to authenticate with the Port REST API.
- Port action items now include `tier` in their payload.
- The implementation was validated through the necessary checks and tests, relevant workflow runs, and inspection of the resulting data in Port before merge.

## Evidence

- [Port migration follow-on batch issue #5386](https://github.com/github/accessibility-scorecard/issues/5386)
- [Add tier to Port action items issue #5431](https://github.com/github/accessibility-scorecard/issues/5431)
- [Port service-account guidance](https://github.com/github/port-documentation/blob/main/working-with-port/getting-data-out-of-port.md#service-account)
- [Port credentials GitHub Action](https://github.com/github/port-integrations/blob/main/.github/actions/get-port-credentials/action.yaml)
- [Vault configuration pull request #2735](https://github.com/github/vault-config/pull/2735)
- [Tier implementation pull request #5445](https://github.com/github/accessibility-scorecard/pull/5445)
- Validation included automated checks and tests, production and staging workflow runs, and confirming the resulting tier data in Port.

## How I worked

I managed scope deliberately by separating requirements that emerged late in the migration from the work needed to complete the original commitment. This preserved the delivery timeline while creating a concrete path for the follow-on work.

For the tier implementation, I traced the dependency beyond the payload change itself and followed Port's documented authentication guidance. I coordinated the prerequisite `vault-config` change, followed its deployment checklist, merged it, and watched the deployment to confirm that the credentials path was available in production before relying on it in the scorecard workflow.

I used Copilot to accelerate the implementation, then reviewed the generated code and directed targeted corrections rather than accepting it as-is. In particular, I identified missing startup validation and test coverage for the two new environment variables, missing inputs on the credentials action, and the need to update both production and staging workflows with their environment-specific configuration. I then ran the relevant checks and workflows and validated the data in Port before merging.

While reviewing a separate stacked pull request that also needed Port API access, I recognized that the same recommended credentials approach could replace a less ideal federated-credentials implementation. I shared that context with the engineer and helped get the feature working through the established Vault and Port action path. That collaboration will be captured in a separate impact note.

## Who benefited

- Accessibility scorecard maintainers, who now have an authenticated and documented way to integrate GitHub Actions workflows with the Port REST API.
- Consumers of the Port action items payload, who now receive tier information with each action item.
- Engineers implementing follow-on Port integrations, who can reuse the established Vault configuration and recommended credentials action.
- The migration team, which completed the initial migration on time while retaining a clear backlog for newly identified scope.

## Questions to answer later

- Which users or downstream processes rely on `tier`, and what decisions or workflows does the field enable?
- How many scorecard workflows or follow-on integrations have reused the Vault-based Port credentials path?
- Is there feedback from payload consumers or maintainers that demonstrates the value of the added tier data or the reusable authentication setup?
