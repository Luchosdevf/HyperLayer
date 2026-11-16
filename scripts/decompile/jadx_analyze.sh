#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <apk> <output_dir>"
  exit 1
fi
APK="$1"
OUT="$2"
mkdir -p "$OUT"
jadx -d "$OUT" "$APK"
echo "JADX output in $OUT"
