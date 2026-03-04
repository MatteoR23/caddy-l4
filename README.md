# caddy-l4

Docker image for **Caddy** built with the [`mholt/caddy-l4`](https://github.com/mholt/caddy-l4) plugin.

## What it includes

- Multi-stage build with `xcaddy`.
- Caddy + L4 module (`github.com/mholt/caddy-l4`).
- Multi-architecture publishing (`amd64` and `arm64`) to GHCR via GitHub Actions.

## Published image

The workflow publishes to:

`ghcr.io/<owner>/<repo>`

Main tags:

- `latest`
- `<version>` (for example: `2.9.1`)
- `<version>-amd64`
- `<version>-arm64`

## Quick start

```bash
docker pull ghcr.io/<owner>/<repo>:latest
docker run --rm -it ghcr.io/<owner>/<repo>:latest caddy version
```

## Local build

Example to build a specific Caddy version locally:

```bash
docker build --build-arg CADDY_VERSION=2.9.1 -t caddy-l4:local .
```

## CI/CD

The `.github/workflows/build.yml` workflow:

1. Fetches the latest stable release from `caddyserver/caddy`.
2. Builds and pushes per-architecture images.
3. Creates and pushes multi-arch manifests for `<version>` and `latest`.

## License

This repository is licensed under MIT. See [LICENSE](LICENSE).
