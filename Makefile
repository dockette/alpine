DOCKER_IMAGE?=dockette/alpine
DOCKER_VERSION?=3.22
DOCKER_TAG?=${DOCKER_VERSION}

MAINTAINED_VERSIONS := 3.22 3.21 edge

.PHONY: build test run $(addprefix build-,$(MAINTAINED_VERSIONS)) $(addprefix test-,$(MAINTAINED_VERSIONS)) $(addprefix run-,$(MAINTAINED_VERSIONS))

build:
	docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_VERSION}

test:
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} /bin/sh -c 'set -eu; \
		if [ "${DOCKER_VERSION}" != "edge" ]; then grep -Eq "^${DOCKER_VERSION}(\.|$$)" /etc/alpine-release; else test -s /etc/alpine-release; fi; \
		test "$$(id -u dfx)" = "1000"; \
		test "$${USER_UID}" = "1000"; \
		test "$${USER_NAME}" = "dfx"; \
		test "$${USER_HOME}" = "/home/dfx"'

run:
	docker run --rm -it ${DOCKER_IMAGE}:${DOCKER_TAG}

build-3.22:
	$(MAKE) build DOCKER_VERSION=3.22

test-3.22:
	$(MAKE) test DOCKER_VERSION=3.22

run-3.22:
	$(MAKE) run DOCKER_VERSION=3.22

build-3.21:
	$(MAKE) build DOCKER_VERSION=3.21

test-3.21:
	$(MAKE) test DOCKER_VERSION=3.21

run-3.21:
	$(MAKE) run DOCKER_VERSION=3.21

build-edge:
	$(MAKE) build DOCKER_VERSION=edge

test-edge:
	$(MAKE) test DOCKER_VERSION=edge

run-edge:
	$(MAKE) run DOCKER_VERSION=edge
