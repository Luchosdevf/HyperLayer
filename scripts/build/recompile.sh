#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <decompiled_dir> <output_apk>"
  exit 1
fi
DIR="$1"
OUT="$2"
apktool b "$DIR" -o "$OUT"
echo "Built: $OUT"
