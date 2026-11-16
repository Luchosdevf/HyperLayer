#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi
sha256sum "$1"
