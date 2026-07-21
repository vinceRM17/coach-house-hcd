# Project Kickoff — Bothy

> **Filled retroactively on 2026-05-20.** Bothy launched before the [`PROJECT-KICKOFF.md`](../../PROJECT-KICKOFF.md) template existed; this captures the answers as they would have been written on day one, reconstructed from the existing Bothy HCD-FRAMEWORK.md and HCD-SELF-AUDIT.md.

## Project name

**Bothy** — a fund development workspace for small nonprofits.

One-line summary: a single place to manage grants, donor stewardship, funder relationships, deadlines, and reporting — built for the worker doing the work, not for the executive director's dashboard.

---

## Who's the worker?

The **grants manager or development director at a small or mid-tier nonprofit** (under $7.5M annual revenue). Often a one-person fund-development shop. Sometimes wearing two or three other hats (the executive director who is also the fundraiser; the program director who has been assigned grants). Uses the product at a desk, often on a Sunday night, opening it because something is due and she needs to find out what.

She's not a CRM power-user. She's not interested in dashboards. She's interested in *which thing she should work on first* and *whether the LOI is overdue.*

Buyer-vs-worker note: at orgs under ~$2M, the buyer and worker are often the same person (the ED). At orgs $2.5M-$7.5M, they're often different (the ED buys; the grants manager uses). Feature decisions are scored against the **worker** view; pricing and packaging decisions can lean on the buyer.

---

## What's the rage moment?

> *"I have to open four browser tabs to remember when I last called Brown-Forman."*

The lived-out version: the grants manager keeps a spreadsheet of grants, a separate doc of stewardship notes per funder, a calendar of deadlines, and an inbox of emails — and the moment she gets the question *"what's the status of the Brown-Forman relationship?"* she has to assemble the answer across four tools. The cognitive switching cost is the rage.

Secondary rage moments observed in the 30 pilot grant dashboards:

- *"I sent the same Q1 report to three funders and I can't remember if I told Norton."*
- *"It's been five months since we touched JPMC. Did we drop them?"*
- *"The grant deadline is in 11 days and I forgot to start the LOI."*

---

## What's the dignity test?

The grants manager has been holding the work together with spreadsheets, sticky notes, and inbox folders for years. The marketing must not describe that workflow as broken.

❌ Failing version: *"Stop the chaos of disorganized grant tracking."*
✅ Passing version: *"If you've held this work together with spreadsheets and notes, you've done something impressive. We built this for what comes next."*

The Q2 2026 audit flagged Bothy's landing-page "strikethrough tools" vignette (Spreadsheet ~~Sticky notes~~ ~~Drive folder~~) as a dignity-test failure. The fix is logged.

---

## What's the measurable claim?

**Worker-level:** A grants manager opening Bothy on a Sunday night can complete one stewardship action (log a call, mark a task done, send a thank-you note) in ≤2 clicks and ≤30 seconds, versus the 4-6 minutes her previous workflow took.

**Org-level:** Across an active pilot, the grants manager has touched 90% of active funders within the prior 90 days (zero "lapsed funders").

**How we'll measure:**

- Per-feature instrumentation (see [`playbooks/instrumentation-design.md`](../../playbooks/instrumentation-design.md) and `coach-house-grants/INSTRUMENTATION-DESIGN.md`).
- Qualitative follow-up — retrospective conversations with pilot users.
- Lapsed-funder counts queried per-org per-quarter.

---

## What are we explicitly NOT solving?

- **Bothy is not a CRM.** We do not store full donor history beyond what's relevant to current grant relationships. If a worker needs full CRM features, she keeps her existing tool and we link to it.
- **Bothy is not a full accounting system.** We track grant amounts and award status; we do not replace QuickBooks.
- **Bothy is not a workspace.** We link to where the user's real artifacts (narrative drafts, budgets, board reports) already live — see [`patterns/workspace-url-not-workspace.md`](../../patterns/workspace-url-not-workspace.md).
- **Bothy is not an AI report writer (yet).** The Premium tier mentions AI-drafted reports as a Q3 2026 capability; until shipped, it stays labeled "Coming Q3."

---

## The first three Coach House questions this project will face

1. **Who is the worker?** — Grants manager / development director at < $7.5M nonprofit, often Sunday-night user, often also the ED.
2. **What is the most recent observation that informed a feature decision?** — `STEWARDSHIP-V2` toast-suggestion logic was motivated by Lonna at Southwest Center's observation that she keeps forgetting to add the thank-you task after a grant is awarded. (Single source — flagged as anti-pattern #5 risk in the Q2 audit.)
3. **What feature is currently being claimed in marketing that hasn't cleared Gate 4 yet?** — The "~4 hours/week reclaimed" claim and the Premium tier "AI-drafted reports" both fail Gate 4. Q2 audit lists the corrections.

---

## Where evidence will live

`/Users/vincecain/Projects/coach-house-grants/customer-conversations/` — protocol, template, four v0 personas (Lonna at SWC, Bryan at EJ, Tod at DCA, Rob at CrossRoads), sessions folder.

---

## Linking back

The Bothy README will be updated to add this line near the top:

> Coach House HCD practice: https://github.com/Coach-House/coach-house-hcd (currently at Coach-House/coach-house-hcd pending org transfer)

---

*Retroactive kickoff brief — version 0.1 — 2026-05-20.*
