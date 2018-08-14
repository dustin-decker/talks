#!/usr/bin/env bash

. ./resources/lib.sh
clear

# put your demo awesomeness below here


echo "Docker Swarm introduction"
echo "03 - building and deloying a simple service stack"
echo "Press ENTER to begin"

p "# now we're going to deploy a service stack."
p "# a service stack is defined by the docker-compose file spec"
p "# v3 spec: https://docs.docker.com/compose/compose-file"

p "# first lets build our application and our container image"
pe "cd resources/03"
pe "less whoami.go"
pe "less Dockerfile"
pe "docker build -t dustin-decker/whoami ."
pe "docker image ls"

p "# now we deploy the service stack that uses that image"
pe "less service-stack.yml"
pe "docker stack deploy -c service-stack.yml test-stack"
pe "docker stack ls"
pe "watch docker stack ps test-stack"

p "# loadbalancing demonstration on the published port"
pe "for i in {0..10}; do curl 127.0.0.1:666; done"

pe "docker stack rm test-stack"