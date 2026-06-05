#!/usr/bin/env bash
# Wrapper for anicca-heartbeat (Task 6: hermes traversal-guard requires
# the script to physically live under ~/.hermes/scripts/).
# After merge of feat/p1-hermes-boot to main, swap the path to:
#   /Users/anicca/anicca-oss/skills/anicca-heartbeat/scripts/heartbeat.sh
exec /Users/anicca/anicca-oss/skills/anicca-heartbeat/scripts/heartbeat.sh "$@"
