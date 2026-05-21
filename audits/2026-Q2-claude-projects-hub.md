# 2026-Q2 Claude Projects Hub HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://claude-projects-hub.vercel.app
**Repo:** `~/Projects/claude-projects-hub/`
**Prior audit:** None (first)

Meta-dashboard listing every Coach House project from `project_*.md` memory files. Auto-generated via `build.js` from the auto-memory directory. Single-user tool (Vince).

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | Sourced from real memory files; recency badges driven by filesystem dates |
| Specificity | **PASS** | Each card shows real name, description, body summary, links, dates |
| Worker-first | **PASS** | Worker = Vince navigating his portfolio. Leads with project cards sorted by most-recent edit — what he wants |
| Dignity | **N/A** | Internal tool, single user |
| Verifiable claim | **N/A** | No marketing claims |

**Verdict:** 3 PASS / 2 N/A. Clean for an internal tool.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** PARTIAL — Vince-derived; the meta-need is real (knowing where projects are) but single-source
2. **2-week 3-user observation?** N/A — single user
3. **Marketing passes tests?** PASS (3/3 applicable)
4. **Sustainable pace?** PASS — `npm run refresh` is a one-line refresh; minimal maintenance
5. **Measuring outcomes?** N/A — internal nav tool
6. **5-gate in use?** N/A
7. **Personas refreshed?** N/A
8. **Buyer/worker separated?** N/A — single user
9. **Community involved?** N/A
10. **Impact-accountable?** N/A — Vince knows whether the hub works for him

**Summary:** 1 PASS / 1 PARTIAL / 0 FAIL / 8 N/A. A correctly N/A-heavy audit for a personal nav tool.

---

## Anti-patterns (compact)

CLEAN: All. Single-user internal tooling that doesn't claim more than it is.

---

## Closing test

> *Does the hub serve the one purpose it exists for — Vince finding any of his projects in under 10 seconds?*

By construction yes. The search + sort filters and the link pills make 1-step navigation possible. If Vince ever shares the URL with a collaborator, the dignity + worker-first questions shift (the URL exposes private project context).

---

## Action items

1. **Decide if this stays single-user.** If Vince ever wants a teammate to use it, the body-summary content needs an audit — some `project_*.md` files contain private context (revenue, family info, partner names) that shouldn't be public.
2. **Auth gate consideration.** Currently the URL is public-by-default. If memory files ever contain anything sensitive, gate this behind a simple passcode (same pattern as cain-family-os).
3. **Add the HCD badge** to the page footer — fitting since this is the *index* of all Coach House projects.

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*
