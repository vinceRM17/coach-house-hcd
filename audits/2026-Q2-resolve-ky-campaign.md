# 2026-Q2 Resolve KY Campaign Center HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://resolve-ky-campaign.vercel.app
**Repo:** `~/Projects/resolve-ky-membership-campaign/web/`
**Prior audit:** None (first)

Single-page command center for the Resolve KY 60-day membership-growth campaign. Two hubs: Vince's task checklist + 13-stakeholder voice portal. Single static `index.html` (~1,500 lines) deployed to Vercel. Internal tool — not customer-facing.

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | TASKS array sourced from Phase 1 SUMMARYs; ROLES array from STAKEHOLDER-VOICE-MATRIX.md (real artifact) |
| Specificity | **PASS** | 13 concrete tasks with steps + time estimates; 13 roles with vantage/vocabulary/register fields |
| Worker-first | **PASS** | Vince is the worker; tool leads with "what to do now" not "campaign overview" |
| Dignity | **PASS** | Stakeholder roles framed in their own vocabulary ("would NEVER say" field is unusually respectful) |
| Verifiable claim | **N/A** | Internal tool; no marketing benefit claims to verify |

**Verdict:** 4 PASS / 1 N/A. Strong internal-tool posture.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** PARTIAL — Vince + the 13 stakeholder profiles are real, but no peer review of the task list shape
2. **2-week 3-user observation?** N/A — internal tool, single user (Vince)
3. **Marketing passes tests?** PASS (4/4 applicable)
4. **Sustainable pace?** PASS — single-page, set-and-update cadence
5. **Measuring outcomes?** FAIL — no instrumentation; task completion is the implicit metric but not aggregated
6. **5-gate in use?** N/A — internal tool, post-need
7. **Personas refreshed?** PARTIAL — 13 stakeholder roles ARE the personas; refreshable as Phase 3-7 produces actual voice templates
8. **Buyer/worker separated?** N/A — single-user tool
9. **Community involved?** PARTIAL — 13-stakeholder voice matrix is sourced from real Resolve member context but unlikely validated with each named role
10. **Impact-accountable?** PARTIAL — campaign outcome (membership growth) is the real metric, tracked elsewhere

**Summary:** 1 PASS / 3 PARTIAL / 1 FAIL / 4 N/A. Strong shape for an internal tool.

---

## Anti-patterns (compact)

CLEAN: #1, #2, #4, #5, #6, #7, #8
N/A: #3 (single-user)

**Summary:** Clean. Internal tooling that's deliberately scoped to one worker doesn't fire most anti-patterns.

---

## Closing test

> *If Vince's future co-conspirator on a Resolve campaign — say, Rachel Firkins or Shannon Masterson — opened resolve-ky-campaign.vercel.app, would she recognize the tool as built for the campaign she's actually running, or as Vince's personal scratch space?*

Mostly the first. The 13-stakeholder portal is genuinely shareable. The Vince-task hub would feel "his" rather than "ours" — fine for now (it's labeled `#/vince`) but worth flagging if more people start using the tool.

---

## Action items

1. **Add the HCD badge** (`scaffold/hcd-badge.html` — static-HTML variant) to the page footer.
2. **As Phase 3-7 produces stakeholder voice templates**, fold them into the ROLES array; the personas at v0 graduate to v1.
3. **Add a one-line completion-metric per task** (count of tasks closed → simplest possible outcome instrumentation).

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*
