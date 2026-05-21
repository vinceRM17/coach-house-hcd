# 2026-Q2 Church Funding Hub HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Live URL:** https://church-funding-hub-eight.vercel.app
**Repo:** `~/Projects/church-funding-hub/`
**Prior audit:** None (first)

First audit of the Church Funding Hub — the master index for church funding dashboards. Parallel to the Grant Hub but tailored for churches: dual-track (worship vs. community-benefit), four-pillar model, denominational filter.

---

## Part 1 — Public surface vs. the five marketing tests

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| Two church dashboards listed (First Baptist Taylorsville, Hurstbourne Baptist) | **PASS** | Verifiable |
| Four-pillar model (grants, internal giving, denominational resources, capital strategy) | **PASS** | Backed by ~2,400 lines of research in `research/RESEARCH.md` + 4 deep partials |
| Track A (worship) vs. Track B (community-benefit) framing with 45 CFR Part 87 compliance | **PASS** | Sourced from federal regulation, not extrapolation |
| Denominational coverage | **PASS** | Verifiable filter |
| "No Candid Profile" badge framing as *normal, not negative* | **PASS** | Reflects reality of church Form 1023 filing patterns |

**Score: 5 PASS.** The Church Funding Hub has the strongest sourcing posture of the projects audited so far — claims are backed by named federal regulations and a 2,400-line research base.

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| Each church entry names the actual congregation + denomination + location | **PASS** | Specific |
| Four pillars surfaced per church | **PASS** | Concrete |
| Track A vs. Track B labeled explicitly | **PASS** | Specific to funder-type distinctions |

**Score: 3 PASS.**

### Test 3 — Worker-first

The worker for the Church Funding Hub is **pastoral / church-business-administration staff at churches considering Coach House work**, plus Vince navigating the portfolio.

| Element | Verdict | Notes |
|---|---|---|
| The hub names denominational context first (important to church staff) | **PASS** | Worker-first by content |
| Color palette distinguished from grant-hub (navy/wine/gold/green) per the church context | **PASS** | Tonal respect |
| Information density matched to church-staff comfort (not SaaS-style overwhelm) | **PASS** | Worker-respecting |

**Score: 3 PASS.**

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| The "No Candid Profile" badge framed as normal — most churches don't file Form 1023 voluntarily | **PASS** | Strongest dignity move of the four hubs/standalones audited so far: anticipates a non-finding that could otherwise be read as deficiency, and reframes |
| Denominational framing isn't reductive | **PASS** | Verifiable on the live filter |
| No vendor-flourish about "transforming church fundraising" | **PASS** | Respectful tone |

**Score: 3 PASS.**

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| Federal compliance (45 CFR Part 87) is a real regulation | **PASS** | Verifiable in the CFR |
| Four-pillar model is a synthesized framework, not a sourced standard | **PARTIAL** | The framework is Coach House's. It's defensible (backed by research) but should be labeled as Coach House's synthesis, not as a sector standard |
| Linked dashboards return 200 | **AT RISK** | Re-verify at audit time |

**Score: 1 PASS / 1 PARTIAL / 1 AT RISK.**

### Overall public-surface score

**15 PASS / 1 PARTIAL / 1 AT RISK / 0 FAIL across 17 graded items.** Strongest public-surface score of the hubs/standalones audited so far. The research-base + dignity-on-Candid-badges combination is unusually grounded.

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **Four-pillar model:** **PASS** — sourced from 2,400 lines of research across federal compliance, foundations, denominational resources, and capital strategy. Multi-source, even if not user-conversation-sourced.
- **Dual-track A/B framing:** **PASS** — sourced from real regulatory boundary (45 CFR Part 87), not designer preference.
- **"No Candid Profile" dignity reframe:** **PARTIAL** — strong designer move that anticipates a church-staff reaction; should be validated with one or two pastor / business-admin conversations.
- **Denominational filter:** **PASS** — sourced from real denominational diversity in target market.
- **First dashboard pick (First Baptist Taylorsville):** **PARTIAL** — purposeful but single-source choice.

**Verdict: PARTIAL leaning PASS.** Decisions are research-derived even when not user-conversation-derived, which is genuinely better than designer-intuition alone.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** Two dashboards live; no user-observed sessions yet.

### 3. Does your marketing pass the five authenticity tests?

**PASS.** 15 PASS / 1 PARTIAL / 1 AT RISK. Strongest of the audits so far on the public surface.

### 4. Is the team operating at a sustainable pace?

**PASS.** The Church Funding Hub feels deliberate — heavy research investment before product. Sustainable shape.

### 5. Are you measuring outcome claims after shipping?

**N/A.** Two dashboards is too few to measure index-page outcomes.

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** Ships before the gate existed.

### 7. If you maintain personas, are they being refreshed?

**N/A.** No personas.

### 8. Are you separating buyer feedback from worker feedback?

**PASS.** The buyer (Coach House client church) is distinct from the worker (pastor / business administrator using the dashboard). The hub serves the worker view; the buyer side hasn't been confused with it.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** Two listed churches haven't given documented feedback on how they're represented. One pastor conversation would close this softly.

### 10. Are you accountable for impact, not just intent?

**N/A today.** Too early to measure index outcomes; should re-evaluate at the third or fourth dashboard.

### 10-question summary

- **PASS: 3** (#3, #4, #8)
- **PARTIAL: 2** (#1, #9)
- **FAIL: 2** (#2, #6)
- **N/A: 3** (#5, #7, #10)

The strongest 10-question profile of any project audited this quarter. The research-base discipline lifts both #1 and #4 significantly above the portfolio average.

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | CLEAN | Research base is large and real; not theater |
| **#2 Persona fossilization** | N/A | No personas |
| **#3 Wrong users** | AT RISK | Research-derived not user-derived; one pastor conversation would close |
| **#4 Leading questions** | CLEAN | No interviews |
| **#5 Sample of one** | CLEAN | Research draws from multiple federal + denominational + foundation sources |
| **#6 Buyer-user substitution** | CLEAN | Worker view (church-staff) leads |
| **#7 Inhuman pace** | CLEAN | Deliberate research-first pace |
| **#8 Marketing faster than product** | CLEAN | No marketing claims that outrun the product |

**Summary:** 6 clean / 1 at risk / 0 violating / 1 N/A. Strongest anti-pattern profile of the projects audited.

---

## Part 4 — The closing test

> *"If a Southern Baptist business administrator at a 200-member church opened church-funding-hub-eight.vercel.app considering whether to engage Coach House, would she recognize the dual-track / four-pillar framing as how church funding actually works — or would she recognize a consultant's framework she's never heard of?"*

**Honest answer:** mostly the first. The four pillars match how church-staff actually think about funding (grants + internal giving + denominational + capital are the real categories). The Track A/B compliance framing might be new vocabulary but it lands on a real federal regulation she or her finance committee already navigates if they take federal money.

The single most useful audit-driven move is **one pastor / business-admin conversation** to validate that the dignity reframe ("No Candid Profile = normal, not negative") lands as intended.

---

## Action items

### Fix this week

1. **Re-verify both linked dashboard URLs return 200** (Hurstbourne Baptist, First Baptist Taylorsville).
2. **Confirm the Notion sync is current** if any new church dashboards have shipped since 2026-05-10.

### Fix this month

3. **One conversation with the Hurstbourne Baptist contact** (or First Baptist Taylorsville) about how their dashboard reads to them. ~30 minutes. Closes anti-pattern #3 softly.
4. **Add the HCD badge** to the footer using `scaffold/hcd-badge.html` (static-HTML variant).

### Fix this quarter

5. **Label the four-pillar model as Coach House's synthesis** on the hub itself — small but matters for Test 5 (verifiable claim) when the framework gets cited.

---

## What we got right since last audit

First audit. State to celebrate: this is the project with the most disciplined research-base in the Coach House portfolio. The 2,400-line research investment before product is exactly the pace + sequence the framework asks for. The "No Candid Profile" dignity reframe is a notable pattern — worth documenting as a pattern doc (`patterns/no-profile-as-normal.md`?) if it recurs in other Coach House products.

---

**Next audit:** 2026-08-20.

— *Coach House research desk*
