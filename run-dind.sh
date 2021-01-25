#!/bin/bash
trap 'docker-compose -f ./docker-compose.dind.yml  down' EXIT
docker-compose -f ./docker-compose.dind.yml  up -d
sleep 10

docker exec -it docker sh -c "docker-compose up"
exit 0