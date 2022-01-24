ARG NODE_IMAGE_TAG=17.4.0-alpine3.15

FROM node:${NODE_IMAGE_TAG}

# Inspired by elifa/swarm-healthcheck
LABEL maintainer="info@redmic.es"

ARG DOCKER_VERSION=20.10.11-r0

RUN apk update && \
	apk list \
		docker && \
	apk add --no-cache \
		docker="${DOCKER_VERSION}"

COPY healthcheck.js /healthcheck.js

ENTRYPOINT ["node", "/healthcheck.js"]
