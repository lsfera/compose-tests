## Running docker-compose inside a running docker container
Just a companion repo to https://github.com/docker/compose/issues/8071 issue.

When running the [dind version](./run-dind.sh) example the file is mapped as expected and the container command "cat ..." results in an "Hello from file!!"  
In the [dod](./run-dod.sh) example - instead - the file is seen as a directory(as per reported issue) and the container command "cat ..." results in error. 
