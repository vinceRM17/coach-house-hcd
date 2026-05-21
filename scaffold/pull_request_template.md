# Pull Request

## What this changes

<!-- 1-2 sentence summary. Focus on the user-visible change, not the implementation. -->

## Type

- [ ] Feature (adds capability)
- [ ] Bug fix (corrects unintended behavior)
- [ ] Refactor (no behavior change)
- [ ] Documentation
- [ ] Infrastructure / tooling
- [ ] Marketing copy or design

---

## HCD per-feature gate

**Required for `Feature` PRs.** For other types, skip to "Other checks" below.

Per the [Coach House HCD process](https://github.com/coach-house/coach-house-hcd/blob/main/PROCESS.md), every feature passes five gates before it can be claimed in marketing. If any answer is "no" or "I'm not sure," the PR does not merge — go back to the appropriate phase.

### Gate 1 — Evidence

Name the **observations** that motivated this feature. Each is a real user conversation, a passive observation, an email/message from a user, an instrumentation pattern, or a repeated request from multiple independent users.

- [ ] Source 1: [link to session note / message / log query / observation]
- [ ] Source 2: [link]
- [ ] Source 3: [link — if applicable; bar scales with size of bet]

> ⚠️ If you cannot name the observation, this feature is speculative. Label it that way or shelve it until evidence shows up.

### Gate 2 — Measurable claim

What specific outcome is this feature supposed to deliver?

**The claim:**

> *e.g., "This should reduce time-to-first-funder-log-entry by ≥30%"*
> *e.g., "This should let 3 of 3 pilot users complete a stewardship task in ≤2 clicks"*

**How we'll measure it:**

- [ ] Instrumentation in place to count the relevant action (or qualitative follow-up scheduled)
- [ ] Baseline captured if quantitative
- [ ] Re-measurement scheduled for 2 weeks post-ship

### Gate 3 — Prototype review

- [ ] At least 1 real user has reacted to a sketch, mock, or prototype
- [ ] Their reaction is captured (note linked above)
- [ ] Reaction was something other than confusion or "I'd have to see it built first"

### Gate 4 — Evaluation plan

- [ ] Named the small cohort this feature ships to first (often three)
- [ ] Calendar reminder set for 2-week post-ship check-in
- [ ] If the measurable claim fails — owner accepts that the feature reopens, not the marketing copy

### Gate 5 — Marketing eligibility

- [ ] **This feature is NOT yet eligible** for marketing claims until Gate 4 completes
- [ ] Or: this feature has cleared the gate — link to verification

---

## Other checks (all PRs)

- [ ] Code passes lint + build (per the project's tooling)
- [ ] No unverified factual claims added to marketing copy
- [ ] No new "Coming soon" features added to public surfaces without an honest ship date
- [ ] Smoke-tested at least one production URL post-deploy if shared templates are touched

---

## Anti-pattern self-check

Quick gut-check against the [eight anti-patterns](https://github.com/coach-house/coach-house-hcd/blob/main/ANTI-PATTERNS.md). Check any that apply and address before merging:

- [ ] **#1 Research theater** — am I citing research I didn't actually act on?
- [ ] **#2 Persona fossilization** — am I designing for personas that haven't been refreshed in 6+ months?
- [ ] **#3 Wrong users** — were my "user conversations" actually founder/friend chats?
- [ ] **#4 Leading questions** — did I ask "wouldn't it be useful if..." to anyone?
- [ ] **#5 Sample of one** — is this driven by a single passionate user?
- [ ] **#6 Buyer-user substitution** — am I optimizing for the buyer's demo at the worker's expense?
- [ ] **#7 Inhuman pace** — am I shipping this through unsustainable work hours?
- [ ] **#8 Marketing faster than product** — does the marketing claim outrun the shipped reality?

---

## Closing test

> *If the workers on the other end of this product opened this PR's change and used it, would they recognize themselves and their work?*

- [ ] Yes — proceed
- [ ] No — go back; rewrite or rebuild

---

*Template sourced from [coach-house-hcd](https://github.com/coach-house/coach-house-hcd). Suggest changes via PR to that repo.*
