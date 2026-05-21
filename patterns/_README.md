# Patterns

Reusable design + code patterns that have shipped across two or more Coach House projects. The point is to recognize when the second project is doing the thing the first project already figured out, so we don't reinvent it badly.

This is a small, curated library — not an encyclopedia.

---

## What makes something pattern-worthy

A pattern goes in this folder when **all** of the following are true:

1. **It has shipped in production** in at least one Coach House product (often two — pattern hood is more obvious the second time the problem appears).
2. **It solves a recurring problem** that shows up across projects, not a one-off product quirk.
3. **It embodies a Coach House principle.** A clever code trick that doesn't connect back to [`PRINCIPLES.md`](../PRINCIPLES.md) doesn't belong here — that's a code snippet, not a pattern.
4. **It's small enough to extract.** Patterns are tactical. A whole architecture is not a pattern.

A pattern that shipped in one place and never recurred gets archived rather than canonized. We document the lesson, not the artifact.

---

## What each pattern doc contains

A consistent structure so future-Coach-House can grep these in a hurry:

```markdown
# [pattern-name]

## The problem
[2-4 sentences naming the recurring problem]

## The principle it embodies
[Which Coach House principle this pattern operationalizes]

## The pattern
[The actual move: a sketch, a snippet, a UI description]

## Where it's currently used
[List of projects + the specific marker / location]

## When to apply it
[The signals that this is the right pattern for the new situation]

## When NOT to apply it
[The signals that something else is needed]

## Variations
[Other forms of the same idea]
```

---

## Current pattern library

| Pattern | What it does | First shipped in |
|---|---|---|
| [`minimize-dismiss-pill`](./minimize-dismiss-pill.md) | User-controlled visibility for any persistent UI element (expanded / minimized pill / dismissed). | Bothy hero banner + metrics tiles |
| [`worker-first-dashboard`](./worker-first-dashboard.md) | Landing surface leads with "next thing to do today," not aggregate metrics. | Bothy `/app` |
| [`funder-profile-aggregation`](./funder-profile-aggregation.md) | One unified entity view that aggregates everything attached to an entity (tasks, reports, log entries, related records). | Bothy FUNDER-PROFILE-V1 + 30 pilot dashboards |
| [`workspace-url-not-workspace`](./workspace-url-not-workspace.md) | Store a link to where the user's real workspace already lives, instead of trying to *be* the workspace. | Bothy reporting V1.1 |
| [`stage-transition-suggestion`](./stage-transition-suggestion.md) | When an entity moves stages, suggest natural follow-up tasks via a dismissible toast — with per-entity-per-stage dedup. | Bothy STEWARDSHIP-V2 |
| [`hero-minimize`](./hero-minimize.md) | A specific application of the minimize-dismiss-pill pattern to a persistent "next thing due" banner. | SWC + EJ dashboards |
| [`calendar-export-rfc-5545`](./calendar-export-rfc-5545.md) | Generate stable-UID ICS files so users keep their existing calendar app instead of us building one. | Bothy CAL-EXPORT-V1 |

---

## How patterns enter and exit this library

**Entry:**

1. A pattern shows up in a second project. Whichever Coach House person is shipping it writes the pattern doc and adds it to the table above.
2. The pattern doc links the markers / files in both projects.
3. Future use in a third project references the doc rather than re-deriving.

**Exit:**

If a pattern stops being applied across the studio (technology changed; we learned a better way; the underlying problem evaporated) — the doc gets a *Retired* note dated and explained, and gets moved to a `retired/` subfolder. We don't delete; future-us learns from why we walked away.

---

*Pattern library version 0.1 — 2026-05-20.*
