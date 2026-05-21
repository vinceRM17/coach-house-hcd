# Anti-Patterns

Eight ways well-intentioned teams fail at HCD. Each one is a trap Coach House will hit if it doesn't stay alert. The defenses listed are the version we actually apply across the studio.

We name these explicitly because the failure mode for HCD-as-marketing is reliably the same: the term gets claimed; the practice doesn't ship. Naming the anti-patterns by hand makes the slippage harder to hide from ourselves.

---

## #1 — Research Theater

Conducting interviews and observation, then making decisions that don't reflect what was heard. Research becomes a ritual that validates pre-existing intentions.

**Defense:** every customer conversation ends with one written commitment: *"based on this conversation, we are/aren't going to do X."* Decisions get recorded immediately, in the session note, not abstracted into "themes" weeks later.

---

## #2 — Persona Fossilization

Personas created at the beginning of a project that get treated as ground truth two years later — even after we've talked to many more customers since.

**Defense:** when a project maintains personas, they get refreshed each quarter from the most recent conversations. Old personas get explicitly retired with a dated note about what changed. Personas at v0 (built from inference, not validated) are labeled as such and cannot defend a product decision in isolation.

---

## #3 — Testing With the Wrong Users

Showing a feature to a colleague, a friend, or another founder and calling that "user feedback." None of them are the worker the product is built for.

**Defense:** internal feedback is *design review*, not *user research*. Only feedback from people in our actual target user role counts as user research. We track the distinction in session notes (the role field) and in PR descriptions (evidence is from users, not peers).

---

## #4 — Leading Questions

*"Wouldn't it be useful if you could do X?"* reliably gets *"yes"* — because people are polite. This isn't research; it's confirmation-seeking.

**Defense:** all discovery questions are observational (*"show me how you did this last week"*) or forced-tradeoff (*"if you could only have one of X or Y..."*). Never *"would you like..."* The protocol in [`customer-conversations/PROTOCOL.md`](./customer-conversations/PROTOCOL.md) lists the banned formulations.

---

## #5 — Sample Size of One

A single passionate user says X, and we build X. But X may not generalize.

**Defense:** for any major new feature, require evidence from multiple independent sources (different users, different orgs, different contexts) before treating it as a roadmap item. Single-source requests get a sympathetic *"we'll think about that"* — not a build slot. For small features and bug fixes, the bar is lower; the rule scales with the size of the bet.

---

## #6 — Buyer-User Substitution

The buyer (executive director, foundation board, business owner who funded the directory) is not the user (grants manager, parent looking for a trainer, neighbor planning a Friday night). Designing for the buyer is "customer-centered." Designing for the user is "human-centered."

**Defense:** every feature names its **primary user role**. The buyer can lobby for features, but features get scored against the primary user's workflow, not the buyer's preferences. This shows up most visibly on dashboards — see [`patterns/worker-first-dashboard.md`](./patterns/worker-first-dashboard.md).

---

## #7 — Inhuman Pace

Burnt-out designers can't build burnout-relieving products. Building a tool at a pace that mirrors the burnout we're trying to solve is a contradiction the worker will eventually feel.

**Defense:** sustainable pace is a product principle, not a luxury. Multi-arc weekend pushes that ship the burnout-relief product produce credibility damage that customers eventually detect. When the calendar fills with things that require unsustainable hours, the *scope* changes — not the hours.

This is the anti-pattern Coach House has caught itself violating most often. It's worth re-reading.

---

## #8 — Marketing Faster Than Product

Writing claims about features that aren't shipped, or claims about benefits we haven't measured. This is the fastest way to lose authenticity in a category where authenticity is the differentiator.

**Defense:** every public claim runs through the five marketing tests in [`PROCESS.md`](./PROCESS.md). Anything that can't pass sits in the draft folder until the product catches up. "Coming Q3" with an honest Q3 is allowed; present-tense claims about future features are not.

---

## The honest self-grade

Twice a year, Coach House walks down this list and grades itself: **preempted / at risk / violating / clean.** The grade is published with the quarterly audit (see [`audits/`](./audits/)).

The most useful question to ask at audit time is not *"which anti-pattern are we violating most flagrantly?"* but *"which one have we stopped looking at?"* That's where slippage hides.

---

*Anti-patterns version 0.1 — 2026-05-20. Revisions in git history.*
