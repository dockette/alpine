# AGENTS.md

## Project

Dockette Alpine builds `dockette/alpine`, a family of Alpine Linux base images with a predefined `dfx` user. Each image exposes `USER_UID=1000`, `USER_NAME=dfx`, and `USER_HOME=/home/dfx`.

## Images

- Default image: `dockette/alpine:3.22` from build context `3.22/`.
- Maintained test targets in `Makefile`: `3.22`, `3.21`, and `edge`.
- Published tags in the workflow include `3.7` through `3.22` plus `edge`; older `3.1` through `3.6` Dockerfiles remain in the repo but are commented out in publishing.
- Each version directory is its own Docker build context and contains a matching `Dockerfile` based on `alpine:<version>` or `alpine:edge`.
- GitHub Actions builds and tests the maintained matrix, then publishes each configured version through the shared Dockette Docker workflow on `master`.

## Commands

- `make build` builds `${DOCKER_IMAGE}:${DOCKER_TAG}` from `${DOCKER_VERSION}`.
- `make test` runs the image and checks `/etc/alpine-release`, the `dfx` user, and exported user constants.
- `make run` opens an interactive shell in the current tag.
- `make build-3.22`, `make test-3.22`, and `make run-3.22` target Alpine 3.22 explicitly; equivalent targets exist for `3.21` and `edge`.

## Testing Notes

- Run `make test DOCKER_VERSION=<version> DOCKER_TAG=<version>` after changing a version Dockerfile.
- Use `make -n build test run` to dry-run command wiring without requiring Docker.
- The workflow currently passes `VERSION=...` to `make test`; this Makefile uses `DOCKER_VERSION`, so keep any workflow edits aligned with Makefile variable names.

## Guidelines

- Keep version directories, `Makefile` targets, README image table, and `.github/workflows/docker.yml` matrices aligned when adding or removing Alpine versions.
- Prefer `DOCKER_*` names for Docker-related Makefile variables.
- Place `.PHONY: <target>` directly above each Makefile target.
- Keep README badges and maintenance sections consistent with other Dockette image repos.
- Preserve the `dfx` user contract unless a coordinated breaking change is requested.
- Do not introduce unrelated formatting or structural changes.
