# Project Kickoff

The one-page brief every new Coach House tool fills out on day one. Copy this file into the new project's repo (root or `docs/`), fill it in, commit it, link it from the project's README.

The point of the brief is not bureaucracy. It is to surface, before the first line of code, the answers to the questions that the Coach House process will repeatedly ask of the project later. If the answers are not yet known — that's a known unknown, and the brief says so.

---

## Project name

**[Name].**

One-line summary of what it does.

---

## Who's the worker?

The **primary user role** this is built for. Be specific:

- What's their job (or life situation)?
- What context do they use this in — at a desk during work hours, on a phone at the kid's soccer practice, on a Sunday night clearing their inbox?
- What scale of organization or situation is this for — solo, small team, mid-sized, enterprise; one-person household, family, neighborhood?

> e.g. **Bothy:** the grants manager at a small or mid-tier nonprofit (< $7.5M revenue) who is also doing development, board reporting, and at least one other role. They use this at a desk, often on a Sunday night.
>
> e.g. **Pete QPR Finder:** the parent in Kentucky who has heard about QPR training and wants to find a trainer near them. They search on a phone, in five minutes, possibly while the kid is upstairs.

---

## What's the rage moment?

The specific moment in the worker's current workflow where their face changes — where they sigh, apologize for their workflow, or describe the workaround they've built. The feature is what removes that moment.

> e.g. *"I have to open four tabs to remember the last time I emailed Brown-Forman."*
> e.g. *"I called every county QPR coordinator and most of them have moved on. There's no list."*
> e.g. *"I want to take the kids out on Friday but I don't know which East Broadway places are family-friendly past 6pm."*

If you can't name the rage moment yet — the brief says: **"TBD — to be observed in first three conversations."**

---

## What's the dignity test?

If the worker showed this product to a peer, would they feel respected — or would they feel diminished by how their previous workflow is implicitly described?

Articulate, in one sentence, the version of the page that would fail this test, and the version that would pass.

> e.g. ❌ *"Stop the chaos of disorganized grant tracking."*
> ✅ *"If you've held this work together with spreadsheets and notes, you've done something impressive. We built this for what comes next."*

---

## What's the measurable claim?

The specific outcome this product (or this feature, if you're using this template at feature scale) is supposed to deliver. Be specific. Be willing to be wrong.

> e.g. *"A grants manager opening Bothy on a Sunday night can complete one stewardship action in ≤2 clicks and ≤30 seconds, versus the 4-6 minutes their previous workflow took."*
> e.g. *"A parent searching for a QPR trainer in Kentucky finds at least one trainer within 50 miles of their ZIP code, with verified active status, in under five minutes."*

Including the **how we'll measure it** (instrumentation, follow-up conversation, both).

---

## What are we explicitly NOT solving?

This is the line that keeps scope honest.

> e.g. *"Bothy is not a CRM. We do not store donor history beyond what's relevant to current grant relationships. If a worker needs full CRM features, they keep their existing tool and we link to it."*
> e.g. *"Pete QPR Finder is not a training platform. We do not deliver QPR training; we connect parents to the people who do."*

---

## The first three Coach House questions this project will face

The portfolio audit (see [`audits/`](./audits/)) will eventually ask these of every project. Note your answers now so future-you isn't building them from scratch.

1. **Who is the worker?** (Answered above.)
2. **What is the most recent observation that informed a feature decision?** (Will be filled in as work proceeds.)
3. **What feature is currently being claimed in marketing that hasn't cleared Gate 4 yet?** (Should be empty; if not, this is what needs fixing.)

---

## Where evidence will live

Each Coach House project keeps observation evidence in one of:

- A `customer-conversations/sessions/` folder in the project repo (when conversation cadence is happening), OR
- Inline references in feature specs / PR descriptions (when not), OR
- Both.

The studio practice does not require either format — only that the answer to "where would I find evidence for this feature?" is **knowable** rather than vibe-checked. Note here where this project keeps its evidence:

> **Evidence lives at:** `[path]` (e.g., `customer-conversations/sessions/`, or `docs/research-notes/`, or `feature-specs/`).

---

## Day-one scaffolding

The following drop in from [`scaffold/`](./scaffold/) at kickoff:

- `scaffold/pull_request_template.md` → `.github/pull_request_template.md`
- `scaffold/customer-conversations-skeleton/` → `customer-conversations/` (only if the project will keep session notes)
- `scaffold/README-template.md` → starting point for the project README

A helper script lives at [`scripts/init-coach-house-project.sh`](./scripts/init-coach-house-project.sh).

---

## Linking back

The new project's README should include this line near the top:

> Coach House HCD practice: [github.com/coach-house/coach-house-hcd](https://github.com/coach-house/coach-house-hcd)

(URL TBD once the public repo is published.)

---

*Kickoff template version 0.1 — 2026-05-20.*
