# 2026-Q2 Open Eye Dashboard HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://openeye-dashboard.vercel.app
**Repo:** `~/Projects/openeye-project-dashboard/`
**Prior audit:** None (first)

Single-file HTML dashboard tracking engagement progress + profitability for Vince's Open Eye Partners portfolio. Internal tool — built for Vince + the OEP team. OEP branding pulled directly from openeye.partners.

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | OEP branding sourced from live CSS; 6 sample engagements seeded with realistic data |
| Specificity | **PASS** | 4 KPI cards, 4 Chart.js charts, project cards with status/progress/margin/burn — all concrete |
| Worker-first | **PASS** | Leads with KPIs the PM/principal actually uses (revenue, margin, attention-needed); detail behind modal |
| Dignity | **PASS** | OEP brand applied respectfully; engagements presented in their own context |
| Verifiable claim | **AT RISK** | The 6 seeded engagements are "realistic samples" but appear as real data — needs "Sample data" microcopy until Vince imports real engagements |

**Verdict:** 4 PASS / 1 AT RISK. Same Hero-card pattern as Bothy's pre-fix state — needs the sample-data label.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** PARTIAL — built from Vince's stated need ("reporting tools for OEP project status... go for minimal scoping"); single source
2. **2-week 3-user observation?** FAIL — Eric Seto + Madison Green + the OEP team are the natural users but not observed
3. **Marketing passes tests?** PASS-with-AT-RISK — sample-data labeling needed
4. **Sustainable pace?** PASS — built quickly but to a clear minimal scope
5. **Measuring outcomes?** FAIL — no instrumentation
6. **5-gate in use?** N/A
7. **Personas refreshed?** N/A
8. **Buyer/worker separated?** PARTIAL — Vince is buyer + worker for the dashboard; OEP team are downstream workers, not consulted
9. **Community involved?** FAIL — Eric Seto (per the life-restructure memory: Vince's primary OEP relationship) hasn't reviewed the tool
10. **Impact-accountable?** FAIL today — natural metric (does Vince/OEP actually use the dashboard for portfolio decisions?) not tracked

**Summary:** 1 PASS / 2 PARTIAL / 4 FAIL / 3 N/A.

---

## Anti-patterns (compact)

| Anti-pattern | Status |
|---|---|
| #3 Wrong users | VIOLATING — built for Vince, not validated with Eric or Madison |
| #5 Sample of one | VIOLATING — single-source decision |
| #8 Marketing faster than product | AT RISK — sample data presented as real |
| Others | CLEAN or N/A |

---

## Closing test

> *If Eric Seto opened openeye-dashboard.vercel.app on a Monday morning trying to understand portfolio health, would he recognize the layout as built for the questions he actually asks — or as Vince's idea of what OEP leadership should care about?*

Honest answer: unknown. The dashboard has been built without Eric in the room. KPI selection (contracted revenue, billed YTD, portfolio margin, attention-needed) is reasonable but not validated. **The highest-leverage fix is a 20-minute walkthrough with Eric.** If the KPIs are right, ship more. If they're wrong, adjust.

---

## Action items

1. **Add "Sample data" microcopy** to the KPI tiles and project cards until real engagement data is imported. Same fix pattern as Bothy's pre-fix state.
2. **20-minute walkthrough with Eric Seto** — show the dashboard, ask him to talk through what he'd want to see first. Single-source the OEP-side feedback. Documented per the [protocol](../customer-conversations/PROTOCOL.md).
3. **Import real engagement data** via the JSON import flow, OR mark the dashboard as a working prototype until real data lands.
4. **Add the HCD badge** to the page footer.

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*
