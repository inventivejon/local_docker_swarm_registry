#!/bin/bash
#docker-compose -f docker-compose.yml up -d
docker-compose build
docker stack deploy -c docker-compose.yml registry
