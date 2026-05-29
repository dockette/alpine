IMAGE ?= dockette/alpine
VERSION ?= 3.22
TAG ?= $(VERSION)

MAINTAINED_VERSIONS := 3.22 3.21 edge

.PHONY: build test run $(addprefix build-,$(MAINTAINED_VERSIONS)) $(addprefix test-,$(MAINTAINED_VERSIONS)) $(addprefix run-,$(MAINTAINED_VERSIONS))

build:
	docker build -t $(IMAGE):$(TAG) $(VERSION)

test:
	docker run --rm $(IMAGE):$(TAG) /bin/sh -c 'set -eu; \
		if [ "$(VERSION)" != "edge" ]; then grep -Eq "^$(VERSION)(\\.|$$)" /etc/alpine-release; else test -s /etc/alpine-release; fi; \
		test "$$(id -u dfx)" = "1000"; \
		test "$${USER_UID}" = "1000"; \
		test "$${USER_NAME}" = "dfx"; \
		test "$${USER_HOME}" = "/home/dfx"'

run:
	docker run --rm -it $(IMAGE):$(TAG)

build-3.22:
	$(MAKE) build VERSION=3.22

test-3.22:
	$(MAKE) test VERSION=3.22

run-3.22:
	$(MAKE) run VERSION=3.22

build-3.21:
	$(MAKE) build VERSION=3.21

test-3.21:
	$(MAKE) test VERSION=3.21

run-3.21:
	$(MAKE) run VERSION=3.21

build-edge:
	$(MAKE) build VERSION=edge

test-edge:
	$(MAKE) test VERSION=edge

run-edge:
	$(MAKE) run VERSION=edge
