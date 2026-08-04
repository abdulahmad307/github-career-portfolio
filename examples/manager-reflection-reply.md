# Synthetic example: manager reflection reply

This example is synthetic calibration material. It is not real employee evidence, not copied from a private portfolio, not copied from Workday, and not meant to be pasted into Workday.

## Purpose

Use this example to understand how `/manager-reflection-reply` turns an employee Reflection, prior goals, peer feedback, manager-approved evidence, and role context into one copy-ready Workday manager response.

## Scenario

The manager wants to respond to a direct report's Workday Reflection. The employee is a Senior Software Engineer working on platform reliability. The manager has permission to use the employee's reflection, prior goals, peer feedback requested by the employee, selected GitHub evidence, and the Software Engineering career-stage reference.

## Synthetic input

### Employee

- Name: Jordan Lee
- GitHub handle: `@jordan-example`
- Current role: Senior Software Engineer
- Job family: Software Engineering
- Current level: G9
- Optional next level for calibration: G10

### Raw Workday paste

The skill should parse Workday questions from employee answers when the manager pastes raw copied text:

```text
What results did you deliver, and how did you do it?
I led the rollout of a new deployment health check that reduced failed deploy follow-up work for three service teams. I mentored two engineers on the rollout pattern and partnered with support to improve incident notes.

Reflect on recent challenges: what did you learn and how did you apply a growth mindset?
Adoption was slower than expected because the first version created too many false positives. I adjusted by interviewing service owners, narrowing the signal, and adding a review step before expanding the rollout.

What are your goals for the upcoming period?
I want to broaden the health check pattern to more services, document the operating model, and mentor more engineers on reliability practices.
```

### Parsed current Workday Reflection answers

1. **Results and how I delivered them:** Jordan wrote that they led the rollout of a new deployment health check that reduced failed deploy follow-up work for three service teams. They also mentored two engineers on the rollout pattern and partnered with support to improve incident notes.
2. **Challenge and growth mindset:** Jordan wrote that adoption was slower than expected because the first version created too many false positives. They adjusted by interviewing service owners, narrowing the signal, and adding a review step before expanding the rollout.
3. **Upcoming goals:** Jordan wants to broaden the health check pattern to more services, document the operating model, and mentor more engineers on reliability practices.

### Prior-period goals answer

Jordan's prior goal was to improve deployment confidence for high-traffic services while reducing manual follow-up during incidents.

### Evidence available

- The manager granted permission to use targeted GitHub retrieval.
- The manager provided two synthetic links to the rollout plan and post-rollout discussion.
- GitHub evidence confirmed the rollout plan, feedback cycle, and support partnership, but did not include enough measurable data to verify a precise percentage reduction.
- The manager pasted synthetic peer feedback from the employee's requested feedback packet. Peers noted that Jordan made the rollout easier to adopt by pairing technical changes with documentation and support handoff, and one peer said Jordan could make success criteria clearer before expanding to more teams.
- The manager asked for any blind spots that should inform the next employee conversation.

## Synthetic output

The text below shows the response text followed by the required grounding check footers. Copy only the response text into Workday.

Jordan, your reflection shows a strong period of reliability-focused impact and thoughtful iteration. The deployment health check work is a clear example of you identifying a recurring operational problem, building a practical solution, and then adjusting the approach when the first version created more noise than expected. I especially appreciated how you did not treat the false positives as a setback to work around quietly. You used that signal to get closer to service-owner needs, sharpen the rollout criteria, and improve the usefulness of the check before expanding it.

The way you delivered the work also matters. Partnering with support, mentoring two engineers, and documenting the rollout pattern helped turn this from a single technical improvement into a repeatable practice for more teams. That is the kind of operating leverage I want to keep seeing from you: not just solving the immediate reliability issue, but making it easier for others to apply the pattern with confidence.

As you move into the next period, I would encourage you to make the impact story more measurable and easier for others to adopt. Your goals around expanding the pattern, documenting the operating model, and mentoring more engineers are the right next steps. One way to make this even stronger next period is to pair that expansion with clearer success measures, such as reduced incident follow-up, faster deploy confidence checks, or adoption across target services. That will make the value of the work easier to see and will help you demonstrate broader technical leadership as the scope grows.

Reference grounding check:
- Status: Successful
- Source used: Curated Software Engineering career-stage profile, P4 G9 to P5 G10.
- Applied to: Next-role growth language.
- Reference competency or scope signal: P5 partners with stakeholders to determine user requirements for a set of scenarios and leads efforts and discussions for technical solutions.
- How it shaped the draft: The growth language emphasizes moving from a team-level reliability improvement toward broader adoption, clearer success measures, and cross-team technical leadership.

GitHub evidence grounding check:
- Status: Successful
- Sources used: `example/platform-reliability#42` deployment health-check rollout plan; `example/platform-reliability#57` post-rollout discussion.
- Applied to: Results validation and growth statement.
- Evidence signal: The rollout plan and discussion supported the health-check adoption story, support partnership, false-positive learning loop, and need for clearer success measures.
- How it shaped the draft: GitHub evidence reinforced the specific rollout, iteration, and measurement language without adding unsupported metrics.

Peer feedback grounding check:
- Status: Provided and used
- Sources used: Manager-provided peer feedback packet; names and quotes omitted.
- Applied to: Behavior validation and growth statement.
- Evidence signal: Peers reinforced Jordan's documentation and support handoff strength while naming clearer success criteria as a useful next step.
- How it shaped the draft: Peer feedback strengthened the operating-leverage praise and the recommendation to pair expansion with clearer success measures.

Manager review notes:
- Positive blind spot: Jordan may be underplaying the value of turning a technical rollout into an adoption pattern other teams can reuse.
- Conversation note: Ask Jordan what success measures would make the next rollout easier for partner teams to evaluate.

AI draft note: This is AI-assisted draft language. Review it carefully, validate the facts, adjust the judgment and tone, and add your own manager voice before using it in Workday.

Continue iterating: You can add more examples, peer feedback, GitHub links, role context, or tone guidance and ask Copilot to revise the response.

Saved draft: `reflections/manager-replies/2026-05-21-jordan-lee-manager-response.md`

## Why it works

- The Workday manager response remains separately copyable from grounding checks and optional manager review notes.
- It praises specific work without inventing unsupported metrics.
- It names a growth edge that is anchored in the reflection, prior goal, and role-relevant scope.
- It shows whether role-profile grounding succeeded without putting source notes inside the Workday response text.
- It shows whether GitHub evidence grounded the response without turning the output into a source packet.
- It uses peer feedback as supporting evidence without turning the output into a peer-feedback packet.
- It keeps manager review notes separate from the response so they support conversation, not Workday copy-paste.
- It reminds the manager to validate the AI-assisted draft and add human judgment before using it.
- It saves a Markdown draft by default so the manager can keep editing outside chat.
- It avoids rating, promotion, compensation, and calibration language.
- It does not include private source notes or a separate critique packet.

## Thin-evidence variant

When the manager does not grant GitHub search permission and only provides a thin employee reflection, the response should stay narrower:

The text below shows the response text followed by the required grounding check footers. Copy only the response text into Workday.

Jordan, your reflection points to meaningful progress on improving deployment confidence and reducing manual follow-up for service teams. I appreciate that you named both the result you were aiming for and the challenge you encountered when the first version created too many false positives. The most valuable part of the story is the adjustment you made: you listened to service owners, narrowed the signal, and improved the rollout approach before expanding it further.

For the next period, your goals around broader adoption, clearer documentation, and mentoring more engineers are well aligned to the work you described. The opportunity is to make the impact easier to see as the work scales. As you continue this effort, focus on capturing a few concrete measures or examples that show whether the pattern is reducing follow-up work, improving deploy confidence, or helping teams adopt reliability practices more consistently.

Reference grounding check:
- Status: Not available
- Source used: No matching profile found.
- Applied to: Not used.
- Reference competency or scope signal: None.
- How it shaped the draft: The draft uses only the employee reflection and prior goals and does not make role-specific claims.

GitHub evidence grounding check:
- Status: Not requested
- Sources used: None.
- Applied to: Not used.
- Evidence signal: None.
- How it shaped the draft: The draft does not rely on GitHub evidence.

Peer feedback grounding check:
- Status: Not provided
- Sources used: None.
- Applied to: Not used.
- Evidence signal: None.
- How it shaped the draft: The draft does not rely on peer feedback.

AI draft note: This is AI-assisted draft language. Review it carefully, validate the facts, adjust the judgment and tone, and add your own manager voice before using it in Workday.

Continue iterating: You can add more examples, peer feedback, GitHub links, role context, or tone guidance and ask Copilot to revise the response.

Saved draft: `reflections/manager-replies/2026-05-21-jordan-lee-manager-response.md`

## Privacy note

This file is a pattern only. Do not copy its names, projects, metrics, source paths, or wording into real Workday responses. Real manager responses must come from the employee reflection, prior goals, peer feedback requested by the employee, manager-approved evidence, retrieved GitHub evidence when permission is granted, and role references available in the private portfolio repo.

## Reuse path

Run `/manager-reflection-reply` from a private career portfolio repo when you are a manager preparing a Workday response. Provide the employee's reflection, prior goals answer, peer feedback if available, role context, and your search preference. The skill saves a Markdown draft under `reflections/manager-replies/` by default so you can keep editing outside chat. Review the draft before pasting anything into Workday.
