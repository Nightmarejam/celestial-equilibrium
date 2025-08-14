#!/usr/bin/env bash
set -euo pipefail
FILE="DOCTRINE.md"
if command -v sha256sum >/dev/null 2>&1; then
  calc=$(sha256sum "$FILE" | awk '{print $1}')
else
  calc=$(shasum -a 256 "$FILE" | awk '{print $1}')
fi
echo "SHA-256($FILE) = $calc"
