#!/usr/bin/env bash
# Wrapper for self-improve (#335): Hermes v0.12.0 traversal-guard requires the
# --script path to physically live under ~/.hermes/scripts/.
# PRE-MERGE this execs the worktree skill; AFTER merge of feat/p10-self-improve
# to main, swap the path to:
#   /Users/anicca/anicca-oss/skills/self-improve/scripts/run.sh
exec /Users/anicca/anicca-oss/skills/self-improve/scripts/run.sh "$@"
