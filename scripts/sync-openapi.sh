#!/usr/bin/env bash
set -euo pipefail
curl -fsSL https://api-docs.edgepress.cc/openapi.json -o "$(dirname "$0")/../openapi.snapshot.json"
echo "openapi.snapshot.json updated"
