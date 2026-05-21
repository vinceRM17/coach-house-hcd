# Contributing

This repo is the canonical Coach House HCD practice. Suggestions, corrections, and additions are welcome — the practice gets sharper when it's tested against more projects than one studio's.

A few things to know up front.

---

## What this repo accepts

**Yes, please:**

- **Corrections** — a principle is wrongly stated, a pattern misses a critical detail, an anti-pattern has a better defense in your experience.
- **New patterns** — a design or code pattern that has shipped in at least two Coach House projects (or one Coach House project + one external use). See [`patterns/_README.md`](./patterns/_README.md) for the bar.
- **Better playbook steps** — clearer instructions, faster onboarding, dropped steps that aren't earning their weight.
- **External audit observations** — if you've audited a Coach House project and have findings, open an issue or a PR adding the audit.
- **Translation or accessibility improvements** — for the public-facing docs.

**Not quite yet:**

- **New framework principles.** The five principles are deliberate and small. Adding a sixth is a high bar and probably the wrong move; integrating into an existing principle is usually right. If you think a sixth is needed, open an issue first — don't PR a new principle cold.
- **New anti-patterns.** Same bar as principles.
- **Generic "design thinking" content.** This repo is opinionated about what HCD means at Coach House. Generic content that contradicts those opinions probably belongs in a fork.

---

## How to propose a change

1. **Open an issue first** for anything structural — new principle, new anti-pattern, new playbook, change to PRINCIPLES.md or PROCESS.md.
2. **Open a PR directly** for small fixes — typos, broken links, sharper phrasing, pattern doc improvements.
3. **Run the PR through its own gates.** This repo's PR template lives in `scaffold/pull_request_template.md` — for repo-internal PRs, the gates are softer (no measurable claim required for doc edits) but the anti-pattern self-check still applies.

---

## Voice and tone

The voice across this repo is:

- **Peer-to-peer**, not consultant-y. We're talking with other builders, not pitching them.
- **Specific over vague.** Name real users, real products, real moments.
- **Opinionated without being defensive.** The framework will be wrong sometimes; the right response is to update it, not to soften it preemptively.
- **Written for the worker.** Even the meta-docs are written imagining the worker on the other end of a Coach House product reading them.

If a contribution doesn't match the voice, expect feedback in the PR. Voice is part of the practice.

---

## What this repo will never do

- **Replace lived practice with framework.** This repo is the artifact of a practice, not a substitute for the practice. If you can read these docs and ship HCD-grade software without ever talking to a user — we've failed.
- **Pretend the framework is finished.** Every section is version 0.1. The practice will look different in 18 months. The git history is the record.
- **Take credit for IDEO, ISO, or Design Justice.** We cite. We synthesize. We do not claim to have invented HCD.

---

## License

This repo is [MIT-licensed](./LICENSE). Use the framework, the scaffold, the patterns, the playbooks in your own work. Credit appreciated; not required.

If you build something with this scaffolding and want to be listed as a project using the practice, open an issue.

---

*Contributing guide version 0.1 — 2026-05-20.*
