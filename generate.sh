#!/bin/bash

GOCD_AGENT_VERSION=21.3.0
NODE_VERSION=17
ALPINE_VERSION=3.14

echo "Creating temp directory"

mkdir -p tmp

echo "Downloading source files"

wget -q -O tmp/node.dockerfile "https://github.com/nodejs/docker-node/raw/main/$NODE_VERSION/alpine$ALPINE_VERSION/Dockerfile"

echo "Creating Dockerfile"

# Creating node.dockerfile
{
  echo -e "## DO NOT MODIFY DIRECTLY. GENERATED WITH generate.sh ##\\n"

  echo "FROM gocd/gocd-agent-alpine-$ALPINE_VERSION:v$GOCD_AGENT_VERSION"

  echo -e "\\n# Become root"
  echo -e "USER root\\n"

  echo -e "\\n#\\n# Node\\n#\\n"
  sed "/^FROM.*/d; /^CMD.*/d; /^COPY docker-entrypoint.sh.*/d; /^ENTRYPOINT.*/d; s/[[:space:]]1000/ 1001/g" tmp/node.dockerfile

  echo -e "\\n# Change user back to go"
  echo "USER go"

} >Dockerfile

echo "Dockerfile generated"
