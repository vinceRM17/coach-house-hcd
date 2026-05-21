# Customer Conversations

The folder that exists in every Coach House project that's actively collecting evidence from users. Drop the protocol and template into a project repo when you start running conversations; leave the project as-is when you're not.

This README answers: **when is a conversation the right tool, and when is something else?**

---

## The research spectrum (lightest to heaviest)

Coach House does not require a fixed interview cadence. Conversations are valuable but they are not the only — or even the primary — way evidence enters a project. The full spectrum:

| Type | What it is | Cost to user | When to use |
|---|---|---|---|
| **Passive observation** | Watching what users do via instrumentation, server logs, screen recordings they've already made (e.g., a Loom they shared). | Zero — they don't even know it's happening (consent already in product terms). | Always. The cheapest signal. |
| **Email or message feedback** | The user wrote you. You read it carefully and capture the substance. | Zero — they wrote anyway. | Always. Capture and link to features. |
| **Retrospective walk-through** | A user is already on a call with you for another reason — onboarding, a check-in, a support thread — and you ask "show me how you actually did X last week." | A few minutes added to a call they were already on. | Whenever a call is already happening. |
| **Targeted screen share** | You schedule 15-30 min with one specific user to observe one specific workflow. | Significant — they took the meeting. | When passive evidence has surfaced a hypothesis you need to validate. |
| **Full interview (30+ min)** | A structured conversation following [`PROTOCOL.md`](./PROTOCOL.md). | High — protect their time. | When a major feature decision is pending and the cheaper methods haven't resolved it. |

The earlier version of this practice required full interviews on a weekly cadence. We learned that didn't fit a single-founder studio. The current posture: **use the lightest method that resolves the question.**

---

## When passive observation beats conversation

There are questions only watching can answer:

- *"Which features actually get used?"* — instrumentation tells you. A user will tell you they "use" a feature they haven't opened in three months.
- *"Where do users get stuck?"* — server-side error logs and rage clicks tell you.
- *"Does the workflow we designed match the workflow they perform?"* — a Loom of them using it tells you, often more honestly than a 30-min call where they'll politely reconstruct what they think you want to hear.

If you're tempted to schedule a 30-min interview to answer one of those questions — pause and ask whether the data already exists.

---

## When conversation beats observation

There are questions only conversation can answer:

- *"Why did you stop using feature X?"* — instrumentation can show the drop-off; only the user can tell you why.
- *"What did you have to give up to make this work in your context?"* — workarounds and dignity costs are invisible in logs.
- *"What would you change about how Tuesday goes?"* — open-ended workflow questions need a voice.

When you spot one of those, run the protocol.

---

## What lives in this folder

When a project is actively collecting conversation evidence:

```
customer-conversations/
├── _README.md          ← you are here (when to use what)
├── PROTOCOL.md         ← how to run a conversation if one is happening
├── TEMPLATE.md         ← per-session note template
└── sessions/           ← one file per conversation
    └── YYYY-MM-DD-name.md
```

If the project additionally maintains personas, add a `personas/` folder. Personas are optional — they help when the user role is varied enough that a synthesized profile is useful, and they hurt when they fossilize into outdated ground truth.

---

## The rules that survive across projects

Regardless of what method you used to gather the evidence:

1. **Write it down the same day.** Future-you will not remember the specifics. The pattern of "we keep hearing X" only emerges when sessions are written down.
2. **End every conversation with one commit.** *"Based on this conversation, we are/aren't going to do X."* In the session note. Per the HCD anti-pattern about [research theater](../ANTI-PATTERNS.md#1--research-theater).
3. **Cite the evidence in the PR.** Use the [scaffold PR template](../scaffold/pull_request_template.md). If you can't cite evidence, label the feature speculative.
4. **Track the role separately from the person.** A buyer is someone who pays. A worker is someone who uses. Sometimes the same person; sometimes not. The distinction shapes what the conversation can tell you.
5. **Pay for time.** When you schedule a real conversation, offer a coffee card or product credit. We don't extract free labor.

---

## Reference

- [`PROTOCOL.md`](./PROTOCOL.md) — how to run a conversation if you're running one.
- [`TEMPLATE.md`](./TEMPLATE.md) — per-session note template.
- [`../PROCESS.md`](../PROCESS.md) — the per-feature five-gate process that conversations feed.
- [`../ANTI-PATTERNS.md`](../ANTI-PATTERNS.md) — the failure modes the protocol is designed to avoid.

---

*Folder pattern version 0.1 — 2026-05-20.*
