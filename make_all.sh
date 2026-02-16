#!/bin/sh

ADV3LITE_RELEASE="2.2.2"
INFORM6UNIX_RELEASE="6.42-r3"

docker build tads3 --build-arg LITE_VERSION=$ADV3LITE_RELEASE -t ghcr.io/awlck/ifcontainers/tads3:3.1.3fix-lite-$ADV3LITE_RELEASE
docker push ghcr.io/awlck/ifcontainers/tads3:3.1.3fix-lite-$ADV3LITE_RELEASE
docker build tads3 --build-arg LITE_VERSION=master -t ghcr.io/awlck/ifcontainers/tads3:latest
docker push ghcr.io/awlck/ifcontainers/tads3:latest

docker build inform6unix --build-arg I6_VERSION=$INFORM6UNIX_RELEASE -t ghcr.io/awlck/ifcontainers/inform6:$INFORM6UNIX_RELEASE
docker push ghcr.io/awlck/ifcontainers/inform6:$INFORM6UNIX_RELEASE
docker build inform6-git -t ghcr.io/awlck/ifcontainers/inform6:latest
docker push ghcr.io/awlck/ifcontainers/inform6:latest

