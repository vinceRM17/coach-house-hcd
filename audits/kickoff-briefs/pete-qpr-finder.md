# Project Kickoff — Pete QPR Finder

> **Filled retroactively on 2026-05-20.** Pete QPR Finder launched as a Coach House-built tool for The Pete Foundation before the kickoff template existed; this captures the answers as they would have been written on day one, reconstructed from the live product and the project memory.

## Project name

**Pete QPR Finder** — a public directory of QPR (Question, Persuade, Refer) gatekeeper suicide-prevention trainings + bookable trainers, Kentuckiana-first.

Live: https://pete-qpr-finder.vercel.app
Built by Coach House for The Pete Foundation.

---

## Who's the worker?

Two distinct user roles, both worth naming:

**Primary user — the parent / community member searching.** Often a parent in Kentucky (occasionally Indiana, Ohio, Tennessee, West Virginia) who has heard about QPR training and wants to find one. They search on a phone, in five minutes, possibly while the kid is upstairs. They are not researchers. They want a trainer near them, soon, who is real and active.

**Secondary user — the QPR trainer maintaining their listing.** A certified QPR trainer who, prior to this product, had no consistent place to publish their upcoming sessions. Uses the admin side via magic-link login to publish a session or update a profile.

**Buyer:** The Pete Foundation (Vince is a board member with authority to build this without external sign-off). The buyer's win is *more people trained in QPR in their service area* — that's the mission. The product is held against that, not against the foundation's dashboard appeal.

---

## What's the rage moment?

> *"I want to take QPR training. I called three trainers from a Google search and two of them have moved on. There's no list."*

The lived-out version: a parent decides to act on what they've heard about suicide prevention in Kentucky youth, opens a search engine, finds inconsistent or outdated information, and either gives up or contacts trainers individually only to find dead emails. The friction kills the intent.

Secondary rage moment (trainer side): *"I run a session every other month and I tell ten people each time, but I have no way to surface it publicly. I'd need to maintain my own Wix page just to list it."*

---

## What's the dignity test?

The parent must not feel patronized. QPR is a heavy topic; the page must not treat the searcher as someone who needs to be sold on the importance of preventing suicide — they're already there, or they wouldn't be searching.

❌ Failing version: *"Take the first step toward saving a life — register today!"*
✅ Passing version: *"Find a QPR trainer near you. Upcoming sessions and contact info below."*

Crisis context is honored without being weaponized: 988 + Crisis Text Line in the footer of every page (including 404), not as a marketing flourish.

---

## What's the measurable claim?

**Worker-level (parent searching):** A parent in Kentucky entering their ZIP code finds at least one trainer or upcoming session within 50 miles, with verified active status, in under five minutes.

**Trainer-level:** A certified QPR trainer can publish a new training session via magic-link admin in under 3 minutes from arrival on the site.

**Foundation-level:** Over a year, the directory drives at least N inquiries to trainers (target TBD by The Pete Foundation board; tracked via the inquiry form's submission count).

**How we'll measure:**

- ZIP search analytics: count of searches → result-count distribution.
- Inquiry form submission count.
- Trainer-side: time from `/login` to first training published (instrument the admin flow).
- Qualitative: occasional check-in with seeded trainers.

---

## What are we explicitly NOT solving?

- **Pete QPR Finder is not a training platform.** We do not deliver training. We connect parents to the people who do.
- **Pete QPR Finder is not a crisis hotline.** 988 + Crisis Text Line are surfaced because *crisis intent must be honored*, but routing in crisis is not the product. The product is *finding a future training* and *contacting a trainer*.
- **Pete QPR Finder is not a national directory.** Kentuckiana-first. Adjacent states (IN, OH, TN, WV) are seeded; further expansion is not the day-one promise.
- **Pete QPR Finder is not a generic mental-health resource directory.** QPR specifically. The narrower scope is the value.

---

## The first three Coach House questions this project will face

1. **Who is the worker?** — Parent in Kentucky searching on a phone; secondarily the QPR trainer publishing a session.
2. **What is the most recent observation that informed a feature decision?** — Vince's own QPR training delivery experience drove the ZIP-radius + inquiry-form shape. (Note: this is anti-pattern #3 territory — builder-as-user — and should be cross-checked with at least one external parent and one external trainer before the audit clears.)
3. **What feature is currently being claimed in marketing that hasn't cleared Gate 4 yet?** — The site is currently empty of seeded trainers as of 2026-05-21; the "find a trainer near you" promise is provisional until Vince and at least one other trainer are seeded.

---

## Where evidence will live

To be established. Suggested: `/Users/vincecain/Projects/pete-qpr-finder/customer-conversations/` if conversation cadence kicks in. Until then, inline in feature specs in `.planning/`.

---

## Linking back

Pete QPR Finder README will add:

> Coach House HCD practice: https://github.com/Coach-House/coach-house-hcd (pending org transfer)

---

*Retroactive kickoff brief — version 0.1 — 2026-05-20.*
