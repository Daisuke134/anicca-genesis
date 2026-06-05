#!/usr/bin/env bash
# Wrapper for self-manage (#336): Hermes v0.12.0 traversal-guard requires the --script path
# to physically live under ~/.hermes/scripts/.
# PRE-MERGE this execs the worktree skill; AFTER merge of feat/p13-self-manage to main, swap to:
#   /Users/anicca/anicca-oss/skills/self-manage/scripts/run.sh
exec /Users/anicca/anicca-oss/skills/self-manage/scripts/run.sh "$@"
