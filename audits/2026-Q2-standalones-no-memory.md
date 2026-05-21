# 2026-Q2 Standalones — Audits Without Memory

**Date:** 2026-05-20
**Auditor:** Coach House research desk
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Combined audit:** 12 standalone products in the Coach House Vercel team that **do not have project memory files**. Audited via live URL + observable surface only.

This is a **deliberately compact + caveated audit**. For each project, the auditor has nothing but the homepage to go on — no project memory, no repo content, no conversations. The HCD-honest move is to grade what's observable and flag what isn't, rather than infer.

The single most useful action across all of these is **writing a `project_*.md` memory file for each.** Without that, future audits will continue to be inference-from-URL, and the practice loop can't close.

---

## Coverage table (status + first-glance read)

| # | Project | Live URL | What it appears to be | Memory status |
|---|---|---|---|---|
| 1 | **scholar-path** | scholar-path-zeta.vercel.app | Scholarship-matching tool — *"ScholarPath — Your Scholarship Matches"* + *"Your pipeline"*. Likely college / academic scholarship discovery for a student-worker | ❌ No memory |
| 2 | **thorn** | thorn.coachhouse.so (307 redirect) | Coach House product. Named in the [Life Restructure](./2026-Q2-life-restructure.md) plan as an "existing product" (revised 2026-04-25). Scope unknown from outside | ❌ No memory |
| 3 | **nextgen-preservation-directory** | nextgen-preservation-directory.vercel.app | "Louisville Historic Preservation Directory" for NextGen Preservation Collab. Vince is on their steering board per the Life Restructure memory | ❌ No memory |
| 4 | **sop-chat** | sop-chat-ten.vercel.app | "Active Heroes Cabin Management Hub" — Standard Operating Procedures (SOP) chat / management tool for Active Heroes' cabin program | ❌ No memory |
| 5 | **resolve-ky-board** | resolve-ky-board.vercel.app | "Resolve KY — Board Dashboard" — board-facing dashboard for Resolve KY (Vince is founder + board chair) | ❌ No memory |
| 6 | **dave-ai** | dave-ai-delta.vercel.app | "Dave Cain — Coaching Intelligence" — for Vince's dad Dave (ICF PCC executive coach per `user_dad_dave_cain.md`). Some flavor of coaching-AI tool | ❌ No memory |
| 7 | **veteran-resource-management** | veteran-resource-management.vercel.app | *"You've Served. Now Let Us Help You Find What You've Earned."* — veteran benefits / resource discovery, likely Active Heroes-adjacent | ❌ No memory |
| 8 | **resolve-nonprofit-tech** | resolve-nonprofit-tech.vercel.app | "Resolve - Nonprofit Tech Navigator" — Resolve KY tool for nonprofit tech recommendations | ❌ No memory |
| 9 | **idd-benefit-navigator** | codebase-pi-lemon.vercel.app | *"Find the Benefits Your Family Deserves"* — IDD (Intellectual & Developmental Disabilities) benefits finder. SWC-adjacent? | ❌ No memory |
| 10 | **louisville-makes-dashboard** | louisville-makes-dashboard.vercel.app | "Louisville Maker Faire 2026 — Board Dashboard" — board dashboard for the local Maker Faire | ❌ No memory |
| 11 | **coachhouse.so** (ai.coachhouse.so) | ai.coachhouse.so | "AI Strategy Sessions \| Coach House" — *"See Exactly Where AI Fits in Your Business"*. Coach House's own AI-strategy-session marketing | ❌ No memory |
| 12 | **web** (web-sable-nine-68) | web-sable-nine-68.vercel.app | Renders as "Resolve KY · 60-Day Campaign Command Center" — appears to be an earlier deploy of the [Resolve KY Campaign Center](./2026-Q2-resolve-ky-campaign.md). Likely duplicate / mis-named project | ❌ No memory |

---

## Per-project audit (inference-only)

### 1. ScholarPath

**Honest read from the surface:** scholarship-matching tool. The "Your pipeline" hero echoes Bothy's pipeline pattern — possibly built using the same conceptual model but for students seeking scholarships.

**Marketing-tests inference (3 of 5 gradable from URL):**
- Source: **TBD** (need to walk content)
- Specificity: **PASS-likely** — "Your pipeline" is concrete
- Worker-first: **TBD** — does the page lead with the student's task, or with an institution dashboard? Walkthrough required.
- Dignity: **TBD**
- Verifiable claim: **TBD**

**Open questions for memory + next audit:**
- Who's the worker — a student? A college counselor? A scholarship-program admin?
- Buyer model — free for students, paid by institutions?
- Status — pilot? Prototype? Live with real users?

**Top action item:** Write a `project_scholar_path.md` memory file before next audit.

---

### 2. Thorn

**Honest read:** insufficient. 307 redirect; auditor didn't follow. Thorn is named in the Life Restructure plan as "an existing product" but no project memory exists.

**Open questions:**
- What does Thorn do?
- Is it a Coach House product, a Right Mind product, or independent?
- Worker / buyer / status?

**Top action item:** Write a `project_thorn.md` memory file. This is the single largest unknown in the Coach House portfolio at audit time.

---

### 3. NextGen Preservation Directory

**Honest read:** Louisville Historic Preservation Directory built for NextGen Preservation Collab. Vince has a steering-board role per Life Restructure memory.

**Marketing-tests inference:**
- Specificity: **PASS** — concrete Louisville-historic-preservation focus
- Worker-first: **TBD** — directory could be for preservation-curious citizens (worker) or for the steering board (buyer); walkthrough required
- Dignity: **TBD** — historic-preservation language is values-laden; needs verification

**Top action item:** Write memory + take a Friday-afternoon walkthrough as a curious-citizen persona.

---

### 4. SOP Chat (Active Heroes Cabin Management Hub)

**Honest read:** SOP / cabin-management tool for Active Heroes. The naming ("sop-chat") suggests AI/chat-driven SOP retrieval; the title suggests a more general management hub.

**Marketing-tests inference:**
- Worker-first: **PASS-likely** — Active Heroes cabin staff are the natural worker
- Dignity: **HIGH-CONSEQUENCE** — Active Heroes serves veterans on retreat for suicide-prevention. Any tool touching their workflow must honor that gravity

**Top action item:** Audit-time walkthrough is high-priority given the user-population context. Likely also benefits from a conversation with Cortney Burden / Dave Lewis / Lance Turlington (Active Heroes team named in Life Restructure memory).

---

### 5. Resolve KY Board Dashboard

**Honest read:** board-facing dashboard for Resolve KY. Vince is founder + board chair per memory; the audited "worker" is the board, not external users.

**Marketing-tests inference:**
- Source: **PASS-likely** (board needs are knowable)
- Worker-first: **PASS-likely** — board dashboards are worker-side if they surface what board members actually need before meetings
- Dignity: **PASS-likely** (internal tool, low risk)

**Open questions:**
- Has the board actually used this? Per Life Restructure, the board includes Rachel Firkins, Shannon Masterson, Rich Shanks — each is a real validation source.

**Top action item:** One conversation with a board member (not Vince) about whether the dashboard supports their pre-meeting prep.

---

### 6. Dave AI ("Dave Cain — Coaching Intelligence")

**Honest read:** AI/data tool built for Vince's dad Dave Cain (ICF PCC executive coach, currently at Dame Leadership in Camp Hill PA per `user_dad_dave_cain.md`). Related to but distinct from the "Extend" SaaS-for-coaches idea Vince has been exploring (per `project_extend_coach_saas.md`).

**Marketing-tests inference:**
- Dignity: **HIGH-CONSEQUENCE** — a coaching-AI tool risks substituting algorithmic output for the coach's craft. The PCC/MCC space is *very* sensitive to that
- Worker-first: **TBD** — Dave is the worker; what's actually built for *his* workflow needs walkthrough
- Verifiable claim: **TBD**

**Open questions:**
- Is this the "Extend" product, a precursor, or a personal tool for Dave?
- Has Dave used it?
- Does the output respect ICF PCC norms (the prohibited-vocabulary risk is real here, similar to the Universal Design App's UD ≠ ADA discipline)?

**Top action item:** Write memory + 30-min conversation with Dave about whether the tool fits how he actually coaches. This is high-leverage *and* personally low-friction (family relationship).

---

### 7. Veteran Resource Management

**Honest read:** veteran-benefits discovery. *"You've Served. Now Let Us Help You Find What You've Earned."* — likely Active Heroes-adjacent given Vince's veteran-org portfolio.

**Marketing-tests inference:**
- Specificity: **PASS** — concrete framing
- Dignity: **PASS-likely** — the headline copy respects the veteran's service without being saccharine
- Worker-first: **TBD** — walkthrough needed to verify the page leads with the search task
- Verifiable claim: **HIGH-STAKES** — claims about benefits eligibility must be defensible. This is a regulated content space (VA, federal benefits, state benefits)

**Top action item:** Audit-time walkthrough + check that any eligibility claims have authoritative source citations (e.g., VA.gov). Same vigilance as the IDD Benefit Navigator.

---

### 8. Resolve Nonprofit Tech Navigator

**Honest read:** 307 redirect; auditor didn't follow. Likely a Resolve KY tool for recommending nonprofit tech stacks to member orgs.

**Open questions:**
- Status (live? Pilot?)
- Worker — Resolve members? Outside nonprofits?
- Recommendation logic — Vince's opinion? Surveyed peer recommendations? Sourced data?

**Top action item:** Memory + walkthrough.

---

### 9. IDD Benefit Navigator (codebase-pi-lemon)

**Honest read:** *"Find the Benefits Your Family Deserves"* — IDD benefits-finder, likely connected to Southwest Center's IDD-housing focus (Vince is SWC board member + Open Eye client at SWC).

**Marketing-tests inference:**
- Specificity: **PASS** — IDD framing is specific
- Dignity: **HIGH-CONSEQUENCE** — IDD families have heard a lot of patronizing vendor language. The "your family deserves" framing is correct *if* it doesn't drift into savior tone elsewhere on the page
- Worker-first: **TBD** — walkthrough required
- Verifiable claim: **HIGH-STAKES** — benefits eligibility claims must be defensible. Same vigilance as Veteran Resource Management

**Open questions:**
- Is this SWC's tool, or Coach House-independent?
- Are the benefit data sources current?
- The Vercel project name "codebase-pi-lemon" suggests a scratch / generated name — has the project been linked to a real domain?

**Top action item:** Memory + walkthrough as an IDD family member; especially check the source-citation discipline on benefits eligibility.

---

### 10. Louisville Maker Faire 2026 Board Dashboard

**Honest read:** board-facing dashboard for the Louisville Maker Faire 2026. Internal stakeholder tool.

**Open questions:**
- Vince's role on the Maker Faire (organizer? Board member? Volunteer?)
- Who else uses the dashboard?

**Top action item:** Memory file. The hub naming ("louisville-makes") is generic enough that future state might evolve; capture intent now.

---

### 11. coachhouse.so (ai.coachhouse.so)

**Honest read:** Coach House's *own* AI-strategy-session marketing page. *"See Exactly Where AI Fits in Your Business."*

This is the studio's own front door for paid AI consulting work. It's the page most likely to be read by a real prospective client.

**Marketing-tests inference (high-stakes — this is Coach House marketing itself):**
- Source: **TBD** — claims about AI capability need sourcing
- Specificity: **PASS-likely** — "AI Strategy Sessions" is concrete
- Worker-first: **PARTIAL** — small-business-owner / nonprofit-ED considering Coach House services is the worker. Does the page lead with their question ("does AI fit my business?") or with Coach House's offering?
- Dignity: **TBD**
- Verifiable claim: **TBD** — any "X% productivity gain from AI" claim needs measurement

**Top action item:** This page deserves the same Bothy-style five-test audit Vince did on the Bothy landing. It's the studio's own home; failures here matter more than failures on a per-client tool. Schedule its own per-project audit at next quarterly cycle.

---

### 12. web (web-sable-nine-68)

**Honest read:** renders as "Resolve KY · 60-Day Campaign Command Center" — appears to be an earlier deploy of [resolve-ky-campaign](./2026-Q2-resolve-ky-campaign.md). Possibly a misnamed Vercel project that should be cleaned up.

**Top action item:** Consolidate or delete. If it's a duplicate of resolve-ky-campaign, retire the `web` project to avoid alias-collision risk (per `feedback_vercel_alias_collisions`).

---

## Portfolio-level findings for the no-memory cluster

1. **The lack of memory files is itself the largest audit finding.** Twelve projects with no `project_*.md` means the practice-loop can't close. Each project that doesn't have memory becomes harder to audit usefully every quarter.

2. **High-consequence dignity / verifiable-claim domains.** Four of the twelve touch domains where dignity + source-citation matter heavily: **Active Heroes (veteran suicide-prevention), Veteran Resource Management (federal benefits), IDD Benefit Navigator (disability benefits), and Dave AI (ICF PCC coaching norms).** Each warrants its own per-project audit at next cycle, with attention to anti-patterns #4 (leading) and #8 (marketing faster than product).

3. **coachhouse.so is the studio's own home page.** The Bothy audit + the practice repo are partly *for* coachhouse.so to be defensible. Auditing the studio's own page should be a priority — failures there propagate trust damage across the portfolio.

4. **The `web` project is likely cruft.** Vercel hygiene action.

---

## Action items (highest-leverage first)

### This week

1. **Write memory files** for at least three: **thorn, dave-ai, coachhouse.so.** These three are highest-priority (Coach House product, family-tied, studio own-site).
2. **Consolidate or retire `web`** if it duplicates resolve-ky-campaign.

### This month

3. **Walk through each of the high-consequence four** (SOP Chat / Active Heroes, Veteran Resource Management, IDD Benefit Navigator, Dave AI) and run a fresh per-project audit with the new memory in place.
4. **Audit coachhouse.so to Bothy depth** — full 5-tests, 10-questions, anti-pattern self-grade. The studio's own home deserves the studio's own discipline.

### This quarter

5. **Decide on the rest.** scholar-path, nextgen-preservation-directory, resolve-ky-board, resolve-nonprofit-tech, louisville-makes — each gets either: (a) a real memory file + a full audit at next cycle, or (b) an honest retirement / consolidation note.
6. **Add HCD badges** to the projects that are public + active: nextgen-preservation-directory, veteran-resource-management, idd-benefit-navigator, scholar-path, ai.coachhouse.so. Skip the gated / internal ones (resolve-ky-board, louisville-makes-dashboard, sop-chat).

---

## Why this audit looks different from the others

This audit makes deliberate-and-visible information-gap statements. That's the honest move when auditing without context. A complete-looking audit assembled from inference would violate anti-pattern #1 (research theater) — making it look like we'd done the work when we hadn't.

The fix is mechanical: each `project_*.md` written turns a TBD into a graded item at the next audit.

---

*Combined audit — Coach House research desk. Next audit: 2026-08-20, by which time memory files for the priority projects above should exist.*
