# calendar-export-rfc-5545

Generate **stable-UID ICS files** ([RFC 5545](https://datatracker.ietf.org/doc/html/rfc5545)) so users keep their existing calendar app instead of us building our own.

## The problem

Every productivity tool that touches deadlines eventually wants to build a calendar UI. A full calendar is expensive — recurring events, time zones, all-day events, color-coding, drag-to-reschedule, mobile sync. It is also already solved, three or four times over, by Google Calendar, Apple Calendar, and Outlook. The worker uses one of those tools every day.

Re-building calendar inside our product creates a second place the worker has to look. Within a month she stops looking.

The alternative is to **emit** her data as an ICS file her existing calendar can subscribe to. Then her deadlines, reports, and stewardship tasks all show up in the calendar she was already using.

## The principle it embodies

[Principle 2 — reduce, then add.](../PRINCIPLES.md#principle-2--reduce-then-add-always-reduce-first) An ICS file is roughly 50 lines of text. A calendar UI is 5000.

[Principle 3 — the worker is the design center.](../PRINCIPLES.md#principle-3--the-person-doing-the-work-is-the-design-center) Her calendar app is where her week lives; meet her there.

## The pattern

Two surface options, depending on the freshness need:

1. **Download-an-ICS-file button.** One-shot export. The user downloads a file and imports it. Simple. No live updates.
2. **Subscribed calendar URL.** A server endpoint returns a fresh ICS file on every fetch. The user subscribes once; their calendar refreshes the URL on Apple/Google/Outlook's own cadence (usually 1-24 hours). Live-ish updates, no infrastructure to maintain past the endpoint.

The subscribed-URL variant is almost always the right one for ongoing data.

### The critical rule: stable UIDs

Each ICS event has a `UID:` field. Generate it as a **deterministic function of the underlying entity ID + event type**, never a random value, never `Date.now()`.

```
UID:grant-<grant_id>-due-date@your-domain.com
UID:report-<report_id>-due-date@your-domain.com
UID:task-<task_id>-due-date@your-domain.com
```

This is the move that makes the integration work. When the worker reschedules a grant deadline in your app, the next ICS fetch updates the *same calendar event* (same UID = update, different UID = new event). Without stable UIDs, every edit creates a duplicate; the worker ends up with 14 versions of "Brown-Forman LOI due" in her calendar.

### Other RFC 5545 rules that matter

- **`CRLF` line endings** (`\r\n`), not `\n`. Strict parsers reject Unix endings.
- **75-octet line folding** for long fields. Most calendar apps tolerate longer lines; some don't.
- **`DTSTART;VALUE=DATE`** for all-day events. Don't put a time on a "due by end of day" event.
- **`SEQUENCE:`** increments when an event is updated. Without it, some calendar apps cache and don't refresh.

### A minimal valid ICS event

```
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Coach House//[Project Name]//EN
BEGIN:VEVENT
UID:grant-abc123-due-date@example.com
DTSTAMP:20260520T120000Z
DTSTART;VALUE=DATE:20260612
SUMMARY:Brown-Forman LOI due
DESCRIPTION:Open in [your project]: https://example.com/grants/abc123
SEQUENCE:0
END:VEVENT
END:VCALENDAR
```

## Where it's currently used

- **Bothy** — `CAL-EXPORT-V1`. Subscribed-URL variant for grant deadlines, report due dates, and stewardship task due dates.
- **30 pilot grant dashboards** — earlier download-an-ICS variant; some have since upgraded to subscribed URLs.

## When to apply it

- The product surfaces dated items (deadlines, due dates, scheduled events).
- The worker already uses a real calendar tool daily.
- The cost of missing a date is high.
- Building a real calendar UI is more work than the rest of the product.

## When NOT to apply it

- The product *is* a calendar (you'd be exporting yourself).
- The data has structure a calendar can't represent (rich tasks with subtasks, complex dependencies).
- The worker explicitly wants the dates *inside* the product and not duplicated to an external tool.

## Variations

- **Download a one-shot file** vs. **subscribed URL endpoint** — the former is simpler to ship; the latter is what people actually want.
- **Per-user URL** vs. **per-org URL** — per-user gives each worker their own filtered feed; per-org gives the whole team one shared feed.
- **Signed tokens in URL** — to keep the subscription URL non-guessable. Always include if the URL is going outside the product's auth boundary.

## Failure modes to avoid

- **Random UIDs.** Every edit becomes a duplicate event in the user's calendar. The single worst bug pattern.
- **Forgetting CRLF.** Some clients silently drop the entire calendar.
- **No `SEQUENCE:`.** Edits don't refresh.
- **Wrong time zone semantics.** "Due by 5pm Eastern" rendered without a timezone shows up as midnight UTC on the wrong day in a worker's calendar in California.

## Receipts

- Bothy CAL-EXPORT-V1 — see commit history in `coach-house-grants/`.
- [RFC 5545 — Internet Calendaring and Scheduling Core Object Specification](https://datatracker.ietf.org/doc/html/rfc5545)

---

*Pattern doc version 0.1 — 2026-05-20.*
