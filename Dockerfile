FROM node:alpine

# Inspired by elifa/swarm-healthcheck
LABEL maintainer="info@redmic.es"

RUN apk add --no-cache docker

COPY healthcheck.js /healthcheck.js

ENTRYPOINT ["node", "/healthcheck.js"]
