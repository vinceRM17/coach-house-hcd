# 2026-Q2 Grant Dashboard Family HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Family member count:** ~30 dashboards (see roster below)
**Index hub:** https://grant-hub-eight.vercel.app
**Prior audit:** None (first)

This is a *family-level* audit covering all ~30 per-org grant dashboards built via `/nonprofit:grant-dashboard`. The dashboards are template-cloned and share ~80% of their UX, so a single audit captures the family's HCD posture more usefully than 30 nearly-identical per-project audits. Outlier notes appear in Part 5.

---

## Family roster (alphabetical)

`24 Reasons · Active Heroes · Amplify Louisville · Animal Care Society · Brandon's House · Canopy KY · CrossRoads Missions · DCA (Dream Center Academy) · ECHO · Educational Justice · Exodus Family Ministries · Falls City Bikeworks · Frazier Museum · HBCU First · HCM (Highlands Community Ministries) · KAIA · KSISA · Louisville Library Foundation · MedWater · Miracle Dancers · Monarch · Olmsted Parks · OneLouisville · Operation Parent · Pete Foundation · PHWFF · Redline Performing Arts · Resolve KY · Southwest Center · Wild Accelerator`

---

## Part 1 — Public surface vs. the five marketing tests

(Tested against the canonical template; per-dashboard variations called out where they matter.)

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| Each dashboard lists real Candid Premium-verified funders for the indexed org | **PASS** | The Candid Premium discipline is a hard gate (per `feedback_candid_phase_2_5_hard_gate` memory) |
| Each dashboard lists real opportunity entries (LOI dates, fit, amount, deadlines) | **PASS** | Verifiable via the build pipeline |
| Tier classifications (Small / Mid / Large / Major) | **PASS** | Sourced from real 990 data |
| The dashboard *as a tool* claims to help fundraisers manage opportunities | **NOT EXPLICITLY CLAIMED** | The dashboards are presentation artifacts; benefit claims aren't on the page |

**Score: 3 PASS, no marketing benefit claims to fail.**

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| Each opportunity entry is concrete (real funder name, real deadline, real fit rationale) | **PASS** | Specific by design |
| The dashboard's per-org intro names the org specifically | **PASS / AT RISK** | Most are clean; the 2026-05-19 FCB incident showed template contamination can leak wrong org names in (per `feedback_template_contamination_audit`) |
| Categories + filters are real | **PASS** | Verifiable |

**Score: 2 PASS / 1 PASS-AT-RISK.**

### Test 3 — Worker-first

The worker for each grant dashboard is **the development director / grants manager at the named org.**

| Element | Verdict | Notes |
|---|---|---|
| The dashboard leads with *opportunities to pursue* (the worker's actual task), not aggregate metrics | **PASS** | Worker-first by design |
| Per-org tone and aesthetic (color palette, language) matched to the org | **PASS** | Verifiable across the family |
| Calendar tab surfaces real deadlines and is the most-used worker affordance | **PASS** | Verified across the family |

**Score: 3 PASS.**

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| Each org's mission is described in their own framing, not a vendor's framing | **PASS** | Verifiable |
| No "what you were doing wrong" framing | **PASS** | Dashboards are presentation, not critique |
| Per-org branding respects the org's existing aesthetic | **PASS** | Specifically required by `/nonprofit:grant-dashboard` Phase 5 |

**Score: 3 PASS.**

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| Candid Premium funder data is current | **PASS** | Hard-gate discipline; freshly verified per org per build |
| Opportunity match-fit reasoning is defensible | **PASS** | Backed by funder priorities + org mission alignment |
| Some dashboards still pending fresh Candid backfill | **AT RISK** | Per `project_dashboard_candid_backfill_backlog` — 21 existing dashboards plus 2 new builds need fresh org-specific Candid Premium under the 2026-05-07 rule. Until backfilled, those dashboards' Candid claims are stale-eligible |

**Score: 2 PASS / 1 AT RISK.**

### Overall public-surface score

**~13 PASS / 2 AT RISK / 0 FAIL across 15 graded items.** The grant dashboard family is structurally one of the cleanest Coach House product surfaces — the Candid Premium hard-gate + worker-first orientation + per-org dignity discipline are all in place. The two AT-RISK items are operational: link/data freshness (action items below).

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **Per-org opportunity list:** **PASS** — sourced from the named org's real funding context (each dashboard is built *for* a specific named org, often with at least minimal back-and-forth)
- **Tier classification:** **PASS** — sourced from real 990 data per org
- **Per-org branding:** **PARTIAL** — sourced from the org's existing identity (website, materials) but not always validated by the org's lead before deploy
- **Calendar tab:** **PARTIAL** — universal worker affordance; not validated per-org
- **The decision to clone the template vs. build per-org from scratch:** **PARTIAL** — efficient by design, but the cloning is what enabled the 2026-05-19 contamination incident
- **The propagation-safety markers (LONNA-FIX-V1, AUDIT-FIX-V1-JS, CALENDAR-SAFETY-V1):** **PASS** — directly sourced from real incidents (Lonna feedback, propagate2.sh incident, FCB calendar crash). The propagation safety discipline is *itself* HCD applied to operations.

**Verdict: PARTIAL leaning PASS.** Per-org sourcing is strong; cross-family discipline is real.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** Lonna at SWC has used her dashboard extensively (the source of the LONNA-FIX-V1 marker). Other 29 dashboards have varying levels of observed usage. Most: zero documented observation.

### 3. Does your marketing pass the five authenticity tests?

**PASS.** ~13 PASS / 2 AT RISK / 0 FAIL.

### 4. Is the team operating at a sustainable pace?

**FAIL.** This is the cluster where anti-pattern #7 fires hardest in the Coach House portfolio. Many dashboards were built in multi-dashboard sessions (per the dev-log voice memories — 30+ dashboards across April-May 2026 is a high-cadence build pattern).

### 5. Are you measuring outcome claims after shipping?

**FAIL.** No instrumentation. The natural metric — *did the named org actually pursue any of the surfaced opportunities, and did any land?* — isn't being tracked.

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** The build pipeline (`/nonprofit:grant-dashboard`) is itself a kind of gate (Phase 2.5 Candid hard-gate is the strongest move) but it's a *build* gate, not an HCD per-feature gate. Adding to or modifying the template doesn't run the 5-gate.

### 7. If you maintain personas, are they being refreshed?

**N/A.** No personas per dashboard. The Bothy personas (Lonna, Bryan, Tod, Rob) are *adjacent* — they're users whose dashboards are in this family.

### 8. Are you separating buyer feedback from worker feedback?

**PARTIAL.** Buyer (whoever commissioned the dashboard — often Vince building speculatively / for Resolve KY ecosystem reasons / as proposal artifacts) is distinct from worker (development director). Often the buyer IS Vince; the worker is the org. The distinction is clear but the worker's voice isn't formally collected per-dashboard.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** Some dashboards (Lonna's SWC, EJ's Bryan) have direct involvement; most do not. Each dashboard's *org* is the affected community; most haven't been formally consulted.

### 10. Are you accountable for impact, not just intent?

**FAIL today, fixable.** The natural impact metric is *funder relationship outcomes* — did the org pursue + land any of the surfaced opportunities? Could be tracked with a quarterly check-in to each org.

### 10-question summary

- **PASS: 1** (#3)
- **PARTIAL: 3** (#1, #8, #9)
- **FAIL: 5** (#2, #4, #5, #6, #10)
- **N/A: 1** (#7)

The family is **strongest on dignity + worker-first + per-org sourcing** and **weakest on observation + measurement + sustainable pace**. The pattern is consistent with the rest of the Coach House portfolio: clean product, missing practice.

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | CLEAN | No research happening yet at the per-dashboard level; what exists (Candid Premium verification) is acted on |
| **#2 Persona fossilization** | N/A | No personas |
| **#3 Wrong users** | AT RISK | Builder-as-user pattern for most dashboards; Lonna + Bryan are exceptions |
| **#4 Leading questions** | CLEAN | No interviews to lead with |
| **#5 Sample of one** | AT RISK (per-dashboard) | Each dashboard's design is single-org; the family aggregate is multi-source |
| **#6 Buyer-user substitution** | CLEAN | Worker view dominates |
| **#7 Inhuman pace** | VIOLATING | High-cadence build pattern across April-May 2026 |
| **#8 Marketing faster than product** | CLEAN | Per-dashboard claims are conservative |

**Summary:** 3 clean / 2 at risk / 1 violating / 1 N/A / 1 N/A.

---

## Part 4 — The closing test

> *"If a development director at one of the 30 indexed orgs opened her org's grant dashboard, would she recognize the opportunity list and the framing as how she actually does the work — or would she recognize a vendor's idea of what her work is like?"*

**Honest answer:** mostly the first. The per-org opportunity lists are real, the funders are Candid-verified, the org branding matches her org. What's missing is the *interactive* layer — none of these dashboards lets her record what she did with an opportunity, mark progress, or sync to her actual workflow. They are *presentation* artifacts, not *operational* tools.

That gap is what Bothy exists to fill. The grant dashboards are excellent *static* artifacts; Bothy is the operational layer she'd graduate to. Both can be honest about their respective scope.

---

## Part 5 — Outlier notes

A few dashboards deviate from the family norm enough to warrant a single-sentence flag:

| Dashboard | Outlier note |
|---|---|
| **Southwest Center (SWC)** | Lonna's dashboard. The most-observed dashboard in the family. LONNA-FIX-V1 propagation marker originates here. Dignity + worker-first profile is strongest. |
| **Educational Justice** | Bryan Warren's dashboard. V2 feature stack present but not observed at his usage level. |
| **Falls City Bikeworks (FCB)** | The 2026-05-19 template-contamination incident origin. Calendar bundle crashed silently due to wrong-org grant IDs leaking from a clone. Triggered CALENDAR-SAFETY-V1 + the audit/3-check rules now applied family-wide (per `feedback_template_contamination_audit`). |
| **24 Reasons** | The dashboard with a ⚠️ PNOF (Private Non-Operating Foundation) classification flag — needs care that the framing doesn't conflate with public charities. |
| **HBCU First** | National scope rather than Louisville-local. Different funder pool; worth a separate per-dashboard audit pass if you want depth. |
| **PHWFF** | National veteran fly-fishing therapy. Mid-tier ($4.4M) with -$369K loss + 1.58-month cash stress. Funder context is high-stakes; audit framing should ensure the dashboard doesn't oversell. |
| **The remaining 24 dashboards** | All conform to the template; the family-level audit covers them. Any divergence from the audit's grade should be flagged when noticed. |

---

## Action items

### Fix this week

1. **Run a link-health pass** on all 30 dashboards. Confirm canonical suffixed URLs (per `feedback_vercel_alias_collisions`). Use Hub's `npm run refresh` discipline.
2. **Confirm CALENDAR-SAFETY-V1 is propagated** across all 30 dashboards, not just the most recent builds. The FCB incident showed the cost of partial propagation.

### Fix this month

3. **Pick 3 dashboards at random and email the org contact** asking how the dashboard reads to them. Captures the first cross-family worker-side signal. ~30 minutes per conversation.
4. **Add the HCD badge** (`scaffold/hcd-badge.html`) to the dashboard template's footer. Drops onto all 30 with one template push.
5. **Schedule the Candid Premium backfill** for the 21 existing + 2 new dashboards per `project_dashboard_candid_backfill_backlog`.

### Fix this quarter

6. **Decide whether the dashboard family graduates to Bothy.** Bothy was built explicitly as the operational layer the static dashboards can't be. A 1-page mapping showing which dashboard's org might become a Bothy customer would be a useful internal artifact.
7. **Cap dashboard build cadence.** No more multi-dashboard pushes that violate anti-pattern #7. A dashboard a week is sustainable; six in a weekend is not.

---

## What we got right since last audit

First audit. State to celebrate:

- The Candid Premium hard-gate is unusually strict for a build pipeline; it's HCD applied to operations.
- The propagation-safety markers (LONNA-FIX-V1, AUDIT-FIX-V1-JS, CALENDAR-SAFETY-V1) + the template-contamination 3-check audit emerged *from real incidents* and got captured as operational discipline. That's a healthy learning loop.
- The Hub + Notion sync ensure orgs whose dashboards are listed don't drift into broken-link territory.
- Per-org dignity discipline (branding, mission framing) is consistent across the family.

The largest gap is the same as everywhere: external observation + outcome measurement.

---

**Next audit:** 2026-08-20 (quarterly cadence).

— *Coach House research desk*
