# Swarm Healthcheck

Allows to verify membership of a node to a Docker Swarm cluster.
Inspired by [elifa/swarm-healthcheck](https://github.com/elifa/swarm-healthcheck).

## Usage

```
docker run -v /var/run/docker.sock:/var/run/docker.sock \
	-p 3333:80 --memory '64m' --cpus '0.25' \
	redmic/swarm-healthcheck
```
