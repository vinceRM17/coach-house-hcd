# Instrumentation design

How Coach House projects measure what users actually do — without drifting into surveillance or engagement-optimization.

This is the studio-level pattern. The Bothy-specific implementation (full schema, hooks, allowlists) lives in `/Users/vincecain/Projects/coach-house-grants/INSTRUMENTATION-DESIGN.md` as the worked example. Use that as a reference when implementing in a new project.

---

## Why measure at all

Per [`PROCESS.md`](../PROCESS.md), every shipped feature has a measurable claim attached to it. Without measurement, the claim is rhetoric. The point of instrumentation is to close the loop: did this feature actually do what we said it would?

Instrumentation also helps with three operational questions:

- **Adoption** — did the feature get used at all?
- **Workflow completion** — did the feature speed up the work it was supposed to speed up?
- **Retention** — do workers stick around (the year-2 metric)?

It does **not** help with the engagement-optimization questions that most SaaS instrumentation defaults to. We don't optimize for DAU. We don't measure session length. If our users spend *less* time in our product per week, that's often a win.

---

## What to measure

Five categories. Each maps to a decision we need to be able to make.

### A. Feature adoption

*Did we build something people actually use?*

- Activation rate per feature (% of orgs that use it within 30 days).
- Sustained-usage rate (% with at least one event in the trailing 30-day window).
- Time-to-first-use.

### B. Workflow completion

*Does the workflow actually save the time we claimed?*

- Time-from-X-to-Y for the worker's core action.
- Click-depth (number of clicks to complete the most common task).

### C. Feature mix

*Is the product a workflow, or a pile of features?*

- Co-occurrence patterns across users.
- Feature breadth at 30 days.

### D. Outcome (the differentiator)

*Are we helping the work, not just hosting it?*

- Domain-specific outcome metrics — e.g., for Bothy, stewardship task completion rate and lapsed-funder count; for Pete QPR Finder, search-to-trainer-contact conversion rate.

### E. Retention

*Do users stay?*

- User tenure within an org.
- Org tenure (signup to churn).
- User succession (when one worker leaves, does the next one pick up the product?).

Each category needs a documented **decision rule** — *"if this metric crosses X, we do Y."* No metric without a rule.

---

## What NOT to measure

The non-goals list is at least as important as the goals list. Re-read whenever someone proposes a new event type.

| Don't track | Why |
|---|---|
| Time-on-page / session length | Engagement metric; encourages stickiness over usefulness |
| Keystroke / scroll patterns | Surveillance; not actionable; privacy cost |
| Content of notes, summaries, log entries | Privacy; not needed to evaluate product fit |
| Names of users' relationships (funders, donors, trainers, businesses) | Could reidentify; counts and enums suffice |
| Per-user mouse positions / rage clicks | Noisy; better surfaced via direct conversation |
| Anything that doesn't tie to a documented decision rule | *"We might want it later"* is how surveillance creeps in |

If a future feature wants a tracked event that doesn't fit one of the five categories above, the design doc gets updated *first* with the new category and decision rule. No silent additions.

---

## How to implement

The Bothy implementation (`coach-house-grants/INSTRUMENTATION-DESIGN.md`) is the reference. The shape:

1. **Database** — one `feature_events` append-only table with `org_id`, `user_id`, `feature_id`, `action`, `metadata` (jsonb), `created_at`.
2. **Naming taxonomy** — hierarchical dot-separated feature IDs (`stewardship.task.create`), standardized verbs (`create`, `update`, `view`, `complete`, …).
3. **Metadata allowlist** — per-feature schema for what metadata fields are allowed. Anything not on the allowlist gets dropped at the boundary.
4. **Client hook** — a `useFeatureLog()` hook that buffers events, flushes on a timer + on `visibilitychange`, drops silently on auth-missing or network failure.
5. **Server-side events** — for things only the server can record (signup, magic-link login, cron-job events).
6. **Privacy** — org-level opt-out toggle; per-user activity log so users can see what's been recorded about them; 24-month retention with quarterly purge.

For a new project, copy the schema and the hook, adapt the naming taxonomy to that project's domain, write the project-specific metadata allowlist.

---

## The cadence that makes this real

Instrumentation that nobody looks at is theater wearing a different costume.

| Cadence | What | Output |
|---|---|---|
| Weekly | A single SQL query: any feature with 0 events in the past 7 days that's been shipped to more than five orgs? | Flagged for monthly analysis |
| Monthly | Per-feature adoption + sustained-usage trend | A short pulse doc, used as input for the next month's priorities |
| Quarterly | Retention + outcome metrics, year-over-year | Published as part of the project's audit |
| Per-feature-launch | 2-week post-ship check: did the claim hold? | Comment on the original PR; linked from the relevant session notes |

If the cadence slips, the instrumentation stops being useful. Stop adding events until the existing ones are being read.

---

## Privacy posture

Plain-language summary that goes on every Coach House product's privacy page:

> **Product analytics.** We log which features your team uses (e.g., "task created," "search performed") to understand which parts of the product help and which don't. We don't log the content of your notes, your contacts' names, or any other identifying details about your relationships. You can see a summary of your org's logged events any time in Settings → Activity log.

Defaults:

- Org-level opt-out exists; users can find it.
- User-facing activity log exists; users can audit themselves.
- Right-to-export honored on request.
- Right-to-deletion handled by foreign-key cascade (delete org → delete events; delete user → set user_id to null, preserving aggregate analysis without PII).

---

## The instrumentation anti-patterns to watch

1. **Optimization for engagement** — if we ever say "let's add a feature to bring users back more often," we've drifted.
2. **Tracking creep** — every new event proposal references a documented decision rule.
3. **Per-user surveillance** — aggregate is the default; per-user is for debugging specific support tickets only.
4. **Vanity dashboards** — every dashboard has a named owner and a documented decision the dashboard informs.
5. **Marketing-driven instrumentation** — the instrumentation exists *before* the claim, not because of it.
6. **Premature retention metrics** — user-tenure is a year-2 metric; don't make it a year-1 OKR.
7. **Inferring intent from action** — quantitative tells us *what*; conversations tell us *why*. Both required.
8. **Adding instrumentation faster than analysis cadence** — if 20 new events landed but the weekly check hasn't run in 2 months, freeze additions.

---

## Closing test

> *If the workers on the other end of this product read this instrumentation spec, would they recognize it as respectful of their work — or as a vendor measuring them to make claims about them?*

The metadata allowlist, the no-PII rule, the opt-out, the user-facing activity log, the public correction process when claims fail to validate — these exist to land on the respectful side of that line.

---

*Playbook version 0.1 — 2026-05-20. Worked example: `coach-house-grants/INSTRUMENTATION-DESIGN.md`.*
