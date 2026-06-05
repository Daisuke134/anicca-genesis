#!/usr/bin/env bash
# Wrapper for daily-report (#330): hermes v0.12.0 traversal-guard requires the
# --script path to physically live under ~/.hermes/scripts/.
# PRE-MERGE this execs the worktree skill; AFTER merge of feat/p7-daily-report
# to main, swap the path to:
#   /Users/anicca/anicca-oss/skills/daily-report/scripts/daily-report.sh
exec /Users/anicca/anicca-oss/skills/daily-report/scripts/daily-report.sh "$@"
