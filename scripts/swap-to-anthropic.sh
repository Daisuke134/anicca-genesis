#!/usr/bin/env bash
# Hourly cron that tries Anthropic OAuth; on success switches default provider.
# Auto-reverts to copilot if anthropic is still exhausted.
set -euo pipefail
if /Users/anicca/.local/bin/hermes auth list anthropic 2>&1 | grep -qE '^\s*#\d+.*oauth\s+\S+\s*←\s*$'; then
  # An OAuth credential is active (not exhausted-marker) — try a probe
  out=$(/Users/anicca/.local/bin/hermes chat --provider anthropic --model claude-haiku-4-5-20251001 -q "ok" 2>&1 | tail -3)
  if echo "$out" | grep -qiE '(upgrade|exhausted|credit)'; then
    : # still exhausted, do nothing
  else
    /Users/anicca/.local/bin/hermes config set model.provider anthropic > /dev/null 2>&1
    /Users/anicca/.local/bin/hermes config set model.default claude-haiku-4-5-20251001 > /dev/null 2>&1
    mkdir -p /Users/anicca/.hermes/state
    printf '{"ts":"%s","action":"swapped_to_anthropic"}\n' "$(date -u +%FT%TZ)" >> /Users/anicca/.hermes/state/provider-swap.jsonl
  fi
fi
