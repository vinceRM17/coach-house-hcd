#!/usr/bin/env bash
# init-coach-house-project.sh — drop Coach House HCD scaffolding into a new project.
#
# Usage:
#   bash init-coach-house-project.sh [target-dir]
#
# Defaults to current directory if no target is given. Idempotent — won't overwrite
# existing files unless you pass --force.

set -euo pipefail

TARGET="${1:-.}"
FORCE=false
if [[ "${2:-}" == "--force" ]]; then FORCE=true; fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

copy_if_safe() {
  local src="$1"
  local dst="$2"
  if [[ -e "$dst" && "$FORCE" != "true" ]]; then
    echo "skip:  $dst (already exists; use --force to overwrite)"
    return
  fi
  mkdir -p "$(dirname "$dst")"
  cp -R "$src" "$dst"
  echo "wrote: $dst"
}

echo "Initializing Coach House HCD scaffolding in: $TARGET"

# PR template
copy_if_safe "$REPO_ROOT/scaffold/pull_request_template.md" "$TARGET/.github/pull_request_template.md"

# README starting point (only if no README yet)
if [[ ! -f "$TARGET/README.md" ]]; then
  copy_if_safe "$REPO_ROOT/scaffold/README-template.md" "$TARGET/README.md"
else
  echo "skip:  $TARGET/README.md (already exists)"
fi

# Customer conversations skeleton — only if user asks
read -r -p "Add customer-conversations/ folder? [y/N] " add_cc
if [[ "$add_cc" =~ ^[Yy]$ ]]; then
  copy_if_safe "$REPO_ROOT/scaffold/customer-conversations-skeleton" "$TARGET/customer-conversations"
fi

# Project kickoff template
copy_if_safe "$REPO_ROOT/PROJECT-KICKOFF.md" "$TARGET/PROJECT-KICKOFF.md"

cat <<EOF

Done.

Next:
  1. Fill in PROJECT-KICKOFF.md.
  2. Add the Coach House HCD reference link to README.md.
  3. Commit the scaffold.

See: https://github.com/coach-house/coach-house-hcd
EOF
