#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <apk>"
  exit 1
fi
APK="$1"
KEYSTORE="${HOME}/.android/debug.keystore"
if [ ! -f "$KEYSTORE" ]; then
  echo "Debug keystore not found at $KEYSTORE"
  exit 1
fi
apksigner sign --ks "$KEYSTORE" --ks-key-alias androiddebugkey --ks-pass pass:android --key-pass pass:android "$APK"
echo "Signed: $APK"
