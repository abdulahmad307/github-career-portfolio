# Standardized Port Authentication for Audit Notifications

**Date:** 2026-10-12

## Work moment

While serving as First Responder, I reviewed a stacked pull request from tidy-dev, an accessibility champion outside the accessibility engineering team, that adds Slack notifications so teams across GitHub can learn about upcoming accessibility audits.

I noticed that the Port integration in the proposed workflows used newly created federated secrets instead of the recommended GitHub Action for retrieving Port credentials. The existing Vault configuration I had established for another Port integration could support the recommended approach, but its scope covered only the compliance scorecard workflows, not the new `notify-assignees` workflows.

I created a tracking issue, expanded the Vault configuration to authorize the new workflows, followed the deployment through completion, and reverted the now-unnecessary federated-secrets change. I also facilitated a discussion between tidy-dev and Dennis, the owner of the SLA JSON files, to align on a related schema change for per-service Slack notification configuration.

## Why it mattered

Using a different authentication mechanism for each workflow would have created unnecessary inconsistency in how the accessibility scorecard integrates with the Port API. That would make the integrations harder to understand and maintain, and it would give future contributors competing patterns to follow.

The audit-notification work also changed the SLA JSON schema, which Dennis owns, by adding per-service Slack notification configuration. Getting the owner and contributor aligned before the work progressed reduced the risk of merging a schema contract without shared understanding or approval.

## What changed

- The required work was captured in a dedicated issue before implementation, including both the workflow updates and the additional Vault scope.
- `vault-config` now authorizes the `notify-assignees` workflows to retrieve Port credentials through the recommended action.
- The Vault change was taken through the same merge and deployment process used for the existing compliance scorecard integration.
- The audit-notification workflows and compliance scorecard workflows can now follow the same Port API authentication pattern.
- The redundant federated Port secrets change was reverted after the recommended credentials path was put in place.
- tidy-dev and Dennis reached a shared understanding of the per-service Slack notification configuration added to the SLA JSON schema.
- The stacked audit-notification work had a clearer path to completion with its authentication and schema dependencies addressed.

## Evidence

- [Audit notification stacked pull request #5460](https://github.com/github/accessibility-scorecard/pull/5460)
- [Port authentication follow-up issue #5456](https://github.com/github/accessibility-scorecard/issues/5456)
- [Vault configuration pull request #2754](https://github.com/github/vault-config/pull/2754)
- [Original federated Port secrets pull request #6575](https://github.com/github/secrets-federation/pull/6575)
- [Federated Port secrets revert pull request #6629](https://github.com/github/secrets-federation/pull/6629)
- Review discussion identifying the recommended Port credentials action and the missing Vault scope.
- Discussion with tidy-dev and Dennis about the SLA JSON schema change and ownership expectations.

## How I worked

I used my First Responder review responsibilities to look beyond whether the proposed code functioned. I connected the work to an existing recommended integration pattern, identified the configuration gap that prevented immediate reuse, and turned the gap into a tracked piece of work before making changes.

I followed the established Vault checklist and deployment process rather than introducing another authentication path. Once the replacement was available, I cleaned up the superseded federated-secrets configuration so the codebase would not retain two ways to solve the same problem.

I also recognized that the pull request introduced a contract change outside the immediate workflow implementation. Instead of treating the SLA JSON update as only a code-review detail, I brought the contributor and schema owner together, worked through their questions, and helped establish shared agreement on how the per-service Slack configuration should work.

This work extended a paved path from one workflow to another: consistent Port authentication, explicit workflow authorization, and a clearer example for future engineers building GitHub Actions integrations.

## Who benefited

- tidy-dev, who received implementation guidance and the Vault configuration needed to complete the Port integration through the recommended path.
- Accessibility scorecard maintainers and future contributors, who now have one consistent authentication pattern to understand and maintain.
- Dennis and other owners of the SLA JSON files, whose schema contract was discussed and aligned before adoption.
- Teams across GitHub that will receive Slack notifications about upcoming accessibility audits through the new workflows.

## Questions to answer later

- How many teams or services receive the new audit notifications once the stacked pull request is in use?
- Did the notifications improve audit preparation, response rates, or timeliness for service teams?
- Has the shared Port authentication pattern been reused by any additional workflows or contributors?
