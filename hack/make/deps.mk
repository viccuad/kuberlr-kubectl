KUBECTL28_VERSION := v1.28.13
KUBECTL28_SUM_arm64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL28_VERSION)/bin/linux/arm64/kubectl.sha256")
KUBECTL28_SUM_amd64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL28_VERSION)/bin/linux/amd64/kubectl.sha256")

KUBECTL29_VERSION := v1.29.8
KUBECTL29_SUM_arm64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL29_VERSION)/bin/linux/arm64/kubectl.sha256")
KUBECTL29_SUM_amd64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL29_VERSION)/bin/linux/amd64/kubectl.sha256")

KUBECTL30_VERSION := v1.30.4
KUBECTL30_SUM_arm64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL30_VERSION)/bin/linux/arm64/kubectl.sha256")
KUBECTL30_SUM_amd64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL30_VERSION)/bin/linux/amd64/kubectl.sha256")

KUBECTL31_VERSION := v1.31.0
KUBECTL31_SUM_arm64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL31_VERSION)/bin/linux/arm64/kubectl.sha256")
KUBECTL31_SUM_amd64 ?= $(shell curl -L "https://dl.k8s.io/release/$(KUBECTL31_VERSION)/bin/linux/amd64/kubectl.sha256")


KUBECTL28 := "$(KUBECTL28_VERSION):$(KUBECTL28_SUM_arm64):$(KUBECTL28_SUM_amd64)"
KUBECTL29 := "$(KUBECTL29_VERSION):$(KUBECTL29_SUM_arm64):$(KUBECTL29_SUM_amd64)"
KUBECTL30 := "$(KUBECTL30_VERSION):$(KUBECTL30_SUM_arm64):$(KUBECTL30_SUM_amd64)"
KUBECTL31 := "$(KUBECTL31_VERSION):$(KUBECTL31_SUM_arm64):$(KUBECTL31_SUM_amd64)"

KUBECTL_VERSION_INFO := "$(KUBECTL28) $(KUBECTL29) $(KUBECTL30) $(KUBECTL31)"

# Reduces the code duplication on Makefile by keeping all args into a single variable.
IMAGE_ARGS := --build-arg KUBECTL_VERSION_INFO=$(KUBECTL_VERSION_INFO)