# Synthetic example: feedback capture

This example is synthetic. It is not real employee feedback and should not be copied into a private portfolio.

## Purpose

Show how `/capture-feedback` preserves feedback source context, input modality, quote type, signal strength, and user-owned sharing preference.

## Scenario

After a working session, a peer sends a short note saying the user's facilitation helped the group make a decision. The user copy/pastes the text directly into `/capture-feedback`, so the workflow can preserve it as an exact quote.

## Input

```text
Thanks for keeping the discussion focused today. The decision summary made it much easier for me to see what we agreed on and what still needed follow-up.
```

## Output

```md
### From: `[Name]`, `[Role]` -- 2026-05-05

**Source:** Source to add later

**Context:** Working session decision follow-up

**Feedback type:** Exact quote

**Feedback:**

> "Thanks for keeping the discussion focused today. The decision summary made it much easier for me to see what we agreed on and what still needed follow-up."

**Signal strength:** High

**Why it might matter later:** Useful for manager 1:1 or reflection evidence about creating clarity and helping cross-functional partners move from discussion to decision.

**User sharing preference:** `Not decided yet`

**To add later:** Add the source channel and the peer's role if this becomes useful for reflection or manager prep.
```

## Why it works

- It preserves exact wording as a quote.
- It does not invent the peer's name, role, or channel.
- It labels the feedback as high signal because it names what the person did and the impact it had on the group.
- It defaults sharing preference to `Not decided yet` so the user controls later reuse.

## Other supported inputs

`/capture-feedback` can also handle:

- Screenshot summaries, labeled as `Screenshot note` unless the exact visible text is clear enough to quote.
- Meeting notes and user summaries, labeled as `Summary` or `Paraphrase`.
- PR comments, issue comments, emails, Workday snippets, document comments, and Slack messages.
- Links with context, when the user explains what feedback the link contains.

Copy/paste is best when exact wording matters. If the user only has a screenshot or memory of a conversation, the workflow should preserve that honestly instead of turning it into a quote.

## Privacy note

The example avoids names, Slack links, real channels, project names, and screenshots.

## Reuse path

Use this as a format pattern. Capture your real feedback as soon as possible, then replace `[Name]` and `[Role]` if you know who gave the feedback.
