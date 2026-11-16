#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <apk> <output_dir>"
  exit 1
fi
APK="$1"
OUT="$2"
mkdir -p "$OUT"
apktool d -f "$APK" -o "$OUT"
echo "Decompiled to $OUT"
