# 2026-Q2 Cain Family OS HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://cain-family-os.vercel.app (passcode-gated: `lonetree51520`)
**Repo:** `~/Projects/cain-family-os/`
**Prior audit:** None (first)

Shared husband/wife "family OS" — EOS-style L10/Rocks/VTO/Scorecard/Issues layered on family life. Notion backbone (8 databases) + Claude-designed Vercel dashboard. Phases 1 + 3 deployed 2026-04-24. Running in mock-data mode until `NOTION_TOKEN` env var lands.

The natural worker pair: Vince + Ami.

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | Framework sourced from real cited sources (EOS Traction, Berger, Gottman, Easlo Family Hub, Vlad's EOS template). Multi-source research base. |
| Specificity | **PASS** | 8 named DBs, named meeting cadence (Sunday 2026-05-03 7pm L10 #1 pre-created), named scorecard pillars (Finances/Health/Relationship/Kids), named permission model |
| Worker-first | **PASS** | The pages (Today / L10 / Scorecard / Rocks / Issues) reflect how a couple-running-EOS actually uses the cadence. Mobile PWA + FAB quick-capture matches the "phone in the car" reality |
| Dignity | **PASS** | Couple-only finances NEVER merged into household view (permission ring). Forest-green / amber / cream palette is warm, not corporate. "Outdoors" aesthetic respects the personal context |
| Verifiable claim | **N/A** | Personal/family tool; no external marketing claims |

**Verdict:** 4 PASS / 1 N/A. Strongest sourcing of any personal Coach House project.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** PARTIAL — sourced from multiple frameworks + research; the *two actual users* (Vince + Ami) have one validated, one TBD (per project memory Phase 0 is "Family mission statement + 13-week L10 commitment with Ami" — Ami's buy-in not yet documented)
2. **2-week 3-user observation?** N/A — N=2 by design
3. **Marketing passes tests?** PASS (4/4 applicable)
4. **Sustainable pace?** PASS — phase-staged build (1 weekend Notion + 2-3 weekends dashboard + ongoing)
5. **Measuring outcomes?** PARTIAL — the natural metric is "did Ami adopt? Did the L10 cadence stick for 13 weeks?" — tracked outside the tool itself
6. **5-gate in use?** N/A — personal project
7. **Personas refreshed?** N/A — two named users
8. **Buyer/worker separated?** N/A — Vince + Ami are both buyers and users
9. **Community involved?** AT RISK — Ami's buy-in on the 13-week commitment is Phase 0 and not yet documented as confirmed. The audit can't grade "community involved" cleanly until Ami has actually agreed to + run an L10 |
10. **Impact-accountable?** PARTIAL today — outcome metric (did the cadence stick? did Ami find it useful?) is the next quarter's question

**Summary:** 1 PASS / 2 PARTIAL / 1 AT RISK / 0 FAIL / 6 N/A. The single most important open question is **whether Ami has actually committed to the 90-day L10 cadence.** Everything else is downstream.

---

## Anti-patterns (compact)

| Anti-pattern | Status |
|---|---|
| #1 Research theater | CLEAN — research base is real; doc + dashboard already built |
| #3 Wrong users | AT RISK — Ami's adoption is the binding constraint and not yet verified |
| #5 Sample of one | AT RISK (softly) — built largely from Vince's framework synthesis; Ami's input shape unknown |
| Others | CLEAN or N/A |

The AT-RISK items all point to the same single fix: **confirm Ami's buy-in + run L10 #1.**

---

## Closing test

> *If Vince + Ami sat down for L10 #1 on a Sunday at 7pm, would Ami recognize the tool as built for the family she actually wants to run — or would she recognize it as Vince's EOS-flavored project applied to family life?*

That's the test, and it can only be answered by running L10 #1. The fact that L10 #1 is pre-created in Notion for 2026-05-03 is encouraging; whether it actually happens is the decisive signal.

---

## Action items

1. **Run L10 #1 with Ami.** (Date in memory was 2026-05-03 7pm — at audit time 2026-05-20, this should have happened. If it didn't, that's the data point.)
2. **Add `NOTION_TOKEN` env var in Vercel** and redeploy to switch from mock to live data. ~2 minutes.
3. **Run 13 consecutive weekly L10s.** Per the original Phase 2 plan ("90 days: Run weekly L10 with no extra tooling — prove cadence sticks"). At audit time 2026-08-20, the right metric is *how many L10s actually happened.*
4. **No HCD badge** — passcode-gated private app; the badge isn't appropriate.

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*

**Auditor's note:** The Cain Family OS and the [Life Restructure](./2026-Q2-life-restructure.md) audits are linked — the personal restructure depends on family-system cadence sticking, and vice versa. If the next audit shows the cadence held, the restructure is more likely to have landed. If not, both projects need a hard rethink.
