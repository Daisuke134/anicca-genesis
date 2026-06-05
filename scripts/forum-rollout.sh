#!/usr/bin/env bash
# Wrapper for forum-rollout (#338 P15). Hermes `--script` traversal-guard requires
# a real file (NOT a symlink) physically under ~/.hermes/scripts/. Execs the canonical
# run.sh on main once the merge lands; falls back to the feature worktree until then.
CANON=/Users/anicca/anicca-oss/skills/forum-rollout/scripts/run.sh
WORKTREE=/Users/anicca/anicca-oss/skills/forum-rollout/scripts/run.sh
if [ -x "$CANON" ]; then exec "$CANON" "$@"; else exec "$WORKTREE" "$@"; fi
