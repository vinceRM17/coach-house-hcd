# How to kick off a new Coach House tool

A step-by-step playbook for starting a new project the Coach House way. The goal is to get the practice scaffolding in place on day one, so the project doesn't drift into HCD-as-claim by week two.

Expected time: 60-90 minutes.

---

## 1. Create the repo

```bash
mkdir my-new-tool && cd my-new-tool
git init
```

## 2. Run the init script

```bash
bash /path/to/coach-house-hcd/scripts/init-coach-house-project.sh .
```

This drops in:

- `PROJECT-KICKOFF.md` (template)
- `.github/pull_request_template.md`
- `README.md` (starting point — only if you don't already have one)
- Optionally `customer-conversations/` if you choose `y` at the prompt

## 3. Fill in PROJECT-KICKOFF.md

Open the file. Answer every section honestly. Particularly:

- **Who's the worker?** Be specific.
- **What's the rage moment?** If you don't know yet, write *"TBD — to be observed in first three conversations"* and book those conversations now.
- **What's the dignity test?** Write both the failing version and the passing version of one sentence of public copy.
- **What's the measurable claim?** Don't ship a number you can't measure.

Commit this file as the first commit.

## 4. Link back from the README

Add this line near the top of `README.md`:

> Coach House HCD practice: https://github.com/coach-house/coach-house-hcd

## 5. Decide where evidence will live

Three options:

- **`customer-conversations/sessions/`** — if you'll be running real conversations.
- **Inline in feature specs / PRs** — lighter touch; works when conversation cadence isn't happening yet.
- **Both** — common.

Note the answer in `PROJECT-KICKOFF.md`. Future-you will look for it.

## 6. (Optional) Book the first observation

If the project has zero conversations on the books, book one before any code is written. Cold outreach is fine: *"I'm building a thing for people who do X. Would you spend 30 minutes walking me through how you do X today, in exchange for a $25 coffee card?"*

This is the single highest-leverage move at kickoff. It's also the one most likely to be deferred.

## 7. First PR uses the gate

The first feature PR uses the PR template and answers all five gates honestly. If Gate 1 is empty, the feature is speculative — note that in the PR description.

## 8. Schedule the first audit

Calendar reminder, three months from now: run the [audit playbook](./how-to-audit-an-existing-tool.md). The first audit is short — there isn't much to audit yet — but the cadence is the practice.

---

## What "done" looks like for kickoff

- [ ] `PROJECT-KICKOFF.md` committed and filled in (no `TBD` left in the user role)
- [ ] PR template in `.github/`
- [ ] README links to the practice repo
- [ ] At least one observation scheduled OR a clear note about why none is needed yet
- [ ] First audit on the calendar

If those five are checked, kickoff is done. Build.
