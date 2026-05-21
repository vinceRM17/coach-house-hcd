# funder-profile-aggregation

For any relationship-driven workflow, build a **single unified per-entity view** that aggregates everything attached to that entity — across what would otherwise be separate tables or tabs.

(The "funder" naming is from where the pattern first shipped; it applies any time the workflow centers on an ongoing relationship — funder, donor, client, partner, trainer, contractor, neighbor business.)

## The problem

In most fundraising / CRM tools, information about a single funder is scattered across separate surfaces — grants table, tasks table, reports table, contact log, notes app. To answer the simple question *"What's our relationship with Brown-Forman?"* the worker opens four tabs, filters each, and assembles the picture in her head.

The aggregation is real work. The product makes the worker do it every time, despite the data already being in the database in a way that obviously joins on funder.

The same shape shows up in any product where the work is structured around an ongoing relationship.

## The principle it embodies

[Principle 1 — start with observed reality.](../PRINCIPLES.md#principle-1--start-with-observed-reality-not-assumed-reality) The reality is that workers think *funder-first*, not *table-first*. The data model and the worker model are misaligned in most tools; this pattern realigns them.

Also [Principle 2 — reduce, then add](../PRINCIPLES.md#principle-2--reduce-then-add-always-reduce-first). The aggregation replaces four-tabs-of-context-switching with one screen.

## The pattern

A per-entity detail surface that displays, on one page:

1. **Identity & status** at the top — name, current relationship status, the one or two facts that matter most.
2. **Active records** in the middle — open grants, in-flight tasks, upcoming reports — sorted by what's next.
3. **History** at the bottom or behind a tab — log entries, completed grants, past contacts.
4. **One-click "jump to"** affordances for each related record.

The model is *funder is the hub*, everything else hangs off it.

Database shape:

- `funders` table — the hub.
- `grants`, `tasks`, `reports`, `log_entries` — each joined to funder_id.
- The aggregation view queries all related records for one funder in a single round trip (or a parallel fetch).

UI shape (Bothy version):

```
┌──────────────────────────────────────────────────────────────┐
│  Brown-Forman Corporation                          [edit]    │
│  Active partner · Last contact 2026-04-12 · 6 yr relationship │
│  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ │
│  Open                                                         │
│  → LOI due Jun 12 · drafting                                  │
│  → Q2 report due Aug 31                                       │
│                                                                │
│  Recent activity                                              │
│  • 2026-05-15 · stewardship call (notes)                      │
│  • 2026-04-12 · email (reply re: Q1 report)                   │
│  • 2026-03-30 · grant awarded $25K                            │
│                                                                │
│  All history →                                                │
└──────────────────────────────────────────────────────────────┘
```

## Where it's currently used

- **Bothy** — `FUNDER-PROFILE-V1` (the marker, the differentiator pattern for the SaaS).
- **30 pilot grant dashboards** — each pilot has a per-funder profile view, with variations per org's data shape.
- **Pete QPR Finder** — applies the same shape to *trainer profile*: each trainer's listing aggregates contact info, certification status, geographic coverage, and inquiry history into one view.

## When to apply it

- The work is structured around a small-to-medium set of ongoing relationships.
- Workers naturally describe their work entity-first ("I need to check on Brown-Forman") rather than activity-first ("I need to do tasks").
- Data already exists in tables that share a foreign key to the entity.

## When NOT to apply it

- The work is structured around transactions or events rather than relationships (e.g., a ticketing system where each ticket is its own thing).
- The entity volume is so large that any per-entity view is rarely useful (millions of entities; the *list* is the product).
- The relationships are so shallow that aggregation adds no real value (one-off donations with no recurrence).

## Variations

- **Trainer profile** (Pete QPR Finder) — same shape, different entity.
- **Business profile** (East Broadway Business directory) — aggregates listing + hours + reviews + events into a single business page.
- **Workspace link variant** — when the active "history" lives in the worker's existing tool (Drive folder), the aggregation links *to* the workspace rather than reproducing it. See [`workspace-url-not-workspace`](./workspace-url-not-workspace.md).

## Receipts

- Bothy FUNDER-PROFILE-V1 — see commit history in `coach-house-grants/`.
- Pilot dashboard variants — see per-dashboard repos.
- Pete QPR Finder trainer profile — see `pete-qpr-finder/` repo.

---

*Pattern doc version 0.1 — 2026-05-20.*
