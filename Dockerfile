FROM caddy:2.11.3-builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-l4

FROM caddy:2.11.3

COPY --from=builder /usr/bin/caddy /usr/bin/caddy