# stage-transition-suggestion

When an entity moves from one stage to another in a pipeline, **suggest** the natural follow-up task via a dismissible toast — with per-entity-per-stage dedup so the suggestion never nags.

## The problem

Workflow tools love to *enforce* — "you must add a task before moving to the next stage." That feels diligent and is consistently annoying. The worker has just done the thing (moved the grant from LOI to Awaiting Response), and now the tool is in her way.

The opposite extreme — never suggesting anything — leaves work undone because nobody mentioned it.

The right move is the middle: when the stage change implies a likely next action ("you just got awarded — should we add a stewardship call?"), *suggest* the action via a dismissible toast. If the worker accepts, the task gets created. If she dismisses, the toast never reappears for that specific entity at that specific stage.

## The principle it embodies

[Principle 3 — the worker is the design center.](../PRINCIPLES.md#principle-3--the-person-doing-the-work-is-the-design-center) Suggestion respects worker autonomy; enforcement doesn't.

Also [Principle 1 — start with observed reality](../PRINCIPLES.md#principle-1--start-with-observed-reality-not-assumed-reality). The suggestions are derived from real workflow patterns observed in pilot orgs, not from what a PM thinks the workflow *should* be.

## The pattern

Three pieces:

1. **Stage transition trigger.** When `pipeline_stage` changes on an entity, fire an event with `(entity_id, from_stage, to_stage)`.
2. **Suggestion table.** A small lookup: for `(from_stage, to_stage)`, what task preset is the natural follow-up?
3. **Per-entity-per-stage dedup.** When the toast is dismissed, record `(entity_id, suggestion_id, dismissed_at)` so the same toast never reappears for that entity-stage pair.

UI shape:

```
[toast in bottom-right corner]
┌─────────────────────────────────────────────────┐
│  🎉 Brown-Forman moved to Awarded!              │
│                                                  │
│  Add a thank-you task due in 3 days?            │
│                                                  │
│  [yes, add it]   [not this time]   [×]          │
└─────────────────────────────────────────────────┘
```

Database shape:

```sql
create table stage_suggestions (
  id           uuid primary key,
  from_stage   text not null,
  to_stage     text not null,
  task_preset  text not null,    -- e.g. 'thank_you', 'interim_report', 'stewardship_call'
  due_in_days  integer not null,
  active       boolean default true
);

create table dismissed_suggestions (
  org_id        uuid not null,
  entity_id     uuid not null,
  suggestion_id uuid not null,
  dismissed_at  timestamptz default now(),
  primary key (org_id, entity_id, suggestion_id)
);
```

When a stage change fires, look up the suggestion, then check if the toast was already dismissed for this `(entity_id, suggestion_id)`. If yes, no toast. If no, render.

## Where it's currently used

- **Bothy** — `STEWARDSHIP-V2`. The "moved to Awarded → suggest thank-you task" flow. Also "moved to Submitted → suggest follow-up cadence" and "moved to Reporting → suggest the interim report task."

## When to apply it

- The product has a pipeline with discrete stages and natural transitions.
- Some transitions have a high-probability follow-up action (a worker almost always does X after Y).
- Workers value the reminder when it lands at the right moment but resent it when it doesn't.

## When NOT to apply it

- The transitions don't have predictable follow-ups (every worker does something different).
- The product is read-only or doesn't have a task model.
- The suggestion would feel intrusive — for transitions that happen many times per day, a toast is friction; use a different surface (e.g., a "tasks generated for you" inbox).

## Variations

- **Per-org customization** — let an org define its own stage→task mappings.
- **Suggest-and-prefill** — the toast offers a "yes" that doesn't open a modal but creates the task with sensible defaults. Less friction.
- **Batch summary** — at the end of the day, surface a list of suggestions that were never accepted *or* dismissed. Useful when stage transitions happen offline (CSV import).

## Receipts

- Bothy STEWARDSHIP-V2 commit and dedup logic — see commit history in `coach-house-grants/`.

---

*Pattern doc version 0.1 — 2026-05-20.*
