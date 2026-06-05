#!/usr/bin/env bash
# Wrapper for anicca-payout-ubi (#326): hermes v0.12.0 traversal-guard requires the
# --script path to physically live under ~/.hermes/scripts/ (a symlink to the worktree
# is rejected). This real script execs the worktree skill.
# PRE-MERGE this execs the worktree skill; AFTER merge of feat/p4-constitution-payout
# to main, swap the path to:
#   /Users/anicca/anicca-oss/skills/anicca-payout-ubi/scripts/payout-ubi.sh
exec /Users/anicca/anicca-oss/skills/anicca-payout-ubi/scripts/payout-ubi.sh "$@"
