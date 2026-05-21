# worker-first-dashboard

The landing surface of a product leads with **what the worker needs to do today** — not aggregate metrics summarizing the org's performance.

## The problem

Almost every SaaS dashboard opens with the same default: a row of tiles totaling things up. *Active grants 12. Funded this year $184K. Tasks due 4.*

That layout serves the buyer (the executive director wanting a glance at performance) and silently fails the worker (the grants manager who opened the app because she has to *do* something today). The tiles tell her things she already knows. The thing she came for — *which thing should I work on first?* — is two clicks away.

The dashboard works for the wrong person.

## The principle it embodies

[Principle 3 — the person doing the work is the design center.](../PRINCIPLES.md#principle-3--the-person-doing-the-work-is-the-design-center) Specifically, this pattern defends against [anti-pattern #6 — buyer-user substitution](../ANTI-PATTERNS.md#6--buyer-user-substitution), which surfaces most visibly in dashboard layout.

## The pattern

The landing surface leads with one of:

1. **The single next action.** *"Brown-Forman LOI due in 3 days — open draft."*
2. **A small list of action-required items**, sorted by urgency, not by date created.
3. **A "today" widget** that aggregates only the things requiring action in the next 24-72 hours.

Aggregate metrics live further down the page (or behind a tab labeled *Overview* or *Metrics*). They are still available — they are not the lede.

Visually, the difference looks like:

```
BUYER-FIRST (the default, the bad version)
┌──────────────────────────────────────────────────────────────┐
│  Active grants: 12    Funded YTD: $184K    Tasks due: 4      │
│  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ │
│  (table of all grants)                                        │
└──────────────────────────────────────────────────────────────┘

WORKER-FIRST (the pattern)
┌──────────────────────────────────────────────────────────────┐
│  Next up                                                      │
│  → Brown-Forman LOI · due in 3 days · [open draft]            │
│  → Norton thank-you · due tomorrow · [mark done]              │
│  → JPMC stewardship call · due Friday · [mark done]           │
│  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ │
│  (smaller, secondary: active grants, YTD totals)              │
└──────────────────────────────────────────────────────────────┘
```

## Where it's currently used

- **Bothy** — `/app` shell leads with the worker-first layout.
- **Bothy marketing site** — the Hero demo card on the landing page shows the worker-first version, not the ED dashboard version (see Q2 2026 audit for the journey to get there).

## When to apply it

- The product's primary user role is a worker (someone doing repeated work in the tool), not an executive (someone reviewing the tool periodically).
- Workers open the product because they have to *do something*, not because they want to *check on something*.
- The aggregate metrics, while real, are not what brought the user to the page right now.

## When NOT to apply it

- The product's primary user is genuinely an executive whose job is to monitor (a true BI dashboard product).
- The product has no recurring action items — for read-only directories or reference tools, "what to do today" is meaningless.

## Variations

- **Today widget + ranked list** — the most common form (used in Bothy).
- **Single hero action** — for products with very few simultaneous action items.
- **Dual-tab worker / overview** — when the executive view genuinely matters, give it its own tab. Keep the worker view as the default landing.

## Receipts

- Bothy `/app` shell — see commit history in `coach-house-grants/`.
- Marketing Hero demo card — see Bothy Q2 2026 audit for the before/after.

---

*Pattern doc version 0.1 — 2026-05-20.*
