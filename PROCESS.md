# Process

How a Coach House feature actually moves from observation to shipped to validated.

This is the studio-level operating practice. It's deliberately lighter than the Bothy-specific version that preceded it, because Coach House is a small studio and the practice has to be doable by one person on a Tuesday — not require a research department.

---

## What changed in this version

Earlier iterations of the Coach House framework required a weekly customer-interview cadence and quarterly customer councils. We tried that and learned it didn't fit the studio's actual shape: pilot users are nonprofit workers with limited time, the founder cannot reliably hold a recurring research calendar, and forcing the cadence produced research-theater more than research.

**The new posture, set 2026-05-20:** scheduled interviews are not required. Conversations are valued when they happen naturally — pilot check-ins, retrospective post-launch calls, "show me how you used this last week" walk-throughs. Passive observation and email feedback are first-class research inputs alongside conversation.

The protocol in [`customer-conversations/PROTOCOL.md`](./customer-conversations/PROTOCOL.md) is now framed as *"if you do an interview, here's how"* — not *"you must do interviews on this cadence."*

---

## The per-feature five-gate process

Every feature passes through five gates before it can appear in marketing copy. The gates are deliberately phrased so a single founder can run them.

### Gate 1 — Evidence (before any code)

Before building, name the **observations** that motivated this feature. Each is one or more of:

- A direct quote from a user conversation (recorded in a session note).
- A passive observation — something we watched a user do (or fail to do) in a screen share, a Loom, or live.
- An email or message from a user describing a pain.
- A pattern from instrumentation (e.g., "12 of 18 pilot orgs never opened the calendar tab").
- A repeated request — same thing asked by three independent users.

**The bar:** the source of the feature is something that happened in the world, not something that occurred to us. Designer intuition is allowed to *prompt* the question; it is not allowed to *close* it.

If you cannot name the observation, the feature is speculative — label it as such and either schedule the observation work or shelve the feature until evidence shows up.

### Gate 2 — Specify (write down before building)

A short doc per feature. One page is plenty. It contains:

- **The observed problem** in the words of the worker, not paraphrased.
- **Who is most affected.** Be specific: the grants manager at a mid-tier nonprofit, the parent in a rural county, the first-time founder who has never filed an SOS form.
- **What "better" looks like** — measurable if possible (saves X minutes, reduces Y context switches, lifts Z completion rate).
- **What we're explicitly NOT solving** in this feature.
- **The dignity test:** would a worker be embarrassed to demo this feature to a peer? If yes, redesign before shipping.

This doc is the artifact that makes the gate auditable. It lives in the repo next to the code, not in a tool nobody opens.

### Gate 3 — Design (prototype before coding when possible)

Sketch in Figma, on paper, or as a hand-drawn flow before committing to production code. Walk one real user through the sketch. Watch their reaction.

If they squint, redesign. If they nod and immediately ask "when can I have this?" you're on track.

For small or obvious features, a static HTML mock is often faster than a Figma file. Use what gets to a real reaction fastest. The point is the reaction, not the artifact.

### Gate 4 — Evaluate (ship narrow, watch, measure)

- Ship to a small named cohort first (often three users), not the full customer base.
- Watch usage for at least two weeks.
- Did the measurable claim from Gate 2 hold? If not, why?
- A failed claim reopens the design — it does not relax into a re-marketed claim.

Instrumentation makes this easier; conversation makes it richer. Both are useful. Neither alone is enough.

### Gate 5 — Marketing eligibility

A feature is **not** marketing-eligible until Gate 4 closes. Until then:

- Don't put it in present-tense copy on the public site.
- Don't put it in the pricing tier as if it's available.
- "Coming Q3" is fine as long as Q3 is honest.

When a feature passes Gate 4, the marketing copy is written to the [five marketing tests](#the-five-marketing-tests) below.

---

## The five marketing tests

Marketing is where HCD positioning most often fails: the homepage claims "human-centered" while being written without any of the practice the term implies. Every claim on a public Coach House page passes these five tests before it ships.

**Test 1 — Source.** Every benefit claim traces to a real conversation, observation, or instrumented behavior. If you can't name the person (or the anonymized cohort), don't make the claim.

**Test 2 — Specificity.** Vague benefit language is a tell that the writer wasn't grounded in observation. *"Streamline your grant management workflow"* is the bad version; *"Stop opening four browser tabs to remember when you last called Brown-Forman"* is the good one.

**Test 3 — Worker-first.** Read the page imagining you're the worker, not the buyer. Does it talk about *your* week getting better, or about the buyer's dashboard looking good?

**Test 4 — Dignity.** If a current user read the page, would they feel respected or condescended-to? If their previous workflow is described as "broken" or "outdated," they hear "you were doing it wrong." Bad HCD marketing.

**Test 5 — Verifiable claim.** Any claim with a number is a tested claim with a sample population. *"Saves 50% of your fundraising time"* without receipts is a draft, not a published claim.

If any test fails — rewrite or remove. Anything that can't pass sits in the draft folder until the product catches up.

---

## Cadence (what we actually do month-to-month)

The earlier version of this framework required a fixed weekly interview cadence. The current version targets the rhythm a single-founder studio can actually hold. Adjust based on what's sustainable.

### Per-feature (always)

- Run the five gates above.
- Record evidence in the relevant project repo (in a `customer-conversations/sessions/` folder when present, or inline in the feature spec when not).
- Reference the evidence in the PR description using the scaffolded template (`scaffold/pull_request_template.md`).

### Per-month (default cadence)

- **Review.** Read whatever conversations, emails, and observations accumulated in the prior month across all active projects. Note patterns and surprises.
- **Audit one piece of marketing copy** against the five tests. Rewrite or retire what fails.
- **Audit one shipped feature.** Did it deliver the claim it was shipped against? Publish the answer.

### Per-quarter (default cadence)

- **Portfolio audit.** Pick the active Coach House projects and score each against the framework. Use [`audits/_TEMPLATE.md`](./audits/_TEMPLATE.md). Publish a combined report.
- **Anti-pattern check.** Walk through [`ANTI-PATTERNS.md`](./ANTI-PATTERNS.md) and self-grade. Where are we slipping?
- **Pattern review.** Did any new design or code pattern ship across two or more projects this quarter? If so, document it in [`patterns/`](./patterns/).

### When conversations happen naturally (no cadence forced)

- A pilot user emails feedback — log it, link it, and answer it.
- A user gets on a call for a check-in or a launch — use [`customer-conversations/PROTOCOL.md`](./customer-conversations/PROTOCOL.md) and write the session note.
- A new project kickoff calls for a discovery conversation — use the protocol.
- A retrospective post-launch conversation surfaces — record it.

We do not require these to happen on a calendar. We require that when they happen, they are captured.

---

## How this differs from "design thinking" workshops

A few honest distinctions:

| Design-thinking workshop | Coach House process |
|---|---|
| Sticky notes, personas, ideation in a room | Real conversations, screen shares, code |
| Output: a deck, a journey map | Output: a shipped feature with measured impact |
| Cadence: a multi-day offsite | Cadence: a five-gate process per feature |
| Success: alignment | Success: workers recognize themselves in what shipped |

We're not against workshops. We're against substituting workshops for the work.

---

## When this process should bend

Process exists to serve the work, not the other way around. Cases where the gates compress:

- **Bug fixes** — evidence is the bug itself; specify the fix; ship.
- **Security or compliance fixes** — same: ship, document.
- **Tiny copy tweaks** — pass the marketing tests; ship.
- **Internal tooling for the studio** — lighter touch; we are the users.

Cases where the gates *do not* bend:

- **Anything that touches a public-facing surface** (landing page, pricing, in-product claim) — five tests, every time.
- **Anything that adds a new feature** — five gates, every time.
- **Anything that changes how a worker accomplishes their core task** — five gates, every time.

When in doubt, the gate exists. Bending the process is a decision made out loud, not a habit.

---

*Process version 0.1 — 2026-05-20. Revisions in git history.*
