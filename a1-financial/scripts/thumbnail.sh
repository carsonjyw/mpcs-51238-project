#!/bin/sh
# Capture a 1440x900 gallery thumbnail for one version with local headless Chrome.
# Usage: scripts/thumbnail.sh v01
set -e
V="$1"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --hide-scrollbars \
  --window-size=1440,900 --screenshot="$ROOT/thumbs/$V.png" "file://$ROOT/$V/index.html"
