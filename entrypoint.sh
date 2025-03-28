#!/bin/sh

mcp-proxy \
  --sse-port=$PORT \
  --env GITHUB_ACCESS_TOKEN "$GITHUB_ACCESS_TOKEN" \
  -- \
  npx -y @modelcontextprotocol/server-github