#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <decompiled_dir>"
  exit 1
fi
DIR="$1"
MANIFEST="$DIR/AndroidManifest.xml"
if [ ! -f "$MANIFEST" ]; then
  echo "Manifest not found: $MANIFEST"
  exit 1
fi
echo "=== PERMISSIONS ==="
grep -oE 'android:name="android.permission[^"]*"' "$MANIFEST" | sort -u
echo "=== PROVIDERS ==="
grep -oE '<provider[^>]*>' "$MANIFEST"
echo "=== SERVICES ==="
grep -oE '<service[^>]*>' "$MANIFEST"
echo "=== RECEIVERS ==="
grep -oE '<receiver[^>]*>' "$MANIFEST"
