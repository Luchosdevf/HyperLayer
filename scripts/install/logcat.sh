#!/usr/bin/env bash
set -euo pipefail
FILTER="${1:-}"
if [ -n "$FILTER" ]; then
  adb logcat | grep -i "$FILTER"
else
  adb logcat
fi
