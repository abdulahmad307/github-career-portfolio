# Port Scorecard Migration Guidance

**Date:** 2026-10-12

## Work moment

After the accessibility compliance scorecard migration generated recurring questions and confusion, I wrote a discussion post in the accessibility repository that gives stakeholders one place to understand the post-migration experience.

The post addresses three primary questions:

1. Where to find the accessibility compliance scorecards in Port.
2. Why there are two distinct accessibility scorecards.
3. How to find a service in Port that is scored by the accessibility scoring script.

It also explains the differences between the scorecard types, links readers to the relevant architectural decision records and Port data mappings, and directs them to the appropriate Slack channels for further questions.

The guidance defines what "Port-native" means in this migration. The previous Port scorecard retrieved data from the Service Catalog API through Kusto and could lag by up to one day. The native scorecard receives data directly from the accessibility scoring script through a webhook. The two paths were validated to contain identical data, while the native path reflects the most recent daily scoring run.

## Why it mattered

Completing the technical migration did not automatically give stakeholders a clear mental model of where the scorecards moved, what changed in the data flow, why the system contains two scorecards, or how to locate a scored service. Without shared guidance, the same questions could continue to be answered in separate conversations, and useful context could remain scattered across individual messages, architecture records, and implementation artifacts.

A central discussion gives stakeholders a reusable starting point. It can answer known questions, preserve future questions and answers in one visible place, and connect readers to the deeper technical sources or support channels when they need more detail.

The post also helps prevent incorrect assumptions about the migration. Although Port has separate scorecards for artifact and functional-product entities, both apply the same scoring rules and display the same accessibility data. The underlying Sev-1 and Sev-2 action-item criteria, exception process, and scoring criteria did not change.

## What changed

- Stakeholders now have a central post-migration reference for finding and understanding the accessibility compliance scorecards in Port.
- The distinction between the artifact and functional-product scorecards is documented alongside links to the Port data model and inventory architectural decision record.
- Readers have instructions for locating a service scored by the accessibility scoring script through the source SLA JSON files and their stored production and staging Port links.
- The post explains that only services represented in the scoring script's SLA files should be expected to have an accessibility compliance scorecard.
- The native webhook data path is distinguished from the former Service Catalog and Kusto path, including the former path's one-day lag and the native path's daily freshness.
- The unchanged scoring rules, Sev-1 and Sev-2 remediation windows, and exception process are documented so stakeholders can distinguish migration changes from policy changes.
- The former accessibility-automation scorecard is explicitly identified as deferred because it did not affect service scores, with future priority still to be determined.
- The discussion provides clear escalation paths to the appropriate Slack channels.
- Future questions can be asked and answered in the same discussion, allowing later readers to benefit from earlier clarification.

The post has been published, but its effect on repeated questions, stakeholder understanding, or support volume has not been measured yet.

## Evidence

- [Accessibility discussion #11208: Port scorecard migration guidance](https://github.com/github/accessibility/discussions/11208)
- [Production accessibility scoring workflow](https://github.com/github/accessibility-scorecard/actions/workflows/update-compliance-scorecard-production.yml)
- [SLA files used to determine which services are scored](https://github.com/github/accessibility-scorecard/tree/main/service-level-agreements/data)
- [Port data-model definitions](https://github.com/github/port-documentation/blob/main/overview/data-model.md#blueprint-definitions--data-sources)
- [Port inventory architectural decision record](https://github.com/github/delivery-org/blob/main/docs/decision-records/32-port-inventory.md)
- The post links directly to the Port scorecard list, the artifact and functional-product scorecards, an example scored service, and the appropriate Port and accessibility Slack support channels.
- The native and non-native scorecard paths were validated to contain identical data.
- Best evidence to add later: reactions from the three reviewers, discussion comments, examples of the post answering a stakeholder question, and any reduction in repeated questions.

## How I worked

I treated the confusion as a documentation and shared-understanding gap rather than continuing to answer each question privately. I organized the information around the three questions stakeholders were actually asking and connected the high-level explanation to the scoring workflow, SLA files, Port entity model, inventory decision record, and support channels.

I separated migration mechanics from policy and product behavior. The post explains the new direct webhook data flow and Port entity structure while making clear that the scoring rules, action-item tiers, remediation windows, and exception process remain unchanged. I also documented the accessibility-automation scorecard as intentionally deferred rather than allowing readers to assume it was overlooked.

Before relying on my own perspective, I shared the post with three people who could review it through different lenses:

- A teammate who understands the accessibility system and its context.
- An engineer working on a similar Port migration who could anticipate questions from migration stakeholders.
- A person who had asked about the Port scorecards after the migration, so the guidance incorporated a real stakeholder question.

This review approach combined technical context, a parallel migration perspective, and direct user signal. It helped ground the post in what readers need to understand rather than only what the implementation team knows.

## Who benefited

- Service owners and teams that need to find their accessibility compliance scorecards and scored services in Port.
- Accessibility stakeholders who need to understand why two scorecards exist and how they differ.
- Accessibility and Port maintainers who otherwise answer repeated post-migration questions across separate conversations.
- Engineers working on similar migrations who can use the discussion as an example of post-migration stakeholder guidance.
- Teams planning around the deferred accessibility-automation scorecard, who now have a documented statement of its current status.

## Questions to answer later

- What feedback did the three reviewers provide, and what changed in the post because of their perspectives?
- How many stakeholders use, comment on, or reference the discussion after publication?
- Does the central guidance reduce repeated questions or shorten the time needed to help someone find the correct scorecard or service?
