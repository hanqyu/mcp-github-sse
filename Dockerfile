FROM ghcr.io/sparfenyuk/mcp-proxy:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Default port for the service
ENV PORT=8000

# Run the service
EXPOSE ${PORT}

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]