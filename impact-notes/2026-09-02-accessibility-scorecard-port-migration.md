# Accessibility Scorecard Port Migration

**Date:** 2026-09-02

## Work moment

I contributed to the high-priority, company-wide retirement of Service Catalog by taking ownership of migrating the Accessibility Compliance Fundamentals scorecard to Port. As the accessibility compliance fundamentals champion, I took over the work when Clay Miller, who led the initial planning and implementation, went on parental leave. I served as the DRI for the migration, created and managed the implementation issues under an epic, and communicated progress through weekly epic updates.

I extended the existing scorecard workflow with a first-party Port integration so it could send accessibility compliance scores directly to Port while preserving the existing Service Catalog integration during the transition.

## Why it mattered

Retiring Service Catalog affects services across GitHub and requires the Fundamentals scorecards that depend on it to move to Port. The accessibility compliance scorecard needed a reliable migration path that kept scores current in Port without disrupting the existing integration before the broader retirement was complete.

The previous Service Catalog data path fetched data through Kusto and left the scorecard information one day behind. Sending data directly to Port created an opportunity to make accessibility action-item data available while it was current.

Stakeholders wanted the scorecards migrated before the end of August. Meeting that timeframe required recognizing the work's urgency early in the month and protecting enough capacity to complete it without putting the transition at risk.

This work also needed to account for the lifecycle of accessibility audits. Port must receive updated action items and scores when audit status changes, including when audit issues close or when a service's scorecard should be enabled or disabled.

## What changed

I advanced the accessibility compliance scorecard migration by:

- Adding a first-party integration that sends scores from the existing workflow directly to Port.
- Keeping the Service Catalog integration intact so the current path continued to work during the migration.
- Creating a webhook to ingest action-item data produced by the workflow.
- Creating a second webhook to turn scorecards on or off based on whether a service has completed an audit.
- Adding a caching layer so closing audit issues for a service triggers updated information to be sent to Port, keeping its scores current and correctly calculated.
- Replacing the one-day data lag from the Service Catalog and Kusto path with up-to-date data sent directly to Port.
- Validating that the new action-item data remained consistent with the existing Service Catalog data across sandbox, staging, and production environments.
- Breaking the remaining work into tracked issues and managing delivery through the migration epic.
- Providing an estimated completion timeline aligned with the stakeholder goal and completing the migration before the end of August.

The planned migration work was completed within the estimated timeframe and before the stakeholder deadline at the end of August. The integration was tested through production, and the new action-item data was consistent with the existing data fetched from Service Catalog through Kusto. Results are not yet captured for broader adoption, migration coverage, or the number of services updated through the integration.

## Evidence

- [Service Catalog retirement initiative](https://github.com/github/dx/issues/2185)
- [Accessibility scorecard Port migration epic](https://github.com/github/accessibility-scorecard/issues/5055)

| Metric                                   | Before                                           | After                                                                                       |
| ---------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| Accessibility action-item data freshness | One day behind through Service Catalog and Kusto | Up to date through the direct Port integration                                              |
| Environment validation                   | Existing Service Catalog path                    | New integration tested in sandbox, staging, and production with consistent action-item data |

- Best evidence to add later: implementation pull requests, Port webhook configuration, successful workflow runs, and the number of services whose accessibility scorecards are now represented in Port.

## How I worked

I maintained continuity on a high-priority initiative by taking over work that Clay Miller had initially planned and started before parental leave. Early in August, I recognized that the migration needed focused attention to meet the stakeholder goal. I deliberately paused less urgent work to protect enough time for the migration and complete it before the end-of-month deadline.

As DRI, I organized the work into trackable issues, provided a delivery estimate, and posted weekly updates to the epic so stakeholders could follow progress and changes. I completed the planned work within the timeframe I had communicated.

I learned Port's integration model, collaborated closely with Danyal Siddiqui and Rafael Rodriguez, and extended an existing workflow without breaking its Service Catalog behavior. I had frequent conversations with Rafael from the Port team as we tested the integration in the sandbox environment. We then worked closely through staging and production validation, comparing the new action-item data sent directly to Port with the existing data fetched from Service Catalog through Kusto to confirm consistent results.

I accounted for more than the initial score submission path. I designed for action-item ingestion, scorecard activation based on audit completion, and score recalculation when audit issues close. The caching layer addressed the risk of Port retaining stale accessibility compliance information as source data changed.

## Who benefited

Services across GitHub that rely on Fundamentals scorecards are affected by the broader Service Catalog retirement. This migration specifically benefits service owners and teams who use the Accessibility Compliance Fundamentals scorecard, as well as the teams responsible for operating Port and completing the company-wide migration.

## Questions to answer later

- Which pull requests and successful workflow runs demonstrate the completed integration?
- How many services or scorecards now send accessibility compliance data to Port?
- What monitoring or follow-up checks will confirm that the direct Port data remains current over time?
