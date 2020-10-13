#!/bin/bash
source .env
CURRENT_DIR=pwd
cd $REPO_DIR
docker-compose \
    -f docker-compose.yml \
    -f docker-compose.mapLocalTemplates.yml \
    -f docker-compose.exposeBlazegraph.yml \
    up -d