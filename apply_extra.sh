#!/usr/bin/sh
set -e

bsdtar -Oxf chrome.deb data.tar.xz |
  bsdtar -xf - \
    --strip-components=4 \
    --exclude='./opt/google/chrome-unstable/nacl*' \
    ./opt/google/chrome-unstable
rm chrome.deb

install -Dm 755 /app/bin/stub_sandbox chrome-sandbox
