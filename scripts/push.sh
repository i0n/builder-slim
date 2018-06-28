#!/bin/sh

set -e

current_dir=`pwd`
script_rel_dir=`dirname $0`
script_dir=`cd $script_rel_dir && pwd`
root_dir=`dirname $script_dir`

docker push ${DOCKER_HUB_USER}/builder-slim:$(./scripts/get-version-number-from-repo.sh | tail -1)
docker push ${DOCKER_HUB_USER}/builder-slim:latest
