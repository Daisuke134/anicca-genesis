#!/usr/bin/env bash
# Wrapper for anicca-predict (#337 P14). Hermes v0.12.0 traversal-guard requires the --script
# path to physically live under ~/.hermes/scripts/ (real file, NOT a symlink).
# Execs the recurring resolve sweep (NOT predict.sh — opening a wager is a deliberate act).
# Prefers the canonical main-tree path; falls back to the feature worktree until the merge lands.
CANON=/Users/anicca/anicca-oss/skills/anicca-predict/scripts/resolve.sh
WORKTREE=/Users/anicca/anicca-oss/skills/anicca-predict/scripts/resolve.sh
if [ -x "$CANON" ]; then exec "$CANON" "$@"; else exec "$WORKTREE" "$@"; fi
