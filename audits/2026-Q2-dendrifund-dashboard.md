# 2026-Q2 Dendrifund Dashboard HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://dendrifund-dashboard.vercel.app
**Repo:** `~/Projects/dendrifund-dashboard/` (single `index.html` + `vercel.json`)
**Prior audit:** None (first)

Single-page project dashboard for the Dendrifund → Wood Water and Grain Alliance (WWGA) rebrand. Client-facing — Kristen Bohannon (sole Dendrifund staff) + the board check it at-a-glance to see project progress. Right Mind / Vince managing as PM.

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | Six-phase structure, dates, milestones all sourced from real PM artifacts |
| Specificity | **PASS** | Real dates (May 1 kickoff, May 30 specialist deliverables, Jul 1 PM resumes, Jul 18 final, Late Jul board), real client names |
| Worker-first | **PASS** | Worker = Kristen + board. Dashboard leads with phase status + active milestones — what they want to know |
| Dignity | **PASS** | Dendrifund's color palette (cream / brown / olive / gold) — not Right Mind's. Aesthetic = earthy, grounded, trustworthy. Strong dignity move |
| Verifiable claim | **PASS** | Status fields, dates, phase locks (Phase 2-6 locked pending board approval) are all auditable |

**Verdict:** 5 PASS / 0 issues. Clean.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** PARTIAL — Kristen (client) + Vince (PM) = 2 sources; board members hypothetical until they actually access it
2. **2-week 3-user observation?** FAIL — Kristen + board access patterns not observed
3. **Marketing passes tests?** PASS (5/5)
4. **Sustainable pace?** PASS — single-page, deliberate, low-touch
5. **Measuring outcomes?** N/A — small-N tool; outcome is whether Kristen + board feel informed
6. **5-gate in use?** N/A — client deliverable, not Coach House product feature
7. **Personas refreshed?** N/A
8. **Buyer/worker separated?** PARTIAL — Kristen is both; board is separate worker class
9. **Community involved?** PARTIAL — Dendrifund's color palette + tone is from them; phase content is Vince's structuring (PM)
10. **Impact-accountable?** N/A today — outcome is project completion, tracked elsewhere

**Summary:** 1 PASS / 3 PARTIAL / 1 FAIL / 5 N/A. Clean for a small-N client dashboard.

---

## Anti-patterns (compact)

CLEAN: #1, #2, #4, #5 (multi-source from client artifacts), #6 (no buyer-user confusion), #7, #8
AT RISK: #3 — Kristen hasn't given documented feedback on the dashboard itself

---

## Closing test

> *If Kristen opened the Dendrifund dashboard on her phone before a board call, would she recognize it as built for her project — or as Vince's PM tool wearing Dendrifund colors?*

Mostly the first. The phase content is real to her work, the color palette is hers, the architecture (single source-of-truth `PROJECT_DATA` object) means updates land quickly. The board view hasn't been validated; one quick check-in with a board member would close the loop.

---

## Action items

1. **One-question email to Kristen:** "Does the dashboard show what you'd want to see before a board meeting?" Captures the single client-side data point.
2. **Confirm one board member has accessed the URL.** Otherwise the board-side worker view is theoretical.
3. **Add the HCD badge** to the page footer.
4. **Phase 2 activation prep** — per the memory, activating Phase 2 is a config-only change (status "locked"→"active"). Pre-stage the data shape so it lands cleanly when board approves.

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*
