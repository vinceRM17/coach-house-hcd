# 2026-Q2 Resolve Startup App HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Live URL:** https://resolve-startup-app.vercel.app
**Repo:** `~/Projects/resolve-startup-app/`
**Prior audit:** None (first)

First quarterly audit for Resolve Startup App. The product is a Resolve-KY-branded web app guiding Kentucky founders through nonprofit formation. v3.0 (three entity types: 501(c)(3) / (c)(4) / (c)(6)) shipped 2026-05-07; paused between milestones at audit time.

---

## Part 1 — Public surface vs. the five marketing tests

Pages audited: the live app — the entity-type selection, the diagnostic questionnaire, the 9-step roadmap, the templates and cost tracker.

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| Kentucky-specific guidance for nonprofit formation | **PASS** | Verifiable — 9 steps tailored to KY |
| 501(c)(3) / (c)(4) / (c)(6) coverage | **PASS** | All three supported in v3.0 |
| Downloadable draft templates | **PASS** | Three at v1; expansion in backlog |
| Diagnostic recommendation accuracy | **AT RISK** | Project memory flags scoring weights as "needing attorney review." Until reviewed, claims about diagnostic accuracy are provisional. |

**Score: 3 PASS / 1 AT RISK.**

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| Roadmap names specific KY filings (Secretary of State, IRS 1023, etc.) | **PASS** | Concrete |
| Cost tracker names specific filing fees | **PASS** | Verifiable numbers |
| Step guidance is entity-specific (not generic "form a nonprofit") | **PASS** | Real per-entity content |
| Template draft language references KY-specific requirements where applicable | **PASS** | Verifiable; flagged for attorney review |

**Score: 4 PASS.**

### Test 3 — Worker-first

| Element | Verdict | Notes |
|---|---|---|
| Landing surface leads with the founder's task (choose entity → roadmap) | **PASS** | Worker-first by design |
| Visual roadmap shows progress (where the founder is, what's next) | **PASS** | Worker-friendly affordance |
| No vendor-flourish about "Resolve KY's mission" overriding the founder's task | **PASS** | The Resolve KY brand is present but the page serves the founder |
| Confetti celebrations + entity-type-change dialog | **PASS** | Small worker-respecting flourishes |

**Score: 4 PASS.**

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| The cascading-fallback content system (entity+state → state → entity+US → US-only) ensures the founder always sees the most-relevant guidance, never "this doesn't apply to you" | **PASS** | Pattern-level dignity test passed in code, not just copy |
| UPL (Unauthorized Practice of Law) compliance language | **PASS** | Honors the founder's intelligence by being honest about what the product is (a guide) and isn't (legal advice) |
| Tone: explanatory without condescension | **PASS** | The roadmap teaches without patronizing |
| No "easy formation for newbies" language | **PASS** | Respects the difficulty without making the founder feel deficient |

**Score: 4 PASS.** Among the four audited projects this quarter, Resolve Startup App's dignity-test posture is the strongest.

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| Diagnostic scoring weights produce the right entity recommendation | **AT RISK** | Scoring weights need attorney review (per project memory). Until reviewed, the recommendation is a best-effort guide, not authoritative. |
| Template legal language is correct | **AT RISK** | Articles, bylaws, COI policy all flagged for attorney review |
| Filing fees displayed are current | **PASS** | Verifiable against KY SoS + IRS public fee schedules |
| Re-engagement email cadence works | **PASS** | Cron at `/api/cron/check-inactive` runs daily 14:00 UTC; verifiable |

**Score: 2 PASS / 2 AT RISK.** The AT-RISK items aren't false claims; they're claims the product needs an attorney to validate before they can be defended as authoritative.

### Overall public-surface score

**16 PASS / 3 AT RISK / 0 FAIL across 19 graded items.**

The product is the strongest of the four audited this quarter on dignity + worker-first design. The cluster of AT-RISK items is the attorney-review bottleneck, not a marketing failure.

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **9-step roadmap structure:** **PARTIAL** — derived from Vince's Resolve KY founder experience + general formation domain knowledge. Multi-source but builder-derived.
- **Diagnostic questionnaire:** **PARTIAL** — founded on the observation that founders frequently don't know which entity type they need. Reasonable; not externally validated.
- **Cascading content fallback:** **PARTIAL** — designer-derived insight that founders need *something* when KY-specific content is missing. Strong design move; not externally validated.
- **Cost tracker:** **PARTIAL** — addresses a known founder need (surprise expenses); not user-tested.
- **Guest progress sync + re-engagement emails:** **PARTIAL** — addresses a known dropout problem; not measured against actual dropout rates.

**Verdict: PARTIAL.** Builder-derived but informed; multiple founder-domain insights from Vince's own experience. Anti-pattern #3 risk: founder Vince is *adjacent* to the user role (he has formed a nonprofit) but his experience may be more sophisticated than a true first-time founder's.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** The v3.0 milestone is "complete, app live and tested" per the project memory; the testing is internal. No documented external observation.

### 3. Does your marketing pass the five authenticity tests?

**PASS-with-AT-RISK.** 16 PASS / 3 AT RISK / 0 FAIL. The AT-RISK cluster is attorney-review, addressable on a separate track.

### 4. Is the team operating at a sustainable pace?

**PASS.** 14 phases shipped across multiple milestones, paused intentionally between v3.0 and the next milestone. Healthy cadence pattern.

### 5. Are you measuring outcome claims after shipping?

**FAIL.** No measurement of roadmap completion, diagnostic-to-roadmap conversion, or formation-state milestones reached. The cron sends re-engagement nudges but open/click rates aren't being analyzed.

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** Shipped before the gate existed. Going forward, future features should run it.

### 7. If you maintain personas, are they being refreshed?

**N/A.** No personas. Three sub-archetypes (501(c)(3) / (c)(4) / (c)(6) founders) are implicit in the product structure but not formalized.

### 8. Are you separating buyer feedback from worker feedback?

**PASS.** There's no buyer (the product is free); the worker (the founder) is the design center clearly.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** Vince's Resolve KY context = some community involvement. No external Kentucky-founder conversations have been documented.

### 10. Are you accountable for impact, not just intent?

**FAIL today, fixable.** The natural impact metric — *did founders who used the app actually form their nonprofit, and how long did it take?* — would be powerful to measure but isn't being captured. (Some of this can be inferred from cost-tracker completion + final-step completion, but no follow-up cadence.)

### 10-question summary

- **PASS: 2** (#4, #8)
- **PARTIAL: 3** (#1, #3, #9)
- **FAIL: 4** (#2, #5, #6, #10)
- **N/A: 1** (#7)

The strongest 10-question profile of the four audited projects on the *product* side; the same gap as the others on the *practice* side (no observation, no measurement, no formal gate).

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | CLEAN | No research yet |
| **#2 Persona fossilization** | N/A | No personas |
| **#3 Wrong users** | AT RISK | Builder is *adjacent* to the user role (Vince has formed a nonprofit, so he knows the domain) but more sophisticated than a first-time founder. Real first-time-founder conversations needed. |
| **#4 Leading questions** | CLEAN | No interviews |
| **#5 Sample of one** | AT RISK (softly) | Builder + domain inference; multi-source observation not yet practiced |
| **#6 Buyer-user substitution** | CLEAN | No buyer; the founder is the unambiguous center |
| **#7 Inhuman pace** | CLEAN | Healthy milestone cadence |
| **#8 Marketing faster than product** | AT RISK | Diagnostic + templates carry attorney-review caveats; until reviewed, the "authoritative formation guide" framing should soften to "guided support, attorney-reviewable" |

**Anti-pattern summary:** 4 clean / 3 at risk / 0 violating / 1 N/A.

---

## Part 4 — The closing test

> *"If a first-time Kentucky nonprofit founder — say, a community member with a mission and zero formation experience — opened resolve-startup-app.vercel.app and worked through the app, would she recognize it as built for her or for a more-experienced peer?"*

**Honest answer:** She would mostly recognize it as built for her. The dignity posture is correct, the cascading content keeps her oriented, the cost tracker honors her budget anxiety, the diagnostic helps her pick a path. The risk is twofold:

1. The diagnostic might recommend the wrong entity type for an edge-case founder (unreviewed scoring weights).
2. The templates might contain legal language that needs attorney revision before she relies on it.

These are not dignity failures or worker-first failures — they're product-truth-honesty issues. The fix is the attorney review that the project memory already lists as needed.

A founder who completed the full roadmap and successfully filed a 501(c)(3) in Kentucky would be the strongest single source of validation. Track whether that happens.

---

## Action items (highest leverage first)

### Fix this week

1. **Schedule the attorney review** for diagnostic scoring weights + entity-specific template legal language. The product memory already names this as needed; the audit makes it the highest-priority unresolved item.

### Fix this month

2. **Have one founder conversation.** Find a Kentucky first-time founder (Resolve KY's network is the natural source). Walk them through the app. Watch. Don't lead. ~30 minutes.
3. **Wire one outcome metric.** Simplest: count distinct sessions that complete the diagnostic + reach step 9 of the roadmap.
4. **Add a /how-this-is-built page** linking back to the Coach House HCD practice repo and to this audit. Visible practice.

### Fix this quarter

5. **Run the attorney-review remediation.** Update scoring weights, template language, and any AT-RISK marketing claims accordingly.
6. **Decide on persona formalization.** Three sub-archetypes (501(c)(3) / (c)(4) / (c)(6) founders) are implicit. v0 personas would help future audits.
7. **Q3 check-in: follow up with two or three founders who used the app.** Did they form? How long did it take? What was missing?

---

## What we got right since last audit

First audit. State to celebrate: this is the strongest project of the four audited on the *product surface* side. The cascading-fallback content system is a published-quality HCD pattern that could be its own pattern doc. The UPL compliance language and the worker-first framing both demonstrate the practice in spirit before the framework was extracted. The largest gap is the same as the other projects: external observation and measurement.

---

## Why this audit exists

The Coach House practice grades every active project quarterly. The first audit's job is honest baseline.

**Next audit:** 2026-08-20.
**External auditor target:** one Resolve KY founder who used the app + one peer-org founder (perhaps from a different state where Resolve hasn't expanded yet). Paid coffee card + a thank-you note.

— *Coach House research desk*
