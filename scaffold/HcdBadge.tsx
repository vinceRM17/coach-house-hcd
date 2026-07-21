import { Compass } from "lucide-react";

/**
 * The visible studio signature for Coach House products.
 *
 * Drop into the footer of any Coach House product page. Links to:
 *   - The Coach House HCD practice repo (https://github.com/Coach-House/coach-house-hcd
 *     — pending transfer to the Coach-House org)
 *   - This product's most recent quarterly audit (pass the URL via `auditUrl`)
 *
 * Why this exists: per the seven studio mechanisms in the practice repo,
 * mechanism #6 is "studio visible signature" — every Coach House product
 * surfaces a small mark that links back to the practice + that product's
 * audit. Visible accountability.
 *
 * Tailwind v4 + lucide-react required. For static-HTML projects use the
 * sibling file `hcd-badge.html` instead.
 */
export function HcdBadge({
  auditUrl,
  auditLabel = "Latest audit",
}: {
  /** Link to this product's most recent quarterly audit. Required. */
  auditUrl: string;
  /** Optional label override for the audit link (e.g., "Q2 2026 audit"). */
  auditLabel?: string;
}) {
  return (
    <div className="inline-flex flex-wrap items-center gap-2.5 rounded-full border border-line bg-card px-3.5 py-1.5 text-xs text-muted">
      <span className="inline-flex items-center gap-1.5 font-medium text-foreground">
        <Compass size={12} strokeWidth={2} className="text-accent" />
        Built with Coach House HCD
      </span>
      <span className="text-muted/60" aria-hidden="true">·</span>
      <a
        href="https://github.com/Coach-House/coach-house-hcd"
        target="_blank"
        rel="noreferrer"
        className="hover:text-foreground transition"
      >
        Practice
      </a>
      <span className="text-muted/60" aria-hidden="true">·</span>
      <a
        href={auditUrl}
        target="_blank"
        rel="noreferrer"
        className="hover:text-foreground transition"
      >
        {auditLabel}
      </a>
    </div>
  );
}
