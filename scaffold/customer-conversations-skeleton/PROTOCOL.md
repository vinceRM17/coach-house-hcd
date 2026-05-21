# Conversation Protocol

How to run a 30-minute customer conversation that produces useful evidence and respects the participant's time.

This protocol is *opt-in.* Coach House does not require interviews on a fixed cadence (see [`_README.md`](./_README.md) for when conversation is the right tool versus when something lighter is). When a conversation is happening — schedule it well, run it well, write it up the same day.

The protocol is calibrated to:

- Avoid leading questions ([anti-pattern #4](../ANTI-PATTERNS.md#4--leading-questions))
- Avoid buyer-user confusion ([anti-pattern #6](../ANTI-PATTERNS.md#6--buyer-user-substitution))
- Produce session notes usable a year from now
- Be runnable in 30 minutes including warm-up and close

---

## Before the conversation (15 min prep)

1. **Identify the participant's role.** Pre-flag whether they are primarily a buyer, a worker, or both. This shapes which questions matter.
2. **Read their context.** If they're an existing user, read prior session notes or feedback they've sent. If they're new, do a five-minute web pass to know what their org / situation looks like.
3. **Have one specific thing you want to learn** going in. Not "general feedback." Something concrete: *"How do they currently handle the gap between submitting a grant and hearing back?"* — a workflow question.
4. **Open a new session file** from [TEMPLATE.md](./TEMPLATE.md). Pre-fill metadata. The notes themselves get captured during the call.

---

## The conversation

### Phase 1 — Warm-up (5 min)

The goal: relax them, get them talking about their work in their own words.

**Opener:**

> *"Thanks for the time. Before we get into anything specific — can you walk me through what your job actually involves on a Tuesday? Not what your title says — what you actually spent yesterday doing."*

This question does three things:

1. Surfaces specifics of their actual work (not their job description).
2. Reveals what they think is normal (which often isn't).
3. Sets the conversation as observational, not evaluative.

**Bad alternatives to avoid:**

- *"How are you?"* — gets nothing.
- *"What are your biggest pain points?"* — leads, abstracts, gets generic answers.
- *"How do you feel about [our product]?"* — centers them on a product instead of their work.

---

### Phase 2 — Workflow walk-through (15 min)

Pick the one workflow you most want to understand. Ask them to walk you through it.

**The right form:**

> *"Show me how you handled [specific thing] last week. Don't tell me how it should work — tell me how it actually went."*

**Or, if they can share screen:**

> *"Open whatever tool you used last time you did X. Walk me through it."*

**Questions during the walk-through:**

- *"What did you do next?"*
- *"What were you trying to figure out at that point?"*
- *"Where did you go to find that?"*
- *"Did anything take longer than you expected?"*
- *"Was there a moment you got annoyed?"*

**Watch for:**

- **Rage moments** — voice changes, sighs, apologies for their own workflow. These are design opportunities.
- **Workarounds** — clever compensations for tool limits. That intelligence belongs in the product.
- **Cross-tool jumps** — every time they switch apps, note it. Tool count is workflow burden.
- **Cognitive load** — every time they say *"I just have to remember"* — that's something the tool should remember for them.

---

### Phase 3 — Forced tradeoffs (5 min)

Now you can ask preference questions — but as tradeoffs, not yes/no.

**Forced-tradeoff questions:**

- *"If you could only have one of {feature A} or {feature B}, which?"*
- *"If you had to give up one thing about your current process to fix one other thing, what would the trade be?"*
- *"What's the smallest change that would meaningfully change how you feel about Mondays?"*

**Banned formulations:**

- ❌ *"Wouldn't it be useful if you could do X?"* (leading)
- ❌ *"Do you like [feature]?"* (politeness trap)
- ❌ *"Would you pay for [thing]?"* (hypothetical purchase isn't real purchase)

---

### Phase 4 — The close (5 min)

Two things must happen:

**1. The respect close.**

> *"What would have made this conversation more valuable for you?"*

This signals you're not just extracting from them. Their answer often reveals what they wish they understood about their own work.

**2. The follow-up close.**

> *"Can I come back to you in six to eight weeks to show you what we did with this? No pitch, just a quick walk-through of whether we got it right."*

This is how you build a research relationship instead of a one-shot interview. It also creates the accountability loop — you commit to acting on what you heard.

---

## Immediately after (10 min — do not skip)

While the conversation is fresh:

1. **Complete the session file.** Fill in every section of the template. The conversation is half the research; the written record is the other half. Don't tell yourself you'll do this later.
2. **Write the one-line commit.** *"Based on this conversation, we WILL: prioritize fixing the calendar-tab task overflow. We WILL NOT: add the preset note templates feature — only one mention, not a pattern."*
3. **Calendar reminder for follow-up** (six to eight weeks).
4. **Note any pattern matches.** If something they said echoes a prior session, link it. Patterns across three or more sessions are roadmap-eligible.

---

## What to do with the data

### Per-session

- Session file lives in `sessions/`. Permanent.
- Commit summary goes in the session file's *Commits* section.

### Per-month (recommended; not required)

- Read every session file from the prior month.
- Update affected persona docs if the project maintains them.
- Note any 3+ pattern (three sessions mentioning the same thing) — escalate to roadmap discussion.

### Per-quarter (recommended; not required)

- Persona refresh cycle if applicable.
- Self-audit against the [eight anti-patterns](../ANTI-PATTERNS.md). Did any session feel like research theater? Was anyone tested who wasn't actually a worker?

---

## When you're stuck

- **Can't get someone to commit?** Offer a $25 coffee card. Most people say yes for $25 they wouldn't say yes to for free.
- **Conversation went flat?** That's data too. Note in the session file what didn't work. Try a different opener next time.
- **Heard something contradictory to other research?** Capture it without resolving it. Three contradictions across three sessions = a pattern worth investigating. One contradiction = noise.
- **Tempted to skip the session file?** Don't. Future-you will not remember the details. The pattern of *"we keep hearing X"* only emerges when sessions are written down.

---

*Protocol version 0.1 — 2026-05-20.*
