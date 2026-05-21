# Project Kickoff — Resolve Startup App

> **Filled retroactively on 2026-05-20.** Resolve Startup App shipped v3.0 before the kickoff template existed; this captures the answers as they would have been written on day one, reconstructed from the live product and the project memory.

## Project name

**Resolve Startup App** — a Resolve KY-branded guide that walks Kentucky founders through forming a nonprofit, end-to-end.

Live: https://resolve-startup-app.vercel.app
Three entity types supported (501(c)(3), 501(c)(4), 501(c)(6)). 9-step roadmap with entity-specific content, downloadable templates, cost tracking, and persistent progress.

---

## Who's the worker?

**The first-time nonprofit founder in Kentucky.** Almost never has done this before. Often a volunteer or community member with a specific mission but no formal background in entity formation. Knows there is paperwork involved; doesn't know what kind, in what order, or what it costs. Frequently working on the project on evenings and weekends around a day job.

Three sub-archetypes within the worker:

- **501(c)(3) founder** — most common; charitable / educational / religious mission.
- **501(c)(4) founder** — social-welfare / advocacy mission; rarer.
- **501(c)(6) founder** — trade / business association; rarest.

The diagnostic questionnaire exists specifically to help a founder who doesn't yet know which entity type fits.

**Buyer:** None directly — the product is free and Resolve-KY-branded. The buyer is *Resolve KY's mission* — equipping more Kentucky-based nonprofits to form correctly without paying $3-5K to a law firm or hitting filing rejections.

---

## What's the rage moment?

> *"I have a mission. I have people who want to help. I have no idea whether to incorporate in Kentucky or Delaware, or how to even start the paperwork."*

The lived-out version: someone with the energy to start a nonprofit hits the first formal step (incorporation), realizes there are six PDFs from the Secretary of State, three from the IRS, and a constellation of choices nobody named (registered agent? COI policy? articles language?), and either pays a lawyer they can't afford or stalls indefinitely.

Secondary rage moment: *"I started the 1023 application and then realized I should have done the bylaws and the COI policy first."*

---

## What's the dignity test?

The founder must not feel patronized for not knowing this. Most people in the U.S. don't know what a 1023 is; that's not a deficit, it's the default.

❌ Failing version: *"Nonprofit formation made easy — for newbies."*
✅ Passing version: *"Forming a Kentucky nonprofit involves filings with the state, the IRS, and your registered agent. Here's the order and the forms."*

The conditional-content cascading fallback (entity+state → state → entity+US → US-only) embodies the dignity test in code: if Kentucky-specific guidance exists for a given step, show it; otherwise show the next-most-specific. We never tell the founder *"this doesn't apply to your state"* — we always show the most-relevant version available.

---

## What's the measurable claim?

**Worker-level:** A first-time founder who completes the diagnostic + roadmap reaches a state of *application-ready* (articles drafted, bylaws drafted, EIN obtained, registered agent identified, COI policy drafted) within 30 days of starting — versus the typical 3-6 months of search-and-flounder.

**Cost-level:** The user knows what the formation will cost (state filing fees + IRS user fee + any registered-agent cost) before starting, with no surprise expenses appearing midway.

**Reach-level:** The product is used by N new Kentucky nonprofit founders per quarter (target TBD by Resolve KY).

**How we'll measure:**

- Roadmap step-completion analytics.
- Diagnostic completion rate.
- Cost-tracker engagement.
- Resend re-engagement emails (cron at `/api/cron/check-inactive`) — open + click rates.
- Qualitative: occasional check-in with users who reach the end of the roadmap.

---

## What are we explicitly NOT solving?

Locked out-of-scope, per the project memory:

- **No AI-generated legal documents.** Templates exist; AI drafting does not.
- **No payment system.** The product is free.
- **No mobile native app.** Web is the surface.
- **No direct SoS/IRS filing.** The product directs to the official filing pages; it does not submit on behalf of the user.
- **No live chat or AI chatbot.** Documentation is the model.
- **No community forum.** Not a peer-support product.
- **No multilingual.** Kentucky-English-first for now.

Backlog (in scope eventually, not yet):

- Multi-state expansion (Indiana first).
- Expanded template library (51 templates).
- Pre-filled templates with user data.
- Video tutorials.

---

## The first three Coach House questions this project will face

1. **Who is the worker?** — First-time Kentucky nonprofit founder. Three sub-archetypes by entity type. Often a volunteer working evenings.
2. **What is the most recent observation that informed a feature decision?** — The cascading-fallback content system was motivated by the recognition that founders need *something* for a step even when state-specific guidance is missing. (Note: this is designer-derived inference; would benefit from one or two real founder conversations to ground.)
3. **What feature is currently being claimed in marketing that hasn't cleared Gate 4 yet?** — The audit should confirm. Diagnostic recommendation scoring weights are explicitly flagged as needing attorney review — those should not be claimed as authoritative until reviewed.

---

## Where evidence will live

`/Users/vincecain/Projects/resolve-startup-app/.planning/` already houses ROADMAP, MILESTONES, and 14 phase folders under the GSD planning system. Conversation evidence would go in `customer-conversations/` adjacent to that.

---

## Linking back

Resolve Startup App README will add:

> Coach House HCD practice: https://github.com/Coach-House/coach-house-hcd (pending org transfer)

---

*Retroactive kickoff brief — version 0.1 — 2026-05-20.*
