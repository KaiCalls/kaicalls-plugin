#!/usr/bin/env bash
set -euo pipefail

curl -X POST https://www.kaicalls.com/api/mcp \
  -H "Authorization: Bearer ${KAICALLS_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list","params":{}}'
