#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <decompiled_dir>"
  exit 1
fi
DIR="$1"
if [ -f "$DIR/AndroidManifest.xml" ]; then
  cat "$DIR/AndroidManifest.xml"
else
  echo "AndroidManifest.xml not found in $DIR"
  exit 1
fi
