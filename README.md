# caddy-l4

[![Build](https://github.com/MatteoR23/caddy-l4/actions/workflows/build.yml/badge.svg)](https://github.com/MatteoR23/caddy-l4/actions/workflows/build.yml)
[![Dependabot](https://img.shields.io/badge/dependabot-enabled-025E8C?logo=dependabot)](https://github.com/MatteoR23/caddy-l4/blob/main/.github/dependabot.yml)

Docker image for **Caddy** built with the [`mholt/caddy-l4`](https://github.com/mholt/caddy-l4) plugin.

## What it includes

- Multi-stage build with `xcaddy`
- Caddy + L4 module (`github.com/mholt/caddy-l4`)
- Multi-architecture publishing (`amd64` and `arm64`) to GHCR via GitHub Actions
- Automatic updates via Dependabot (daily for Caddy, weekly for Actions)

## Published image

```
ghcr.io/matteo23/caddy-l4:latest
ghcr.io/matteo23/caddy-l4:<version>        # e.g. 2.11.1
ghcr.io/matteo23/caddy-l4:<version>-amd64
ghcr.io/matteo23/caddy-l4:<version>-arm64
```

## Quick start

```bash
docker pull ghcr.io/matteo23/caddy-l4:latest
docker run --rm ghcr.io/matteo23/caddy-l4:latest caddy version
```

## Local build

```bash
docker build -t caddy-l4:local .
```

## How updates work

The Caddy version is pinned in the `Dockerfile`. Dependabot opens a PR when a new release is available — merging it triggers the build and pushes the updated image to GHCR.

## License

MIT — see [LICENSE](LICENSE).