# MCP GitHub SSE Server

This repository contains a Docker image for running the Model Context Protocol (MCP) GitHub server with Server-Sent Events (SSE) support.

## Overview

The Docker image is based on `ghcr.io/sparfenyuk/mcp-proxy` and sets up an environment to run the `@modelcontextprotocol/server-github` package using npx.

## Features

- Node.js and npm pre-installed
- Configurable port (default: 8000)
- Easy GitHub token configuration
- Uses mcp-proxy to manage SSE connections

## Usage

### Build the Docker Image

```bash
docker build -t mcp-github-sse .
```

### Run the Container

```bash
docker run -p 8000:8000 -e GITHUB_ACCESS_TOKEN="your_github_token" mcp-github-sse
```

### Custom Port

You can specify a custom port by setting the `PORT` environment variable:

```bash
docker run -p 9000:9000 -e PORT=9000 -e GITHUB_ACCESS_TOKEN="your_github_token" mcp-github-sse
```

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| GITHUB_ACCESS_TOKEN | Your GitHub personal access token | Yes |
| PORT | The port to expose the service (default: 8000) | No |

## Dockerfile Explanation

The Dockerfile performs the following steps:

1. Uses the `ghcr.io/sparfenyuk/mcp-proxy` base image
2. Installs Node.js and npm using Alpine package manager
3. Sets the default port to 8000
4. Copies the entrypoint script that runs mcp-proxy with the GitHub server
5. Configures permissions and exposes the service port

## References

- [MCP Proxy](https://github.com/sparfenyuk/mcp-proxy) - The base proxy server used for SSE connections
- [MCP GitHub Server](https://github.com/modelcontextprotocol/servers/tree/main/src/github) - The Model Context Protocol GitHub server implementation

## License

See the LICENSE file for details.
