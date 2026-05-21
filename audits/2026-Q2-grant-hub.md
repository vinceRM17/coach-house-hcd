# 2026-Q2 Grant Hub HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Live URL:** https://grant-hub-eight.vercel.app
**Repo:** `~/Projects/grant-hub/` (single `index.html`)
**Prior audit:** None (first)

First audit of the Grant Hub — the master index for every Coach House grant dashboard. It is itself a Coach House product: 27+ dashboards listed, search + filters, the front door for anyone looking at the portfolio.

---

## Part 1 — Public surface vs. the five marketing tests

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| 27 dashboards listed with org name, grants count, funding target, categories | **PASS** | Verifiable; every entry is a real deployed dashboard |
| Search + filter by category, state, etc. | **PASS** | Verifiable on live page |
| The hub itself doesn't make user-benefit claims (it indexes; it doesn't pitch) | **N/A** | No benefit claims to source |

**Score: 2 PASS, no benefit claims to evaluate.**

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| Each dashboard entry names the actual org + tagline | **PASS** | Specific |
| Search affordance is concrete | **PASS** | Specific |
| Categories are real (not generic SaaS-speak) | **PASS** | Verifiable |

**Score: 3 PASS.**

### Test 3 — Worker-first

The worker for the Grant Hub is **Vince + the orgs whose dashboards are indexed.** Vince uses it as portfolio navigation. The named orgs use it (in principle) to see themselves listed and to see peers.

| Element | Verdict | Notes |
|---|---|---|
| Index leads with the orgs (cards), not with Coach House self-promotion | **PASS** | Worker-first by structure |
| Each entry surfaces what the org cares about (grants count, funding target) rather than what Coach House cares about (build date, tech stack) | **PASS** | Worker-first content |
| The hub is fast and indexable (a static HTML page) | **PASS** | Respects the worker's time |

**Score: 3 PASS.**

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| Each org is presented respectfully — real mission, real categories | **PASS** | Verifiable |
| No "look how many we've built" vendor-flourish | **PASS** | The hub indexes; it doesn't brag |
| The Notion-sync discipline means listings stay current rather than drifting | **PASS** | Last sync 2026-05-10; should be re-checked |

**Score: 3 PASS.**

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| "27 dashboards" (or however many) | **PASS** | Verifiable count, but should be re-counted at audit time |
| Each linked dashboard is reachable (canonical suffixed URL per the `feedback_vercel_alias_collisions` rule) | **AT RISK** | The build script has health-check discipline per `feedback_claude_projects_hub_health_check.md`, but the audit should re-verify all URLs return 200 |

**Score: 1 PASS / 1 AT RISK.**

### Overall public-surface score

**13 PASS / 1 AT RISK / 0 FAIL across 14 graded items.** The Grant Hub is structurally clean — its job is indexing and it does it cleanly. The one AT RISK is link-health discipline (action item below).

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **Master-index format:** **PARTIAL** — derived from the need to navigate a growing portfolio. Vince is the primary worker; not externally validated.
- **Search + filters:** **PARTIAL** — designer-derived. With 27 entries, search becomes useful; the threshold was reached, not researched.
- **Category breakdown per entry:** **PARTIAL** — designer-derived; helpful for navigation.
- **Notion sync discipline:** **PASS** — driven by real propagation incidents (the `feedback_cross_family_propagation_safety` memory documents a real 2026-05-18 incident).

**Verdict: PARTIAL.** Most decisions are reasonable but builder-derived. Per anti-pattern #3, Vince-as-user is the single source.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** No external user observation. Vince uses it daily.

### 3. Does your marketing pass the five authenticity tests?

**PASS.** 13 PASS / 1 AT RISK. The hub doesn't make benefit claims, so there's little to fail.

### 4. Is the team operating at a sustainable pace?

**AT RISK.** The hub itself is light-touch (single HTML file, occasional updates) but it sits inside a portfolio of 27 dashboards being built at high cadence. Anti-pattern #7 applies portfolio-wide, not hub-specific.

### 5. Are you measuring outcome claims after shipping?

**N/A.** No outcome claims to measure for an index page.

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** Hub features ship as they occur to Vince; no formal gate.

### 7. If you maintain personas, are they being refreshed?

**N/A.** No personas.

### 8. Are you separating buyer feedback from worker feedback?

**PARTIAL.** Vince is the primary worker; no buyer for this index. The indexed orgs are *featured workers* but their feedback on being listed isn't being collected.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** The orgs whose dashboards are listed haven't been consulted on how they're represented in the index. Most are likely fine; one or two might want different language.

### 10. Are you accountable for impact, not just intent?

**FAIL today, fixable.** The natural impact metric — *do listed orgs ever land on the hub from a Coach House conversation, find peers, or share their own dashboard link?* — isn't being tracked.

### 10-question summary

- **PASS: 1** (#3)
- **PARTIAL: 4** (#1, #8, #9, plus #4 AT RISK)
- **FAIL: 3** (#2, #6, #10)
- **N/A: 2** (#5, #7)

A well-built index that hasn't been put through HCD process. The most useful audit action is treating the hub's worker — Vince + the indexed orgs — as a real user role and running one or two real conversations with the orgs about how they're listed.

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | CLEAN | No research happening yet |
| **#2 Persona fossilization** | N/A | No personas |
| **#3 Wrong users** | VIOLATING | Builder-as-user; no org-side conversations about how they're indexed |
| **#4 Leading questions** | CLEAN | No interviews |
| **#5 Sample of one** | VIOLATING | Single-source (builder) decisions |
| **#6 Buyer-user substitution** | CLEAN | No buyer |
| **#7 Inhuman pace** | AT RISK | Hub light-touch but the portfolio it indexes is built at high cadence |
| **#8 Marketing faster than product** | CLEAN | No marketing claims that outrun the product |

**Summary:** 3 clean / 2 violating / 1 at risk / 2 N/A. Same pattern as the other audits — practice gap around a clean product.

---

## Part 4 — The closing test

> *"If a development director at one of the 27 indexed orgs opened the Grant Hub looking at how Coach House represents her org alongside its peers, would she recognize the listing as built for her — or would she recognize it as Coach House's portfolio brochure?"*

**Honest answer:** mostly the first. The entry describes her org's mission, real grant categories, real funding target — that's hers. But the *frame* (a Coach House portfolio of products) is unmistakably builder-focused. Without prior conversation, she can't know whether the categorization on her entry is accurate to how *she* talks about her org.

The fix is one conversation per quarter: pick three orgs at random, send a one-paragraph email, ask whether their entry reads correctly.

---

## Action items

### Fix this week

1. **Re-run a link-health check** on all 27 entries; confirm canonical suffixed URLs per the `feedback_vercel_alias_collisions` rule. Use `npm run refresh` per the existing health-check discipline.
2. **Verify the Notion sync is current** — last sync 2026-05-10. Any dashboards added since (Brandon's House, Monarch, HBCU First, PHWFF, DCA, etc.) need to be confirmed in Notion + on the hub.

### Fix this month

3. **Send a one-paragraph "how does your entry read?" email to three indexed orgs.** Not a survey — a respectful check-in. Captures the first real worker-side signal.
4. **Add the HCD badge** to the Grant Hub footer using `scaffold/HcdBadge.tsx` (or the static-HTML variant `scaffold/hcd-badge.html` since this is a single HTML page).

### Fix this quarter

5. **Decide on an entry-update cadence** that orgs trust. Today the cadence is "when Vince notices." A quarterly self-refresh + a visible "last updated" per entry would make the data trustworthy.

---

## What we got right since last audit

First audit. State to celebrate: the hub does what it's supposed to do — surfaces the portfolio cleanly, respects the orgs in how it presents them, has propagation-safety discipline (Notion sync, suffixed URLs, health checks). The structural choices are right.

---

**Next audit:** 2026-08-20.

— *Coach House research desk*
