#!/usr/bin/env bash
# Wrapper for anicca-earn-lancers daily cron (Hermes requires scripts to live
# under ~/.hermes/scripts/, not symlinks escaping the dir). Execs the canonical
# run.sh in the anicca-oss worktree in default --dry-run mode (Wave 1 = no submit).
exec /Users/anicca/anicca-oss/skills/anicca-earn-lancers/scripts/run.sh "$@"
