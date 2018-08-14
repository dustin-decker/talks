#!/usr/bin/env bash

. ./resources/lib.sh
clear

# put your demo awesomeness below here


echo "Docker Swarm introduction"
echo "01 - initializing a Swarm"
echo "Press ENTER to begin"

p "# let's make a swarm"

pe "docker swarm init"

pe "docker info | less"

pe "docker swarm --help"

pe "docker node ls"
