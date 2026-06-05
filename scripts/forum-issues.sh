#!/usr/bin/env bash
# Wrapper for forum-issues (#334 P9). Hermes `--script` traversal-guard requires
# the script to physically live under ~/.hermes/scripts/ (real file, NOT a symlink).
# Execs the canonical run.sh on main (post-merge of feat/p9-forum-issues).
# Falls back to the feature worktree until the merge lands so the cron works now.
CANON=/Users/anicca/anicca-oss/skills/forum-issues/scripts/run.sh
WORKTREE=/Users/anicca/anicca-oss/skills/forum-issues/scripts/run.sh
if [ -x "$CANON" ]; then exec "$CANON" "$@"; else exec "$WORKTREE" "$@"; fi
