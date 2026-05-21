# hero-minimize

A specific application of the [`minimize-dismiss-pill`](./minimize-dismiss-pill.md) pattern to a **persistent "next thing due" banner** at the top of the page. The pattern is documented separately because the dedup and visibility logic — "show only when something is actually due" — is non-trivial enough to be worth its own page.

## The problem

A "next deadline" banner is genuinely useful: it surfaces the most urgent item without making the worker hunt for it. It also gets old fast. By the third login of the day, the worker already knows her next deadline; the banner is wasting screen real estate.

The banner needs three behaviors simultaneously:

1. **Show up** when there's something the worker should know about.
2. **Stay out of the way** when she's already heard the message.
3. **Come back** automatically when a new something appears.

That's the gap between "useless static banner" and "useful intelligent banner."

## The principle it embodies

[Principle 3 — the worker is the design center](../PRINCIPLES.md#principle-3--the-person-doing-the-work-is-the-design-center) — the worker controls visibility.

[Principle 2 — reduce, then add](../PRINCIPLES.md#principle-2--reduce-then-add-always-reduce-first) — the banner reduces to a corner pill rather than disappearing entirely, so its information density stays high.

## The pattern

Three pieces of logic in the banner component:

### 1. Visibility rule

```
SHOW the banner if:
  - there is at least one item matching `due in next 7 days`, AND
  - the worker has not minimized OR dismissed *this specific item* before.

Otherwise:
  - if minimized → show the corner pill
  - if dismissed → render nothing until the underlying item changes
```

### 2. State persistence

State is keyed on the **specific item being surfaced**, not on the banner itself. When Brown-Forman LOI is showing, dismissing dismisses *that item's banner*. When the next-most-urgent item becomes Norton thank-you, the banner reappears with the new content.

```js
const key = `ui:hero:${orgId}:${currentItemId}`;
```

### 3. The "underlying data changed" trigger

When the worker dismisses, store `{state: "dismissed", itemId: <id>}`. On every render, compare current top item to the dismissed itemId. If different, render the new banner; if same, stay dismissed.

This is the move that makes the pattern feel intelligent: the banner is dismissed *for this item*, not *forever*.

## Where it's currently used

- **Bothy** — top of `/app`.
- **SWC pilot dashboard** — top of dashboard, shipped via cross-pilot propagation (marker `LONNA-FIX-V1`).
- **EJ pilot dashboard** — same, deployed via shared template.

## When to apply it

- The product has a clear "most urgent" item that varies over time.
- The worker visits frequently enough that a static reminder becomes wallpaper.
- The cost of missing the most urgent item is real (missed deadlines, dropped balls).

## When NOT to apply it

- "Most urgent" is ambiguous (multiple competing priorities; the banner just picks one and creates an argument).
- Workers visit so rarely that they appreciate the static reminder every time.
- The banner content is generic ("welcome back!") rather than action-required.

## Variations

- **Top vs. side placement** — top works for a single line; side rails work when the urgent item has more detail.
- **Sticky on scroll** vs. **scrolls away** — sticky is more useful for actually-urgent items; scrolling away is gentler for "good to know."
- **One item vs. small ranked list** — if the worker reliably has more than one urgent item, surface the top three as a compact ranked list with the same dismiss-per-item logic.

## Receipts

- Bothy HERO-MINIMIZE-V1 — see commit history in `coach-house-grants/`.
- SWC + EJ deployment — see propagation marker `LONNA-FIX-V1` in their respective dashboards.

---

*Pattern doc version 0.1 — 2026-05-20.*
