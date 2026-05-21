# 2026-Q2 Universal Design App HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (compact-format audit)
**Live URL:** https://universal-design-app.vercel.app
**Repo:** `~/Projects/universal-design-app/`
**Prior audit:** None (first)

Universal Design App MVP — AI-powered web app where architects upload PDF plans and get structured feedback against the 7 Universal Design Principles (Mace, NCSU 1997). Vince's internal reference implementation, built to evaluate a separate $25K Open Eye Partners proposal to Southwest Center. Phase 1 Wave 1 shipped 2026-05-19.

This is the most architecturally-deliberate Coach House product in the portfolio — multiple anti-pattern preempts are baked into the schema itself.

---

## Five marketing tests (compact)

| Test | Score | Note |
|---|---|---|
| Source | **PASS** | 7 UD principles sourced to Mace, NCSU 1997 (a real, citable framework); cost model verified; AEC-vision benchmarks cited for the tile/zoom decision |
| Specificity | **PASS** | Concrete tech decisions, named pitfalls, frozen output schema, named eval-corpus candidates (DO-IT, AIA, NCSU CUD, Access Board, GSA) |
| Worker-first | **PASS** | Worker = the architect / housing designer uploading plans. UD ≠ ADA distinction at the schema level is a strong worker-first move — the architect's value depends on the output not conflating |
| Dignity | **PASS** | Disclaimer is a top-level schema field, not chrome. 17-term prohibited-vocabulary list. NO aggregate score field. All three preempt the canonical "AI tool oversells" failure mode |
| Verifiable claim | **PASS** | Cost (~$1.65/20pp), test count (28/28), Phase 1 scope all verifiable; no untested benefit claims |

**Verdict:** 5 PASS. Strongest marketing-tests profile of any Coach House product audited this quarter.

---

## Ten audit questions (compact)

1. **3+ users sourced features?** PARTIAL — sourced from Open Eye proposal context + Mace 1997 framework + AEC-vision research base; not yet user-conversation-validated with architects
2. **2-week 3-user observation?** N/A — Phase 1 Wave 1 just shipped; pre-observation
3. **Marketing passes tests?** PASS (5/5)
4. **Sustainable pace?** PASS — Phase 1 Wave 1 + frozen schema + regression auditor = research-first pace
5. **Measuring outcomes?** PARTIAL — eval corpus candidates identified; not yet measured against
6. **5-gate in use?** PASS — the GSD framework (PROJECT.md, REQUIREMENTS.md, ROADMAP.md, PLAN.md) is essentially a 5-gate in practice
7. **Personas refreshed?** N/A — no personas yet
8. **Buyer/worker separated?** PASS — CFL (funder) is distinct from architect (worker); proposal is distinct from product; clean separation
9. **Community involved?** PARTIAL — lived-experience advisory panel is *named as needed* in `prompts/README.md` but not yet built. Honest acknowledgment > silent gap
10. **Impact-accountable?** PARTIAL — schema auditor (`schemaShapeAuditor()`) enforces "no aggregate score" rule programmatically. Operational accountability is in place; market-level not yet (no users)

**Summary:** 3 PASS / 4 PARTIAL / 0 FAIL / 3 N/A. **Tied with church-funding-hub for the strongest 10-question profile** in the audited portfolio.

---

## Anti-patterns (compact)

| Anti-pattern | Status |
|---|---|
| #1 Research theater | CLEAN — Mace 1997 + AEC-vision research + named eval corpus is real research |
| #2 Persona fossilization | N/A |
| #3 Wrong users | AT RISK — no architect-user conversations yet |
| #4 Leading questions | CLEAN |
| #5 Sample of one | CLEAN — multi-source from framework + research base |
| #6 Buyer/user substitution | CLEAN — CFL ≠ architect cleanly separated |
| #7 Inhuman pace | CLEAN — research-first phase pacing |
| **#8 Marketing faster than product** | **PREEMPTED** | The frozen schema + 17-term prohibited-vocabulary list + no-aggregate-score regression test are programmatic preempts of the "AI tool oversells" failure mode. Almost unique in the portfolio |

**Summary:** 5 clean / 1 at risk / 0 violating / 1 preempted / 1 N/A. The PREEMPTED on #8 is notable — implementing the anti-pattern defense in *code* rather than *prose* is a Coach House pattern worth documenting.

---

## Closing test

> *If an architect designing IDD housing in Louisville opened the Universal Design App, uploaded a plan, and read the output, would she recognize the output as how she actually thinks about UD compliance — or would she recognize a vendor's AI-flavored substitute for her judgment?*

Honest answer: structurally the output should land respectfully (no aggregate scores, UD ≠ ADA framing, principle-by-principle reasoning with Mace citations). What's unknown is whether the *content* of the output is good — that's the eval-corpus question, which Phase 1 Sub-Plan 04 identifies but hasn't executed. **The product is structurally honest; whether it's substantively useful is the next gate.**

---

## Action items

1. **Architect conversation (high leverage)**: one 30-min walkthrough with a Louisville architect who designs IDD or universal housing. Likely candidates: anyone in SWC's network. Closes the anti-pattern #3 risk.
2. **Execute Phase 1 Sub-Plan 04** — run the identified eval corpus (DO-IT, AIA, NCSU CUD, GSA) against the system prompt v0. Validate the output against expert-curated examples.
3. **Lived-experience advisory panel design** — `prompts/README.md` flags this as needed pre-grant. Sketch the panel shape (3-5 people with IDD lived experience reviewing model outputs) before any CFL ask.
4. **Document the "schema-level anti-pattern preempt" as a Coach House pattern** in `coach-house-hcd/patterns/` — the no-aggregate-score + UD-not-ADA + 17-term prohibited-vocab combo is genuinely novel and reusable for any AI product with a "buyer wants a number" pressure.
5. **Add the HCD badge** to the product footer once user-facing surfaces exist.

---

*Compact audit — Coach House research desk. Next audit: 2026-08-20.*
