# 2026-Q2 Pete QPR Finder HCD Audit

**Date:** 2026-05-20
**Auditor:** Coach House research desk (self-audit; first quarter)
**Reference framework:** [`PRINCIPLES.md`](../PRINCIPLES.md), [`PROCESS.md`](../PROCESS.md), [`ANTI-PATTERNS.md`](../ANTI-PATTERNS.md)
**Live URL:** https://pete-qpr-finder.vercel.app
**Repo:** `~/Projects/pete-qpr-finder/`
**Prior audit:** None (first)

This is the first quarterly audit for Pete QPR Finder. The product shipped 7-of-8 phases of v1 in May 2026; this audit catches it up to the Coach House practice retroactively.

The auditor (Coach House) is also the builder. That's anti-pattern #3 territory — internal feedback masquerading as user research. The audit notes specifically where the lack of external user conversations weakens the grade.

---

## Part 1 — Public surface vs. the five marketing tests

Pages audited: `/`, `/about`, `/trainings`, `/trainers`, `/privacy`.

### Test 1 — Source

| Claim | Verdict | Receipt |
|---|---|---|
| The page surfaces upcoming trainings with ZIP+radius search | **PASS** | Built feature; verifiable on the live site |
| "Free, public directory of QPR trainings" | **PASS** | Verifiable |
| Any benefit claims about parent outcomes ("find a trainer near you in five minutes") | **NOT YET CLAIMED** | The site is currently informational; no benefit claims that need sourcing |
| 988 + Crisis Text Line in footer | **PASS** | Verifiable presence on every page |

**Score: 3 PASS, no failures because no user-benefit claims yet on the marketing surface.**

### Test 2 — Specificity

| Section | Verdict | Notes |
|---|---|---|
| Homepage describes the product as "find a QPR trainer near you" | **PASS** | Specific to the task |
| `/about` page explains who built it (TPF + Coach House) and why | **PASS** | Concrete and honest |
| The ZIP search affordance is explicit on the page | **PASS** | Specific, not generic |

**Score: 3 PASS / 0 PARTIAL / 0 FAIL.**

### Test 3 — Worker-first

| Element | Verdict | Notes |
|---|---|---|
| Homepage leads with the parent's search task ("find a trainer") | **PASS** | Worker-first by design |
| Admin surface is hidden behind `/login`; not visible on the public marketing surface | **PASS** | Buyer / volunteer-leader view doesn't crowd out the searcher |
| The site does not surface "stats about how many trainings happened" or other foundation-board flourish | **PASS** | Resists buyer-substitution cleanly |

**Score: 3 PASS.**

### Test 4 — Dignity

| Element | Verdict | Notes |
|---|---|---|
| Crisis context handled with 988 + Crisis Text Line in footer of every page | **PASS** | Dignified and present without being weaponized |
| No marketing flourish around "save a life today" — the framing is *find a training* | **PASS** | Respects the searcher's reasons for being there |
| No condescension toward people unfamiliar with QPR — the `/about` page explains what it is | **PASS** | Clear without patronizing |

**Score: 3 PASS.**

### Test 5 — Verifiable claim

| Claim | Verdict | Notes |
|---|---|---|
| "Find a QPR trainer near you" — the operative promise | **AT RISK** | The site is currently empty of seeded trainers (per project memory: "awaits Vince seeding first trainer"). Until at least 2-3 trainers are listed in Kentucky, the promise is provisional. |
| 988 + Crisis Text Line are real numbers | **PASS** | Verifiable |
| Service area is Kentuckiana + adjacent states | **PASS** | Verifiable |

**Score: 2 PASS / 1 AT RISK.**

### Overall public-surface score

**14 PASS / 1 AT RISK / 0 FAIL across 15 graded items.**

The public surface is well-positioned. The biggest open item is **the directory needs to be populated before the "find a trainer" promise lands honestly.** Once trainers are seeded (Vince + at least one other), the AT-RISK becomes PASS.

---

## Part 2 — The project vs. the ten audit questions

### 1. Can you name 3+ real users whose conversations or observations motivated each feature?

- **ZIP-radius search:** **PARTIAL** — based on Vince's own QPR training experience as a trainer, plus general knowledge that Kentucky is geographically dispersed. No parent-side conversations.
- **Inquiry form (rate-limited, honeypot, admin status workflow):** **PARTIAL** — Vince's experience receiving inquiries; no parent-side validation.
- **Magic-link admin auth:** **PARTIAL** — appropriate for a small directory; no external trainer-side conversations.
- **988 + Crisis Text Line footer:** **PASS** — sector standard for any mental-health-adjacent product; not designer preference.
- **JSON-LD `schema.org/Event` on training pages:** **PASS** — Google rich results best practice; not user-derived.

**Verdict: PARTIAL.** Most decisions are reasonable but builder-derived. Anti-pattern #3 (testing with the wrong users / builder-as-user) is firing softly.

### 2. Have you watched at least 3 users use each shipped feature for 2 weeks before marketing it?

**FAIL.** The product is live; no observed users yet. Vince has tested the admin flow himself.

### 3. Does your marketing pass the five authenticity tests?

**PASS-with-asterisk.** 14 PASS / 1 AT RISK / 0 FAIL. The asterisk: "find a trainer near you" needs the directory populated to land.

### 4. Is the team operating at a sustainable pace?

**PARTIAL.** The 27 commits + 7 phases shipped in a few days is fast but not obviously burnout-driven. Should be monitored against [anti-pattern #7](../ANTI-PATTERNS.md#7--inhuman-pace).

### 5. Are you measuring outcome claims after shipping?

**FAIL.** No measurement of search-to-inquiry conversion, time-to-first-result, or trainer-side time-to-publish. Vercel Analytics is wired but not instrumented for HCD-specific outcomes.

### 6. Do you have the per-feature five-gate process actually in use?

**FAIL.** Phases shipped before the gate process was extracted into the studio practice. Going forward, future features should run the gate.

### 7. If you maintain personas, are they being refreshed?

**N/A.** No personas maintained. For a product with two distinct user roles (parent searching, trainer publishing), one persona per role would be worth adding once real conversations are had.

### 8. Are you separating buyer feedback from worker feedback?

**PASS.** TPF board (buyer) is distinct from parent searchers (worker). Builder is aware of the distinction.

### 9. Do you involve the affected community in design decisions?

**PARTIAL.** Vince has authority as a TPF board member + certified QPR trainer — that's *some* community involvement. No parents have been consulted. No trainers outside Vince have been consulted.

### 10. Are you accountable for impact, not just intent?

**FAIL today, fixable.** No measurement = no accountability. Once trainers are seeded, the natural impact metric is *did real parents find real trainers and contact them?* — track inquiry submission count + check-in with seeded trainers about whether they received inquiries.

### 10-question summary

- **PASS: 1** (#8)
- **PARTIAL: 4** (#1, #3, #4, #9)
- **FAIL: 4** (#2, #5, #6, #10)
- **N/A: 1** (#7)

A well-built v1 product that hasn't yet been put through the HCD process. The product surface is clean; the practice around it is the gap.

---

## Part 3 — Anti-pattern self-grade

| Anti-pattern | Status | Receipt |
|---|---|---|
| **#1 Research theater** | CLEAN | No research happening yet; no theater either |
| **#2 Persona fossilization** | N/A | No personas |
| **#3 Wrong users** | VIOLATING | Builder-as-user pattern. Vince is a QPR trainer and a TPF board member; he is *adjacent* to the searcher role but not the searcher role itself. Needs at least one parent conversation. |
| **#4 Leading questions** | CLEAN | No interviews yet |
| **#5 Sample of one** | VIOLATING (softly) | Decisions traced to one source (the builder). Multi-source validation needed before claiming the product is well-shaped. |
| **#6 Buyer-user substitution** | CLEAN | TPF board (buyer) hasn't substituted for the parent's view; the homepage is parent-first |
| **#7 Inhuman pace** | AT RISK | Fast shipping cadence; not yet visibly burnout-driven but worth watching |
| **#8 Marketing faster than product** | AT RISK | The "find a trainer near you" promise is real architecturally but currently empty of seeded trainers. Until populated, the marketing slightly outruns the data |

**Anti-pattern summary:** 3 clean / 2 at risk / 2 violating / 1 N/A.

---

## Part 4 — The closing test

> *"If a parent in Louisville who's been worried about her teen for the past three months opened Pete QPR Finder on a Wednesday evening, would she recognize the product as built for her — or would she recognize it as a foundation's promotional tool?"*

**Honest answer:** She would recognize it as built for her *at the level of UX architecture* — the homepage leads with the search task; the crisis context is honored without being marketing-fluff; the directory shape matches how she'd think about the question. **But she would currently find the directory empty** (no seeded trainers), at which point the product becomes a promise the data isn't yet keeping.

The fix is mechanical: seed Vince + at least one other trainer + at least two upcoming sessions. After that, the closing test passes cleanly for the first time.

A separate question: would *Vince's training students* (parents he's already trained) recognize the listing for *him* as accurate and respectful? That's the easiest gut-check available — he can ask three of them at his next session.

---

## Action items (highest leverage first)

### Fix this week

1. **Vince seeds himself as the first trainer.** Configure Supabase Auth URLs, log in, fill the profile. ~10 min. (Already on the backlog in the project memory.)
2. **Vince publishes one upcoming training session** in the admin UI to make the homepage land with real data.
3. **Reach out to 1-2 other Kentucky QPR trainers** Vince knows from the trainer network; offer to seed their listing for them. The directory becomes useful at 3+.

### Fix this month

4. **Have one parent conversation.** The next parent who attends a Vince-led QPR session: at the end, ask if she found the training via the site or some other way. Ten minutes. Captures one real source. Removes the anti-pattern #3 (builder-as-user) violation.
5. **Wire inquiry-submission analytics.** Count distinct ZIPs that result in inquiries; check if the radius is right.
6. **Add a /process or /how-this-was-built page** linking back to the Coach House HCD practice and to this audit. Meta-transparency.

### Fix this quarter

7. **Q3 check-in with seeded trainers.** Six-to-eight weeks after seeding, ask each trainer whether they've received inquiries through the site. If yes, ask if anyone showed up to a session as a result.
8. **Resolve the deferred items** (Resend for inquiry handoff; Cloudflare Turnstile for anti-spam) — they're scaffolded; need keys.
9. **Decide on persona maintenance.** Two personas (parent + trainer) at v1 would help future audit clarity.

---

## What we got right since last audit

This is the first audit. The state to celebrate: the product surface itself is structurally HCD-clean. The worker-first homepage, the crisis-context handling, the explicit out-of-scope ("not a crisis hotline; not a training platform"), and the scoped Kentuckiana-first promise all reflect the practice the studio is now codifying — the practice was followed in spirit before the framework was extracted. The gap is the operating discipline (measurement, observation, conversation) around an already-clean product.

---

## Why this audit exists

The Coach House practice grades every active project quarterly. The first audit's job is honest baseline; subsequent audits track progress.

**Next audit:** 2026-08-20 (quarterly cadence).
**External auditor target:** one seeded trainer + one parent who attended a session — paid coffee card + a thank-you note.

— *Coach House research desk*
