<h1 align=center>Dockette / Alpine</h1>

<p align=center>
   <a href="https://github.com/dockette/alpine/actions"><img src="https://github.com/dockette/alpine/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/alpine"><img src="https://img.shields.io/docker/pulls/dockette/alpine.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   Base docker image based on Alpine Linux.
</p>

-----

## Image

- predefined user `dfx` with UID `1000`
- predefined constants:
    - USER_UID: 1000
    - USER_NAME: dfx
    - USER_HOME: /home/dfx

## Usage

The `edge` tag tracks Alpine edge. It is rolling and unstable, so prefer a pinned `3.x` tag for reproducible builds.

### Maintained Images

| Alpine | Image                  | Docker Hub |
|--------|------------------------|------------|
| edge   | `dockette/alpine:edge` | [edge](https://hub.docker.com/r/dockette/alpine/tags?name=edge) |
| 3.22   | `dockette/alpine:3.22` | [3.22](https://hub.docker.com/r/dockette/alpine/tags?name=3.22) |
| 3.21   | `dockette/alpine:3.21` | [3.21](https://hub.docker.com/r/dockette/alpine/tags?name=3.21) |

### Legacy Images

These tags are published for compatibility, but are not part of the maintained test matrix.

| Alpine | Image                  | Docker Hub |
|--------|------------------------|------------|
| 3.20   | `dockette/alpine:3.20` | [3.20](https://hub.docker.com/r/dockette/alpine/tags?name=3.20) |
| 3.19   | `dockette/alpine:3.19` | [3.19](https://hub.docker.com/r/dockette/alpine/tags?name=3.19) |
| 3.18   | `dockette/alpine:3.18` | [3.18](https://hub.docker.com/r/dockette/alpine/tags?name=3.18) |
| 3.17   | `dockette/alpine:3.17` | [3.17](https://hub.docker.com/r/dockette/alpine/tags?name=3.17) |
| 3.16   | `dockette/alpine:3.16` | [3.16](https://hub.docker.com/r/dockette/alpine/tags?name=3.16) |
| 3.15   | `dockette/alpine:3.15` | [3.15](https://hub.docker.com/r/dockette/alpine/tags?name=3.15) |
| 3.14   | `dockette/alpine:3.14` | [3.14](https://hub.docker.com/r/dockette/alpine/tags?name=3.14) |
| 3.13   | `dockette/alpine:3.13` | [3.13](https://hub.docker.com/r/dockette/alpine/tags?name=3.13) |
| 3.12   | `dockette/alpine:3.12` | [3.12](https://hub.docker.com/r/dockette/alpine/tags?name=3.12) |
| 3.11   | `dockette/alpine:3.11` | [3.11](https://hub.docker.com/r/dockette/alpine/tags?name=3.11) |
| 3.10   | `dockette/alpine:3.10` | [3.10](https://hub.docker.com/r/dockette/alpine/tags?name=3.10) |
| 3.9    | `dockette/alpine:3.9`  | [3.9](https://hub.docker.com/r/dockette/alpine/tags?name=3.9) |
| 3.8    | `dockette/alpine:3.8`  | [3.8](https://hub.docker.com/r/dockette/alpine/tags?name=3.8) |
| 3.7    | `dockette/alpine:3.7`  | [3.7](https://hub.docker.com/r/dockette/alpine/tags?name=3.7) |

Alpine `3.1` through `3.6` directories remain in this repository, but their tags are not published by the current workflow.

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
