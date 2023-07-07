#!/bin/bash

set -e

TAG=$(date -u +"%y.%j.%H%M")

TAG=${TAG} docker compose -f docker-compose.prod.build.yml build webapp
