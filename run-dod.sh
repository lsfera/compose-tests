#!/bin/bash
trap 'docker exec -it docker sh -c "docker-compose down";docker-compose -f ./docker-compose.dod.yml  down' EXIT
docker-compose -f ./docker-compose.dod.yml  up -d
sleep 10

docker exec -it docker sh -c "docker-compose up"
exit 0