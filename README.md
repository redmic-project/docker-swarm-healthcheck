# Swarm Healthcheck

Allows to verify membership of a node to a Docker Swarm cluster.
Inspired by [elifa/swarm-healthcheck](https://github.com/elifa/swarm-healthcheck).

## Usage

```sh
docker run -d \
  --name=swarm-healthcheck \
  -p 3333:80 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --oom-kill-disable \
  --log-driver=json-file \
  --log-opt max-size=1m \
  --memory '64m' \
  --memory-reservation '32m' \
  --cpus '0.25' \
  redmic/docker-swarm-healthcheck
```
