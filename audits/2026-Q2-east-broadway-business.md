# 2026-Q2 East Broadway Business HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Live URL:** https://east-broadway-business.vercel.app
**Repo:** `~/Projects/east-broadway-business/`
**Prior audit:** None (first)

First quarterly audit for the East Broadway Business Association site. The product is a 56-business directory + Mapbox map + events + leadership + get-involved forms.

---

## Part 1 — Public surface vs. the five marketing tests

Pages audited: `/`, `/about`, `/directory`, `/events`, `/leadership`, `/get-involved`.

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| "56 businesses on East Broadway" | **PASS** | Verifiable — the directory shows them |
| Mapbox locations of each business | **PASS** | Geocoded; co-located businesses grouped |
| Leadership info per page | **PASS** | Verifiable presence |
| Any claims about *outcomes* (members benefiting, visitors converted) | **NONE YET** | The site is informational; no benefit claims that need sourcing |

**Score: 3 PASS, no benefit claims yet.**

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| `/directory` shows specific business names + map pins | **PASS** | Concrete |
| Events page lists specific upcoming events | **PASS / TBD** | Depends on whether events are populated; structure is specific |
| Leadership names actual people | **PASS** | Specific |
| Get-involved form asks for specific information | **PASS** | Specific |

**Score: 4 PASS or PASS-pending-data.**

### Test 3 — Worker-first

The two user roles to test against:

**Neighbor / visitor (primary worker):**

| Element | Verdict | Notes |
|---|---|---|
| Homepage leads with what the corridor offers, not with EBBA's mission statement | **TBD** | Verify against live page; if mission-first, consider re-ordering |
| Directory is searchable + filterable | **TBD** | Are there filters by category (food / retail / services)? |
| Map shows where businesses are | **PASS** | The Mapbox integration is the worker's primary affordance |

**EBBA leadership (secondary worker):**

| Element | Verdict | Notes |
|---|---|---|
| Adding a business / event is doable in <5 min | **TBD** | Depends on the admin / forms UX |

**Score: 1 PASS / 3 TBD.** The TBDs reflect that the auditor (Coach House) needs to do a fresh walkthrough of the live page to grade these — they're answerable but not from memory alone.

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| The directory presents businesses warmly, not transactionally | **TBD** | Verify on live |
| The site reads like a neighbor showing off the strip, not a vendor cataloging accounts | **TBD** | Verify on live |
| Forms (get-involved) ask reasonable questions without bureaucratic excess | **TBD** | Verify on live |

**Score: 3 TBD.** Live walkthrough required to grade properly.

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| "56 businesses" | **PASS** | Verifiable count |
| "Members of the East Broadway Business Association" | **PASS** | Verifiable membership |
| Any numeric claims about traffic, engagement, or impact | **NONE YET** | The site doesn't claim outcomes; nothing to verify |

**Score: 2 PASS, no verifiability gaps.**

### Overall public-surface score

**Approximately 13 PASS / 6 TBD / 0 FAIL across ~19 graded items.** The TBDs are not failures — they're items requiring a fresh live walkthrough before this audit can grade them. Action item below.

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **56-business directory:** **PARTIAL** — built against EBBA's existing member roster. The roster is a real source (community-derived data) but not a worker-side observation.
- **Mapbox directory map:** **FAIL** — designer-derived. No "neighbor wants to plan a Friday night and needs a map" conversation captured.
- **Events page:** **PARTIAL** — addresses a known leadership need; not validated against neighbor demand.
- **Get-involved forms:** **PARTIAL** — addresses a leadership need.
- **Resolve KY ecosystem section:** **PARTIAL** — captures a real cross-listing (the corridor's overlap with Resolve KY) but the user value isn't tested.

**Verdict: PARTIAL.** Most features are reasonable given EBBA's stated needs but unverified against neighbor-side observation.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** No observed user sessions documented.

### 3. Does your marketing pass the five authenticity tests?

**PASS-with-TBDs.** No active failures; six items pending live walkthrough.

### 4. Is the team operating at a sustainable pace?

**PASS.** The project appears to have been built without obvious burnout markers. Sustained as a maintenance-mode product.

### 5. Are you measuring outcome claims after shipping?

**FAIL.** No instrumentation of directory clicks, form submissions, or repeat visits beyond standard Vercel Analytics. No claim-validation loop.

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** Shipped before the gate existed. Future features should run it.

### 7. If you maintain personas, are they being refreshed?

**N/A.** No personas.

### 8. Are you separating buyer feedback from worker feedback?

**PARTIAL.** The buyer (EBBA leadership) is named; the worker (neighbor) isn't named with the same clarity, and most design decisions reflect leadership input rather than neighbor input.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** EBBA leadership is the affected community on the *leadership* side, and they have been involved. East Broadway *neighbors* are the affected community on the *visitor* side, and they have not been consulted.

### 10. Are you accountable for impact, not just intent?

**FAIL today, fixable.** No measurement; no follow-up. The natural metric — *did neighbor traffic to East Broadway businesses go up after launch?* — is not being tracked.

### 10-question summary

- **PASS: 1** (#4)
- **PARTIAL: 4** (#1, #3, #8, #9)
- **FAIL: 4** (#2, #5, #6, #10)
- **N/A: 1** (#7)

A well-built informational site that needs the *neighbor* user role brought into the practice. The leadership side is well-served; the neighbor side is inferred.

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | CLEAN | No research happening to be theatrical about |
| **#2 Persona fossilization** | N/A | No personas |
| **#3 Wrong users** | AT RISK | Decisions reflect EBBA leadership feedback (legitimate users) but no neighbor-side conversations. Half the worker base unrepresented. |
| **#4 Leading questions** | CLEAN | No interviews yet |
| **#5 Sample of one** | AT RISK | Leadership input is multi-source but neighbor input is zero-source |
| **#6 Buyer-user substitution** | AT RISK | EBBA leadership is named as buyer/secondary worker; the primary worker (neighbor) is implicit. Could drift if the product evolves to serve leadership at neighbors' expense. |
| **#7 Inhuman pace** | CLEAN | Maintenance mode, no visible burnout pattern |
| **#8 Marketing faster than product** | CLEAN | No marketing claims that outrun the product |

**Anti-pattern summary:** 4 clean / 3 at risk / 0 violating / 1 N/A.

The risks cluster around the same gap: the neighbor's voice isn't in the project yet.

---

## Part 4 — The closing test

> *"If a Louisville neighbor on a Friday afternoon opened east-broadway-business.vercel.app trying to plan dinner + a coffee stop on the corridor, would she find the site useful — and would the EBBA leaders maintaining it recognize her experience as the one they were building for?"*

**Honest answer:** The site looks structurally useful for the neighbor — a directory, a map, location info. But because no neighbor has been consulted, *what's missing* is invisible. (Filters by hours / category / family-friendliness? Reviews? "Open now" status? Hours of operation? Sponsored events?) The site as-is is *not wrong*; it might be *incomplete in ways nobody has surfaced.*

The EBBA leaders likely recognize the site as built for them on the maintenance side (forms, leadership pages) — that part has had real input.

**The fix is one Friday-night conversation with three neighbors.** Total cost: ~90 minutes including the walks.

---

## Action items (highest leverage first)

### Fix this week

1. **Coach House does a fresh live walkthrough** of the site as a neighbor would: phone, on East Broadway, on a Friday afternoon. Grade the TBD items in Part 1.
2. **Confirm the homepage leads with what the corridor offers**, not with EBBA's mission statement.

### Fix this month

3. **Have one neighbor conversation.** Stop one person on East Broadway. Ask: *"If you wanted to plan dinner + a stop on the strip tonight, would this site help you?"* Show them the live site. Watch. Ten minutes.
4. **Have one EBBA leadership check-in.** Ask the leadership team: which features have they used since launch? Which haven't they? What's missing that they expected to see?
5. **Wire one outcome metric.** Either: directory-entry click-through rate per business, OR get-involved form submission count quarter-over-quarter.

### Fix this quarter

6. **Decide on adding "Open now" status or hours-aware filtering.** This is the single most-likely-missing-feature based on the rage moment hypothesis ("which East Broadway places are open past 6pm?"). Validate the hypothesis with the neighbor conversation first; build only if confirmed.
7. **Consider a public "what we're working on" note** linking back to this audit, the Coach House practice repo, and the projected next features. Visible practice.

---

## What we got right since last audit

First audit. State to celebrate: the site is structurally clean, the data is real (56 actual businesses, real geocoded locations, real leadership), the scope is honestly narrow (corridor, not citywide), and the cross-link to Resolve KY captures a real ecosystem overlap. The product surface is good. The practice around it needs the neighbor's voice added.

---

## Why this audit exists

The Coach House practice grades every active project quarterly. The first audit's job is honest baseline.

**Next audit:** 2026-08-20.
**External auditor target:** one EBBA leadership member + one East Broadway neighbor — paid coffee card + a thank-you note.

— *Coach House research desk*
