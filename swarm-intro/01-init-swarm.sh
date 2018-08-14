#!/usr/bin/env bash

########################
# include the magic
########################
. ./resources/lib.sh

# hide the evidence
clear


# put your demo awesomeness here

echo "Docker Swarm introduction"
echo "01 - initializing a Swarm"
echo "Press ENTER to begin"

p "# let's make a swarm"

pe "docker swarm init"

pe "docker info | less"

pe "docker swarm --help"

pe "docker node ls"
