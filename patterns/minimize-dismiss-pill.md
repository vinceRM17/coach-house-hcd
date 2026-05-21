# minimize-dismiss-pill

User-controlled visibility for any persistent UI element. Three states: **expanded** (default), **minimized** (a small corner pill the user can click to restore), **dismissed** (gone for the session — or for good, depending on the variant).

## The problem

Any persistent UI element — a hero banner, a metrics row, an onboarding nudge — eventually becomes wallpaper at best and noise at worst. The vendor tends to add a close button (forcing dismissal) or no control at all (forcing tolerance). Both miss what workers actually want: *temporarily get this out of my way without making it permanently gone.*

The grants manager who already knows what her next deadline is doesn't need a banner reminding her. She also doesn't want to lose the banner — it's useful in two weeks. She wants to *minimize* it.

## The principle it embodies

[Principle 3 — the person doing the work is the design center.](../PRINCIPLES.md#principle-3--the-person-doing-the-work-is-the-design-center) The worker decides what UI persists on their screen, not the vendor.

It also nods at [Principle 2 — reduce, then add](../PRINCIPLES.md#principle-2--reduce-then-add-always-reduce-first). Visual reduction is reduction too.

## The pattern

Three states, controlled by the user, persisted in localStorage (per-org, per-element):

```
EXPANDED (default)
┌────────────────────────────────────────────┐
│  📅  Next deadline: Brown-Forman LOI       │
│      Due in 3 days — open draft  [×] [—]   │
└────────────────────────────────────────────┘

MINIMIZED (after user clicks [—])
                                    ┌───────┐
                                    │  📅 3 │ ← bottom-right corner pill, click to restore
                                    └───────┘

DISMISSED (after user clicks [×])
[nothing rendered until the underlying state changes — e.g., a new deadline appears]
```

Implementation sketch (vanilla JS / React-agnostic):

```js
const KEY = `ui:hero-banner:${orgId}`;
const state = JSON.parse(localStorage.getItem(KEY) || '{"state":"expanded"}');

function setState(next) {
  localStorage.setItem(KEY, JSON.stringify({ state: next, ts: Date.now() }));
  render();
}

function render() {
  if (state.state === "dismissed") return null;
  if (state.state === "minimized") return <CornerPill onClick={() => setState("expanded")} />;
  return <FullBanner onMinimize={() => setState("minimized")} onDismiss={() => setState("dismissed")} />;
}
```

Reset rules:

- `dismissed` resets when the **underlying data changes** (a new deadline appears, a new metric crosses a threshold). The user dismissed the *current* version; the next version is new.
- `minimized` persists across sessions until the user restores.

## Where it's currently used

- **Bothy** — `HERO-MINIMIZE-V1` (next-deadline banner), `METRICS-MINIMIZE-V1` (metrics tile row at top of dashboard).
- **Pilot grant dashboards** — SWC, Educational Justice (Hero banner pattern shipped via cross-pilot propagation).

## When to apply it

- The element is *persistent* (rendered on every page or every load), not contextual.
- The element is *informational* rather than action-required (a CTA you must click should not be dismissible).
- The worker is the design center (not the buyer demoing to a board).

## When NOT to apply it

- For modal dialogs, alerts, or any element representing required action — those need an explicit yes/no, not a minimize.
- For one-shot onboarding tours — those need a "don't show again," not a corner pill.
- When the element provides accessibility cues that some users depend on — dismissing should not break the page for screen readers.

## Variations

- **[`hero-minimize`](./hero-minimize.md)** — the specific application to a "next thing due" banner across multiple dashboards. Documented separately because the dedup logic (only show when something *is* due) is non-trivial.
- **Per-user vs. per-org persistence.** Default is per-org (so all users on an org's account see the same minimization state). For multi-user products with diverse workflows, per-user is the right choice.

## Receipts

- Bothy HERO-MINIMIZE-V1 commit: see `coach-house-grants/` git log.
- SWC + EJ pilot rollout: see propagation safety marker `LONNA-FIX-V1`.

---

*Pattern doc version 0.1 — 2026-05-20.*
