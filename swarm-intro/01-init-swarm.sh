#!/usr/bin/env bash

. ./resources/lib.sh
clear



echo "Docker Swarm introduction"
echo "01 - initializing a Swarm"
echo "Press ENTER to begin"

p "# let's make a swarm"

pe "docker swarm init"

pe "docker node ls"

p ""