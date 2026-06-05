#!/usr/bin/env bash
# Wrapper for #327c spawn-watcher (hermes traversal-guard requires the cron script to
# physically live under ~/.hermes/scripts/). Points at the canonical main-repo path;
# the watcher itself is idempotent + dual-gated, so it is a safe no-op until the
# Anicca wallet >= $5 USDC AND a Daytona region exists.
WATCHER=/Users/anicca/anicca-oss/skills/spawn-child/scripts/spawn-watcher.sh
# Silent no-op until feat/p5-spawn-watcher is merged to main (keeps the hourly cron quiet).
[ -x "$WATCHER" ] || exit 0
exec "$WATCHER" "$@"
