# 2026-Q2 Bothy HCD Audit

**Date:** 2026-05-19 (original) → reformatted 2026-05-20 into Coach House HCD audit template
**Auditor:** Founder + AI co-pilot (self-conducted; external auditor scheduled Q3)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Live URL:** https://coach-house-grants.vercel.app (Bothy; will alias to bothy.so)
**Source document:** `coach-house-grants/HCD-SELF-AUDIT.md` (2026-05-19)
**Prior audit:** None (first)

This is a deliberately honest audit. Bothy just published a white paper arguing that "lived HCD" is the only kind worth claiming. If our own product can't survive its own framework, that's the thing to know first.

---

## Part 1 — Public surface vs. the five marketing tests

Pages audited: `coach-house-grants.vercel.app` — Hero + Problem + Solution + Pricing + Closing.

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| "Pilots live at Southwest Center, Educational Justice, and 28 other Louisville nonprofits" | **PASS** | Verifiable — 30 deployed dashboards |
| "Average team reclaims ~4 hours/week per fundraiser" | **FAIL** | Sourced to "Lokalise 2026 tool-fatigue report, applied to a 60-hr nonprofit workweek" — extrapolation, not measurement. Zero hours-reclaimed data from actual pilot users. |
| "77% of nonprofit employees report burnout" | **PASS** | Givebutter 2026 — verifiable sector data |
| "8 in 10 say disconnected tech systems contribute to burnout" | **PASS** | Mission Edge / Momentive 2026 — verifiable |
| "Three of our pilot users described the funder profile view as 'finally, one screen instead of seven tabs'" | **N/A** | This is the white paper's example — we haven't actually collected this quote |

**Score: 3 PASS / 1 FAIL / 1 NOT-COLLECTED.**

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| Hero headline: "Built for the human doing the work" | **PARTIAL** | Sentiment right; phrase still abstract |
| Hero subhead: "One tool that replaces seven — tracking, stewardship, reporting, funder relationships, deadlines, and search" | **PASS** | Specific to the actual work |
| Problem H2: "The grant manager you can't afford to lose is using seven tools to log one thank-you note" | **PASS** | Concrete, narratively true |
| Solution copy: "drag-and-drop pipeline stages, stage-aware fields that match where each grant actually is" | **PASS** | Specific behavior |
| Solution footer claim: "Average team reclaims ~4 hours/week" | **FAIL** | Vague benefit framing — and unverifiable |

**Score: 3 PASS / 1 PARTIAL / 1 FAIL.**

### Test 3 — Worker-first

| Element | Verdict | Notes |
|---|---|---|
| Hero copy names "the development director, the grants manager, the executive director who's also the fundraiser" | **PASS** | Names the worker |
| Closing: "A grant tool that helps your team stay" | **PASS** | Retention framing — worker-first |
| Hero demo card shows metric tiles ("Active grants 12 / Funded $ this yr $184K / Tasks due 4") | **FAIL** | This is an ED dashboard. A grants manager doesn't open Bothy to look at totals — she opens it because she has to write something today. The card demos *the buyer's view* — see [`patterns/worker-first-dashboard.md`](../patterns/worker-first-dashboard.md) for the right pattern. |
| Pricing page implies buying decision will be made by ED | **PARTIAL** | Realistic — but could surface the worker-benefit more clearly above the price |

**Score: 2 PASS / 1 PARTIAL / 1 FAIL.**

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| Hero framing ("Built for the human doing the work") | **PASS** | Respectful |
| Problem section ("More tools weren't the answer") | **PASS** | Doesn't blame the worker |
| Solution section strikethrough list ("Grant tracker spreadsheet ~~Sticky notes~~ ~~Drive folder~~") | **FAIL** | To the grants manager who's been holding it together with sticky notes for 4 years, the strikethrough reads as "all this you've been doing is wrong." Explicit dignity-test failure. |
| Closing tone ("A grant tool that helps your team stay") | **PASS** | Implies worker value, not blame |

**Score: 3 PASS / 1 FAIL.** *Highest-impact single fix on the site.*

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| "~4 hours/week per fundraiser by eliminating context-switching" | **FAIL** | Not tested on customers |
| "$50K average replacement cost per burned-out employee" | **PASS** | Sourced sector data |
| "First 50 paid customers get a custom Candid-verified opportunity build at signup" | **PASS** | Verifiable promise |
| Pricing: "14-day money-back guarantee" | **PASS** | Verifiable promise |
| Demo card showing "$184K funded this yr" | **PARTIAL** | Mock data presented as real — add "Sample data" microcopy |

**Score: 3 PASS / 1 PARTIAL / 1 FAIL.**

### Overall public-surface score

**18 PASS / 4 PARTIAL / 5 FAIL across 27 graded items.**

Material failures:

1. **"~4 hours/week" claim** — fails Test 1 AND Test 5. Remove or replace with verifiable claim.
2. **Strikethrough-tools vignette** — fails Test 4 (dignity). Rewrite as *"you've built this stack out of necessity"* or remove.

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **LONNA-FIX-V1:** **PASS** — direct Lonna feedback
- **STEWARDSHIP-V1/V2:** **PARTIAL** — test-user idea, multiple sources implied but not documented
- **REPORTING-V1:** **PARTIAL** — test-user idea, source not documented
- **FUNDER-PROFILE-V1:** **FAIL** — inferred from need, no documented conversation
- **RECURRING-V1:** **FAIL** — inferred from common patterns
- **SEARCH-V1, LAPSE-V1, METRICS-V1:** **FAIL** — designer-driven

**Verdict: FAIL.** Most features pass an internal logic test but not a 3-worker traceability test.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** Lonna has used the full stack. Bryan has the same feature set on EJ but his usage has not been actively observed. 28 other dashboards don't have V2 features. Marketing references features that have not cleared the gate.

### 3. Does your marketing pass the five authenticity tests?

**PARTIAL.** 18 PASS / 4 PARTIAL / 5 FAIL — needs revision in two specific places before the marketing can claim it has cleared.

### 4. Is the team operating at a sustainable pace?

**FAIL.** The session producing the product spanned 2026-05-19 into 2026-05-20 with arc transitions between pilot bug-fixes, market research, SaaS scaffold, brand build, and white papers. Anti-pattern #7 firing. The founder built a burnout-reduction product through a sleep-compromised pattern.

### 5. Are you measuring outcome claims after shipping?

**FAIL.** No instrumentation. No time-saved measurement. Lonna's qualitative feedback exists; nothing else is being measured. (Instrumentation design exists at `coach-house-grants/INSTRUMENTATION-DESIGN.md` ready for Phase 1.)

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** The gate is informal. Code-propagation markers exist (`LONNA-FIX-V1`, `AUDIT-FIX-V1`) but those are safety markers, not HCD process compliance.

### 7. If you maintain personas, are they being refreshed?

**PARTIAL.** Four personas created during this session (Lonna at SWC, Bryan at EJ, Tod at DCA, Rob at CrossRoads). All v0 (inference). Refresh cadence scheduled, not yet practiced.

### 8. Are you separating buyer feedback from worker feedback?

**PARTIAL.** Lonna is *both* at SWC, which collapses the distinction. Same at most small nonprofits. Mid-tier orgs with separate ED + grants manager require explicit thinking that hasn't happened yet.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** Lonna's feedback incorporated (LONNA-FIX-V1). No structural community involvement yet.

### 10. Are you accountable for impact, not just intent?

**FAIL today, fixable.** No measurement = no accountability for impact. White paper published; measurement infrastructure to make claims falsifiable is not yet built.

### 10-question summary

- **PASS: 0**
- **PARTIAL: 5** (#3, #7, #8, #9, parts of #1)
- **FAIL: 5** (#2, #4, #5, #6, #10)

Bothy has an HCD-themed product without yet having an HCD-grade operating practice. Framework exists. Marketing claim made. Infrastructure to *live* the claim is not built — that's the highest-priority infrastructure to build.

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | AT RISK | No research theater yet — because no research yet. Risk is the inverse: making decisions without research we can pretend was informing them. |
| **#2 Persona fossilization** | PREEMPTED | No personas existed; created now with explicit quarterly refresh cadence. |
| **#3 Wrong users** | VIOLATING | Most product decisions in the latest session were founder-driven, then validated against an internal logic test ("does this make sense?") rather than a customer observation test. |
| **#4 Leading questions** | UNKNOWN | No documentation of how Lonna's feedback was elicited. Protocol now exists; future-proofed. |
| **#5 Sample of one** | VIOLATING | Most V2 features built off Lonna's feedback plus inference — not three independent customers. |
| **#6 Buyer-user substitution** | PARTIAL VIOLATION | Hero demo card is metric-tile-heavy (ED view). Worker-first dashboard pattern documents the fix. |
| **#7 Inhuman pace** | VIOLATING | Multi-arc session running into the night. Burnout-relief product built on burnout-producing pattern. |
| **#8 Marketing faster than product** | VIOLATING | "AI-drafted reports" in Premium not built. "~4 hours/week reclaimed" claimed, not measured. Both need correction. |

**Anti-pattern summary:** 1 preempted / 2 at risk-or-unknown / 4 violating / 1 partial. 5 of 8 anti-patterns are currently being violated.

---

## Part 4 — The closing test

> *"If our pilot users (Lonna at SWC, Bryan at Educational Justice, Tod at DCA, Rob at CrossRoads) read everything on our website and every feature in our product, would they recognize themselves and their work — or would they recognize a vendor's idea of what their work is like?"*

**Honest answer:** Lonna would recognize her work in some places (the stage-transition flow, the funder profile, the stewardship today widget) but not in the marketing copy. The marketing reads like a smart outsider's *idea* of what her work feels like — accurate in shape, generic in specifics. The strikethrough vignette especially would land badly.

Bryan, Tod, and Rob have not seen the marketing yet — we are guessing how they'd respond.

The bar to clear: making the website's voice indistinguishable from how Lonna would describe her own week.

---

## Action items (highest leverage first)

### Fix this week

1. **Remove or qualify "~4 hours/week reclaimed"** — replace with sourced sector data OR add "(estimated)" with the underlying study cited.
2. **Rewrite the strikethrough-tools vignette** — drop the strikethrough framing.
3. **Add "Coming Q3" labels to AI-drafted reports + Monthly opportunity refresh** — anything sold but not shipped.
4. **Add "Sample data" microcopy to the Hero demo card** — kill ambiguity about whether the numbers are real.

### Fix this month

5. **Replace the Hero demo card layout** with the [`worker-first-dashboard`](../patterns/worker-first-dashboard.md) pattern.
6. **Implement instrumentation per `coach-house-grants/INSTRUMENTATION-DESIGN.md`** — Phase 1 of SaaS migration.
7. **Establish the per-feature gate as a commit-message convention** — every feature commit references the observations that motivated it.
8. **Run 2-3 real conversations** — Lonna first, then Bryan + cold prospect. Use [`customer-conversations/PROTOCOL.md`](../customer-conversations/PROTOCOL.md).

### Fix this quarter

9. **Cap product work at a sustainable cadence** — no more multi-arc 24-hour pushes. Document weekly sprint constraints explicitly.
10. **Publish a `/process` page on coach-house-grants.vercel.app** referencing this audit. Meta-transparency is the differentiator.
11. **Add a public "what we got wrong" log** — corrections + retired claims with dates. The credibility move no incumbent will match.

---

## What we got right since last audit

This is the first Bothy audit; the prior state was *unaudited*. What's improved is that the audit now exists, the framework is in place, the four pilot personas have been created (even at v0), and the customer-conversations protocol + template + scaffolding are deployed. The infrastructure to *practice* HCD now exists. The practice itself starts now.

---

## Why this audit exists

If we don't grade ourselves against our own framework, we forfeit the right to say we're doing HCD. We can claim it. But claiming isn't doing.

**Next audit:** 2026-08-19 (quarterly cadence).
**External auditor:** one pilot user + one peer-org founder, paid 2 hours of $100 credit + a thank-you note.

— *Coach House research desk*
