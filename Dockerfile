# syntax=docker/dockerfile:1
# ── Official image wrapper ───────────────────────────────────────
# This project publishes an official image: lscr.io/linuxserver/code-server
# We re-tag it with Unraid metadata rather than building from source.
# Building from source is fragile (Bun, native modules, pnpm workspaces)
# and unnecessary when upstream provides a production-grade multi-arch image.
FROM lscr.io/linuxserver/code-server
LABEL org.opencontainers.image.source="https://github.com/linuxserver/docker-code-server" \
    org.opencontainers.image.description="Auto-containerized by TITAN Unraid Dockerizer v2.9"
EXPOSE 8443
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
CMD curl -sf http://localhost:8443/health \
 || curl -sf http://localhost:8443/healthz \
 || curl -sf http://localhost:8443/ \
 || exit 1
