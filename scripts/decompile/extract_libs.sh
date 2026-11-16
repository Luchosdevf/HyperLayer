#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <apk>"
  exit 1
fi
APK="$1"
echo "Native libraries in $APK:"
unzip -l "$APK" | grep -E '\.so$' || echo "(none)"
