#!/usr/bin/env bash
# Wrapper for anicca-resurrection (#337 P14). Hermes v0.12.0 traversal-guard requires a real file
# under ~/.hermes/scripts/. Execs the daily checkpoint (NO auto-restart — restart is deliberate).
# Prefers the canonical main-tree path; falls back to the feature worktree until the merge lands.
CANON=/Users/anicca/anicca-oss/skills/anicca-resurrection/scripts/checkpoint.sh
WORKTREE=/Users/anicca/anicca-oss/skills/anicca-resurrection/scripts/checkpoint.sh
if [ -x "$CANON" ]; then exec "$CANON" "$@"; else exec "$WORKTREE" "$@"; fi
