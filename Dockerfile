ARG CADDY_VERSION

FROM caddy:builder AS builder

RUN xcaddy build ${CADDY_VERSION} \
    --with github.com/mholt/caddy-l4

FROM caddy:${CADDY_VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy