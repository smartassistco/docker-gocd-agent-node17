# GoCD Agent with Node 17 Docker Image

[![dockeri.co](https://dockeri.co/image/smartassist/gocd-agent-node17)](https://hub.docker.com/r/smartassist/gocd-agent-node17)

[![Docker Build Status](https://github.com/smartassistco/docker-gocd-agent-node17/actions/workflows/docker-image.yml/badge.svg)](https://github.com/smartassistco/docker-gocd-agent-node17/actions/workflows/docker-image.yml)

[GoCD Agent on Alpine](https://hub.docker.com/r/gocd/gocd-agent-alpine-3.15) with the latest version of Node 17 added to
it.

## Usage

- To use in your docker-compose.yml:

```yaml
services:
  gocd-agent-node17:
    image: smartassist/gocd-agent-node17:v21.4.0
    restart: unless-stopped
    env_file: .env
```

- To modify further, reference in your Dockerfile:

```dockerfile
FROM smartassist/gocd-agent-node17:v21.4.0
```

## Contents

- [GoCD's official Alpine agent's Dockerfile](https://hub.docker.com/r/gocd/gocd-agent-alpine-3.15)
- [Node's official Dockerfile](https://github.com/nodejs/docker-node/raw/main/17/alpine3.15/Dockerfile)

## Versions

| Runtime    | Version     |
|------------|-------------|
| OS         | Alpine 3.15 |
| GoCD agent | 21.4.0      |
| Node       | 17.4.0      |

## Building

- Update versions in `generate.sh`
- Run `bash generate.sh`
