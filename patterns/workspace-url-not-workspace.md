# workspace-url-not-workspace

Instead of trying to **be** the user's workspace, store a **link** to where the user's real workspace already lives — Drive, Notion, Dropbox, OneDrive, whatever they're already using.

## The problem

Every productivity vendor eventually wants to be the place the work happens. They build a doc editor, a file manager, a notes tab, a comment thread. Every one of these features creates a new place the worker has to remember to look — and a new thing the vendor has to maintain forever.

The worker, meanwhile, already has a place she keeps her draft narratives, her budget spreadsheets, her board reports, her funder photos. It's in Drive (or Notion, or a SharePoint folder). She has the muscle memory. She has the team's permissions. She has version history.

If the product makes her copy those things into a new "workspace," she stops using the product. If the product *links to her real workspace*, she gets continuity without us having to rebuild Drive.

## The principle it embodies

[Principle 2 — reduce, then add.](../PRINCIPLES.md#principle-2--reduce-then-add-always-reduce-first) The lightest version of "workspace" is one URL field.

Also [Principle 5 — be impact-accountable](../PRINCIPLES.md#principle-5--be-impact-accountable-not-intent-accountable). The impact of "we'll be your workspace" is usually that users abandon the feature; the impact of "we'll link to your workspace" is usually that they keep using both.

## The pattern

A single `workspace_url` field per entity (grant, report, project, listing). When set, the UI shows a "Open in [tool]" button that opens the user's existing workspace in a new tab.

Database shape:

```sql
alter table grants add column workspace_url text;
alter table reports add column workspace_url text;
-- optionally: alter table funders add column workspace_url text;
```

UI shape:

```
┌──────────────────────────────────────────────────────────────┐
│  Brown-Forman LOI · drafting                                 │
│  Due Jun 12 · 18 days                                        │
│                                                               │
│  Workspace: drive.google.com/drive/folders/abc123  [open ↗]  │
└──────────────────────────────────────────────────────────────┘
```

Implementation notes:

- **Validate the URL is HTTPS and well-formed.** Don't try to infer "what tool."
- **Open in a new tab, always.** Users keep their context; the link is not a navigation event.
- **No previewing.** Don't fetch the doc and render it inline. That's the slippery slope back to "be the workspace."
- **No required structure.** The user owns what lives at that URL. Some will link to a single Drive doc; others to a folder; others to a Notion page.

## Where it's currently used

- **Bothy** — `REPORTING-V1.1` (per-report workspace link). The first place this pattern crystallized.
- **Resolve Startup App** — entity formation guides link out to the SOS PDF and the IRS Form 1023 pages rather than reproducing them.

## When to apply it

- The user's actual artifact (document, spreadsheet, draft) lives in a richer tool than yours.
- You want to provide *continuity* (a place to remember where the artifact is) without owning the artifact.
- The artifact is collaborative; rebuilding the collaboration features of Drive/Notion in your product is not on the roadmap.

## When NOT to apply it

- The artifact is structurally part of your product's data model (e.g., a customer record in a CRM is not a "workspace link"; it's a first-class entity).
- Users explicitly want the artifact inside your product (rare, but real — sometimes the consolidation is the value).
- The artifact has compliance / audit requirements that demand you control it.

## Variations

- **Per-entity URL** — the default (one URL per grant, per report).
- **Per-org URL** — when the whole org has one workspace location (e.g., a single Drive folder for all grants). Less flexible but lighter to maintain.
- **Multiple typed URLs per entity** — e.g., a "narrative draft URL" and a "budget URL" as separate fields. Use sparingly; the simplicity of one URL is most of the value.

## Receipts

- Bothy REPORTING-V1.1 — see commit history in `coach-house-grants/`.
- Resolve Startup App outbound links to SOS / IRS — see `resolve-startup-app/`.

---

*Pattern doc version 0.1 — 2026-05-20.*
