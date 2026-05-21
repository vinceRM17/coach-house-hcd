# 2026-Q2 Canopy KY Website Wireframe HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://v2-eight-gold.vercel.app (Vercel project `v2`)
**Source path:** Inside a Claude session-output directory; the Vercel `.vercel/` link is the durable handle
**Prior audit:** None (first)

Multi-page static HTML wireframe for Canopy KY's website. Six pages: `index`, `about`, `directory`, `education`, `events`, `membership`. This is the *marketing/site* wireframe, distinct from Canopy KY's separate grant dashboard.

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | Six pages match real org-site IA; Canopy KY's existing programs (Good Business Certification, etc.) are reflected |
| Specificity | **PASS** | Pages are real, not lorem-ipsum placeholders |
| Worker-first | **AT RISK** | Worker for the *Canopy site* is dual: (a) a small-business owner considering certification, (b) Canopy staff maintaining the site. Wireframe doesn't yet differentiate user paths visibly — needs live walkthrough |
| Dignity | **AT RISK** | Tone/voice on the wireframe needs walkthrough to verify; Good Business Certification is values-laden language and the wireframe must honor that |
| Verifiable claim | **N/A** | Wireframe — no operational claims to verify |

**Verdict:** 2 PASS / 2 AT RISK / 1 N/A. The AT-RISK items are *audit-method* gaps (auditor needs to walk the live wireframe) rather than known failures.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** FAIL — wireframe is designer-derived; no Canopy member / business-owner conversations documented in memory
2. **2-week 3-user observation?** FAIL — wireframe, pre-observation
3. **Marketing passes tests?** PASS-with-AT-RISK — needs walkthrough
4. **Sustainable pace?** PASS — multi-page static HTML is light-touch
5. **Measuring outcomes?** N/A — wireframe
6. **5-gate in use?** N/A — wireframe
7. **Personas refreshed?** N/A
8. **Buyer/worker separated?** PARTIAL — buyer (Canopy ED / board) vs. worker (member / business owner) not visibly separated in the wireframe IA
9. **Community involved?** PARTIAL — Canopy KY has been consulted as the client (this is their wireframe) but the *visitors* haven't
10. **Impact-accountable?** N/A — wireframe

**Summary:** 0 PASS / 2 PARTIAL / 2 FAIL / 6 N/A. A wireframe is mostly N/A on the operational questions; what matters is whether the wireframe gets validated before it becomes a real site.

---

## Anti-patterns (compact)

| Anti-pattern | Status |
|---|---|
| #3 Wrong users | VIOLATING — no visitor or member conversation in the wireframe-design loop |
| #6 Buyer-user substitution | AT RISK — IA may serve Canopy staff at the expense of visitor clarity; verify on walkthrough |
| Others | CLEAN or N/A |

---

## Closing test

> *If a Louisville small-business owner who's heard about Canopy's "Good Business Certification" opened v2-eight-gold.vercel.app on her phone, would the wireframe show her clearly (a) what the certification is, (b) whether she's eligible, and (c) how to apply — or would it show her Canopy's internal org structure first?*

Honest answer: unknown without walking the live wireframe. **This audit doesn't have enough information to grade dignity + worker-first cleanly; an audit walkthrough is the next step.**

---

## Action items

1. **Auditor walks the live wireframe** as a small-business-owner persona. Grade the AT-RISK items.
2. **One conversation with a Canopy member / certified business owner** before the wireframe becomes the real site. ~20 minutes. Catches the gap before it ships.
3. **Make sure the wireframe's status is clearly labeled** ("draft for Canopy team review, not the public site") so casual visitors don't mistake it for the real thing.
4. **Note on file location:** the source lives inside a Claude session-output directory rather than `~/Projects/`. If this graduates to a real Coach House client project, move the source to `~/Projects/canopy-website/` for durability.
5. **Add the HCD badge** to the wireframe pages (small `scaffold/hcd-badge.html`) if the wireframe becomes the real site.

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*
