# Principles

Five principles that every Coach House project is held against. Studio-level: they apply equally to a grant management workspace, a peer-trainer finder, a neighborhood business directory, and a state-specific nonprofit formation guide.

If a feature ships and a principle was quietly skipped to make it ship, we've broken our own positioning.

---

## Why we wrote these

"Human-centered design" is a contested term. It started as a corrective to engineering-first design; it has since been turned into a workshop product, codified by ISO into a formal standard, and critiqued by the design justice movement for narrowly meaning "centered on the human with purchasing power."

When Coach House says *human-centered*, here is what we mean: every design decision starts from observed reality with the people who will use the product; design intent is judged by impact on those people, not by our claims; and the people most affected by what we build have visible influence on what we build.

The five principles below are how we operationalize that across the studio.

---

## Principle 1 — Start with observed reality, not assumed reality

> "Start with user needs. If you don't know what the user needs are, you won't build the right thing. Do research, analyse data, talk to users. Don't make assumptions." — [GOV.UK design principles](https://www.gov.uk/guidance/government-design-principles).

Every feature should trace back to a real observation of a real person doing the work — not "users probably want X" or "wouldn't it be cool if."

**What this looks like in practice:**

- Bothy: a grants manager opening four tabs to remember when she last called Brown-Forman is the observation. The funder profile is the feature.
- Pete QPR Finder: a parent in rural KY can't find a trainer near them is the observation. ZIP + radius search is the feature.
- East Broadway Business: a neighbor wants to know which East Broadway restaurants are open on Mondays is the observation. Day-of-week filters are the feature.
- Resolve Startup App: a first-time nonprofit founder doesn't know whether to incorporate in KY or DE is the observation. The 9-step roadmap and the entity-type classifier are the features.

**The cheap test:** can you name the person whose conversation, observation, or message motivated this feature? If not, you're inferring.

---

## Principle 2 — Reduce, then add. Always reduce first.

> "Do less." — GOV.UK.

If a feature can be removed and the worker can still accomplish their goal, remove it. Every feature added is a maintenance burden, a learning burden for the user, and a vector for tool fatigue.

**What this looks like in practice:**

- Bothy: a calendar export that creates an ICS file the user opens in their existing calendar app — not a new in-product calendar to maintain (see [`patterns/calendar-export-rfc-5545.md`](./patterns/calendar-export-rfc-5545.md)).
- Bothy: a "workspace URL" field that links to the user's real Drive/Notion folder instead of trying to be the workspace ourselves ([`patterns/workspace-url-not-workspace.md`](./patterns/workspace-url-not-workspace.md)).
- Resolve Startup App: linking out to the SOS PDF rather than reproducing the form in the app.

**The cheap test:** before building, ask *what existing thing this lets the user delete*. If nothing — push back hard on whether to build it.

---

## Principle 3 — The person doing the work is the design center

Distinct from "user-centered" or "customer-centered" — those can mean "the buyer," who is often the executive director, not the person typing into the dashboard at 11pm on a Sunday.

**What this looks like in practice:**

- Bothy: when we have to choose between a feature that looks good in an ED demo and a feature that saves the grants manager 20 minutes a week, we choose the 20 minutes (see [`patterns/worker-first-dashboard.md`](./patterns/worker-first-dashboard.md)).
- Pete QPR Finder: the parent searching is the design center, not the foundation board reviewing the analytics dashboard.
- East Broadway Business: the customer trying to plan a Friday night is the design center; the business owner managing their listing comes second.

The buyer can lobby for features; features get scored against the primary worker's workflow.

**The cheap test:** every feature names its primary user role. If the role drifts toward "executive sponsor" — pause and check.

---

## Principle 4 — Iterate by shipping to real users, not by speculating

> "Iterate. Then iterate again." — GOV.UK.

A feature is "shipped" when at least three real users have used it in their actual context. Until then it's a prototype.

**What this looks like in practice:**

- A pilot deploy goes to a small named cohort (often three users) before any marketing copy is written about it.
- Failed claims trigger a rebuild, not a re-marketing.
- "Coming soon" features are labeled "coming soon" on public surfaces, not described in the present tense.

**The cheap test:** before any marketing copy uses the present tense for a feature, three real users have used it for at least two weeks.

---

## Principle 5 — Be impact-accountable, not intent-accountable

> "We prioritize design's impact on the community over the intentions of the designer." — [Design Justice Network Principle 3](https://designjustice.org/read-the-principles).

We don't get to say "but we *meant* well" if the product makes someone's job worse.

**What this looks like in practice:**

- Every release goes out with a measurable claim ("this should save the grants manager X minutes per week" or "this should reduce time-to-first-trainer-result by Y").
- We measure and report whether the claim held.
- When a claim fails to hold, the correction is published — not buried.
- Quarterly audits ([`audits/`](./audits/)) grade every Coach House project against this principle. We publish what we got wrong.

**The cheap test:** for every feature shipped this quarter, can you point at evidence (qualitative or quantitative) that it delivered what it claimed?

---

## The single closing test

If the workers on the other end of any Coach House product — the grants manager at Southwest Center, the parent searching for a QPR trainer, the neighbor planning a Friday night on East Broadway, the first-time nonprofit founder in Louisville — read everything on our marketing pages and used every feature, would they recognize themselves and their work, or would they recognize a vendor's idea of what their work is like?

If the first — we're doing it.
If the second — rewrite.

---

## Sources we cite

- [ISO 9241-210:2019 — Human-centred design for interactive systems](https://www.iso.org/standard/77520.html)
- Don Norman, *The Design of Everyday Things* (revised 2013) and *Design for a Better World* (2023)
- Sasha Costanza-Chock, *Design Justice* (2020) — [open access](https://designjustice.mitpress.mit.edu/)
- Tim Brown, *Change by Design* (2009)
- [GOV.UK Design Principles](https://www.gov.uk/guidance/government-design-principles)
- [Design Justice Network Principles](https://designjustice.org/read-the-principles)

---

*Principles version 0.1 — 2026-05-20. Revisions in git history.*
