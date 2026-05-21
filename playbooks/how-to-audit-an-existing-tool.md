# How to audit an existing Coach House tool

A step-by-step playbook for running a quarterly audit. The output is a published file in [`audits/`](../audits/) that grades the project against the practice and lists actions.

Expected time: 2-3 hours of focused work.

---

## 1. Copy the template

```bash
cp audits/_TEMPLATE.md audits/YYYY-Qn-PROJECTNAME.md
```

Naming convention: `2026-Q2-bothy.md`, `2026-Q3-pete-qpr-finder.md`.

## 2. Part 1 — Audit the public surface

Open the project's marketing pages (or pricing page, or landing page — whatever is publicly visible).

Walk through the **five marketing tests** from [`PROCESS.md`](../PROCESS.md):

- **Source** — every benefit claim traces to a real observation.
- **Specificity** — language is concrete to the work, not generic.
- **Worker-first** — page talks about the worker's week, not the buyer's dashboard.
- **Dignity** — current users would feel respected, not condescended-to.
- **Verifiable claim** — every number has a tested sample population.

For each claim or section, write the verdict (**PASS / PARTIAL / FAIL**) and the receipt. Be specific about what fails.

## 3. Part 2 — Walk the ten audit questions

For each of the ten questions in the template, write the honest verdict.

The bar for **PASS** is *evidence exists and is documented somewhere reachable*. The bar for **PARTIAL** is *partially exists*. The bar for **FAIL** is *honestly we are not doing this*.

The questions are not optional. If a project FAILs five of ten, that's the report — not a reason to soften the grading.

## 4. Part 3 — Self-grade the anti-patterns

For each of the [eight anti-patterns](../ANTI-PATTERNS.md), mark **PREEMPTED / AT RISK / VIOLATING / CLEAN** plus the receipt.

The most useful question is *"which one have I stopped looking at?"* — not *"which am I violating most?"*. Slippage hides in the gaps in attention.

## 5. Part 4 — The closing test

Write the honest two-paragraph answer:

> *"If the workers on the other end of this product read everything on its marketing pages and used every feature, would they recognize themselves and their work — or would they recognize a vendor's idea of what their work is like?"*

Name specific places where the answer is the first; name specific places where the answer is the second.

## 6. Action items

Highest leverage first. Group into:

- **This week** — usually two or three concrete fixes.
- **This month** — structural improvements.
- **This quarter** — bigger lifts; the things that won't get done this week.

Each action gets an owner. Anonymous actions don't ship.

## 7. What we got right

Audits are not punishment lists. Write a short paragraph naming what improved since the prior audit. The first audit's version is *"the practice is now in place"* — that's a real win.

## 8. Publish

Commit the audit file. Link it from:

- The project's README ("most recent audit: …").
- The Coach House HCD index (the public face).
- The newsletter, if a piece is going out this cycle.

Publication is the discipline. An unpublished audit is research theater wearing different clothes.

## 9. Schedule the next one

Calendar reminder for the next quarter. The cadence is what makes the practice real over time.

---

## What "done" looks like for an audit

- [ ] Marketing tests scored with receipts
- [ ] Ten questions scored
- [ ] Anti-patterns self-graded
- [ ] Closing test answered honestly
- [ ] Action items with owners
- [ ] What-we-got-right paragraph
- [ ] Committed and published
- [ ] Next audit on the calendar

If those eight are checked, the audit is done. Ship the next feature.
