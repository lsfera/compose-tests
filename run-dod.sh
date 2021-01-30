#!/bin/bash
trap 'docker exec -it docker sh -c "docker-compose down --rmi local";docker-compose -f ./docker-compose.dod.yml  down' EXIT
docker-compose \
-f ./docker-compose.dod.yml \
up --build -d

docker logs docker
docker exec -it docker sh -c "docker-compose up"
exit 0