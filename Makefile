USERNAME=jordonbc
REPO=_acc
TAG=dev
VERSION=2.00.18
# PLATFORMS=linux/amd64
# PLATFORMS=linux/amd64,linux/arm/v7
PLATFORMS=linux/amd64,linux/arm64,linux/arm/v7

build-server:
	docker buildx build -f Dockerfile -t ${USERNAME}/tdarr${REPO}:${TAG} --build-arg VERSION=$(VERSION) --build-arg MODULE=Tdarr_Server --platform ${PLATFORMS} --push .
build-node:
	docker buildx build -f Dockerfile -t ${USERNAME}/tdarr_node${REPO}:${TAG} --build-arg VERSION=$(VERSION) --build-arg MODULE=Tdarr_Node --platform ${PLATFORMS} --push .