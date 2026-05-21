# 2026-Q2 Coach House Portfolio HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Projects audited:** Bothy, Pete QPR Finder, East Broadway Business, Resolve Startup App
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)

This is the first portfolio-level audit at Coach House. It synthesizes the four individual project audits ([Bothy](./2026-Q2-bothy.md), [Pete QPR Finder](./2026-Q2-pete-qpr-finder.md), [East Broadway Business](./2026-Q2-east-broadway-business.md), [Resolve Startup App](./2026-Q2-resolve-startup-app.md)) into a single read on where the studio sits against its own framework.

It is intended for publication on coachhouse.so — the meta-transparency move that no incumbent will match.

---

## The headline

Coach House has **four shipped products** that are structurally HCD-clean and **zero shipped products** that have a complete HCD operating practice around them. The framework now exists, the scaffolding is now in place, and the first observation work starts this quarter.

The four projects reveal a consistent pattern:

- **Public surfaces are doing well** — worker-first, dignified, scoped honestly. Worker-first dashboards, dignity-respecting copy, scoped out-of-scope statements.
- **Operating practice has been doing badly** — no scheduled observation, no instrumented outcome measurement, no per-feature five-gate process, no documented user-conversation evidence trail.

The slogan version: **the products are HCD; the practice isn't yet.** This is the highest-leverage gap to close in Q3.

---

## Cross-project scorecard

### Public-surface marketing tests (combined)

| Project | PASS | PARTIAL | FAIL / AT RISK |
|---|---|---|---|
| Bothy | 18 | 4 | 5 (4-hour claim + strikethrough vignette flagged) |
| Pete QPR Finder | 14 | 0 | 1 AT RISK (empty directory) |
| East Broadway Business | 13 | 0 | 6 TBD (needs live walkthrough) |
| Resolve Startup App | 16 | 0 | 3 AT RISK (attorney review) |
| **Portfolio total** | **61** | **4** | **15** (5 outright fails; 10 at-risk/TBD) |

Outright failures are clustered in Bothy's marketing copy. The other three projects fail or are at-risk in distinctly different ways — Pete QPR needs data; East Broadway needs a walkthrough; Resolve Startup needs an attorney review.

### Ten audit questions (combined)

| Question | Bothy | Pete QPR | EBBA | Resolve | Portfolio read |
|---|---|---|---|---|---|
| 1. 3+ users per feature | FAIL | PARTIAL | PARTIAL | PARTIAL | **PARTIAL** (most decisions reasonable but builder-derived) |
| 2. 2-week 3-user observation | FAIL | FAIL | FAIL | FAIL | **FAIL** (universal gap — no observation cadence anywhere) |
| 3. Marketing passes 5 tests | PARTIAL | PASS* | PASS* | PASS* | **PARTIAL** (Bothy needs correction; others have TBD/AT-RISK clusters) |
| 4. Sustainable pace | FAIL | PARTIAL | PASS | PASS | **PARTIAL** (Bothy's recent build-burst is the outlier) |
| 5. Measuring outcome claims | FAIL | FAIL | FAIL | FAIL | **FAIL** (universal gap — no instrumentation across the portfolio) |
| 6. Per-feature gate in use | FAIL | FAIL | FAIL | FAIL | **FAIL** (the gate is new; future features should use it) |
| 7. Personas refreshed | PARTIAL | N/A | N/A | N/A | **PARTIAL** (only Bothy has personas; all v0) |
| 8. Buyer vs. worker separated | PARTIAL | PASS | PARTIAL | PASS | **PARTIAL** |
| 9. Affected community involved | PARTIAL | PARTIAL | PARTIAL | PARTIAL | **PARTIAL** (every project has *some* community involvement; none has structural community involvement) |
| 10. Impact-accountable | FAIL | FAIL | FAIL | FAIL | **FAIL** (downstream of #5) |

The three universal FAILs (#2 observation, #5 measurement, #6 per-feature gate) cluster around the same thing: **the practice around each product hasn't been built yet.** That's exactly what this repo (coach-house-hcd) now exists to fix.

### Anti-pattern self-grade (combined)

| Anti-pattern | Bothy | Pete QPR | EBBA | Resolve | Portfolio status |
|---|---|---|---|---|---|
| #1 Research theater | AT RISK | CLEAN | CLEAN | CLEAN | **Generally clean** |
| #2 Persona fossilization | PREEMPTED | N/A | N/A | N/A | **Preempted where personas exist** |
| #3 Wrong users | VIOLATING | VIOLATING | AT RISK | AT RISK | **System-wide — builder-as-user is the default** |
| #4 Leading questions | UNKNOWN | CLEAN | CLEAN | CLEAN | **Clean (no interviews to lead with)** |
| #5 Sample of one | VIOLATING | VIOLATING (softly) | AT RISK | AT RISK | **System-wide — multi-source validation is rare** |
| #6 Buyer-user substitution | PARTIAL VIOLATION | CLEAN | AT RISK | CLEAN | **Bothy's hero card is the main exhibit** |
| #7 Inhuman pace | VIOLATING | AT RISK | CLEAN | CLEAN | **Bothy is the outlier; portfolio mostly healthy** |
| #8 Marketing faster than product | VIOLATING | AT RISK | CLEAN | AT RISK | **Mixed — Bothy fails outright; others have known caveats** |

**System-wide anti-pattern findings:**

- **Anti-pattern #3 (wrong users)** is the studio-level pattern. Three of four projects rely on builder-as-user inference. The fix is the same in each case: one real user conversation per project, this month.
- **Anti-pattern #5 (sample of one)** travels with #3 and has the same fix.
- **Anti-patterns #2, #4** are clean across the portfolio.

---

## The closing test, portfolio-wide

> *"If the workers on the other end of Coach House's products — the grants manager, the parent looking for QPR training, the neighbor planning a Friday night, the first-time nonprofit founder — read everything in our practice repo and used every product, would they recognize themselves and their work?"*

**Honest answer:** Yes on three of four products at the *product surface* level — Pete QPR Finder, East Broadway Business, and Resolve Startup App all read as worker-first and dignity-respecting. Bothy's marketing has two specific places where the answer is currently *no* (the "~4 hours/week" claim and the strikethrough-tools vignette), and both have committed fixes.

**At the practice level**, the answer is *not yet* on all four — workers can't recognize themselves in evidence we haven't collected. The next quarter's work is closing that gap.

---

## Q3 priorities for the studio

These are the patterns visible across the four audits. They sit above any individual project's action list.

### 1. Run one real conversation per active project, this month.

- Bothy → Lonna at SWC. Use the protocol. Write the session note. Commit one line.
- Pete QPR Finder → one parent who attends a Vince-led QPR session.
- East Broadway Business → one Louisville neighbor on East Broadway.
- Resolve Startup App → one Kentucky first-time founder.

Four conversations in a month. ~3 hours total. The single highest-leverage action in this audit.

### 2. Wire one outcome metric per project.

- Bothy → time-to-first-stewardship-action (per [`playbooks/instrumentation-design.md`](../playbooks/instrumentation-design.md)).
- Pete QPR Finder → inquiry-submission count per ZIP.
- East Broadway Business → directory-entry click-through rate.
- Resolve Startup App → diagnostic-to-roadmap-completion conversion.

Instrumentation infrastructure exists in spec form (Bothy's INSTRUMENTATION-DESIGN.md is the reference); each project gets the minimum-viable version.

### 3. Address the three specific marketing failures.

- Bothy: remove/qualify "~4 hours/week"; rewrite strikethrough vignette; label AI features "Coming Q3"; add "Sample data" microcopy.
- Resolve Startup: schedule attorney review for diagnostic + templates; soften any "authoritative" framing until review completes.
- Pete QPR Finder: seed the directory (Vince + 1-2 other trainers + 2-3 upcoming sessions) so the homepage promise lands.

### 4. Add a /process page to one Coach House product.

Bothy is the obvious first candidate — it's the most marketing-heavy product and the most exposed to "we claim HCD" critique. The page links to this audit, to the practice repo, and to a public "what we got wrong" log with corrections + dates. The credibility move no incumbent will make.

### 5. Add the HCD badge component to all four product pages.

The studio signature. Links to the practice repo + the project's most recent audit. Small visible mark that the practice is real.

---

## What we got right this quarter

This is the first portfolio audit; the prior state was *unaudited*. What's improved is substantial:

- The Coach House HCD practice repo exists with the studio-level framework.
- Four projects have been audited honestly; the gaps are named and assigned.
- Seven design + code patterns are documented and reusable across projects.
- A PR template + scaffolding system is in place for new projects.
- The first retroactive PROJECT-KICKOFF briefs have been written for all four audited projects.

The portfolio enters Q3 with the practice in place. The Q3 audit's job will be measuring how much of the action-list above actually happened, and which anti-patterns moved from VIOLATING / AT RISK toward CLEAN.

---

## Why this audit exists

Coach House publishes these so the practice is visible. If we don't grade ourselves against our own framework, we forfeit the right to say we're doing it. Most studios won't do this; that's the differentiator.

**Next portfolio audit:** 2026-08-20.
**Per-project audits:** 2026-08-20 (quarterly cadence, same date as portfolio).
**External auditor target:** one customer / user + one peer-org founder per project — paid $100 product credit / coffee card + a thank-you note.

— *Coach House research desk*
