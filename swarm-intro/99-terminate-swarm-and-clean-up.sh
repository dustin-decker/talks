#!/usr/bin/env bash

########################
# include the magic
########################
. ./resources/lib.sh

# hide the evidence
clear

# put your demo awesomeness here

p "# time to take down the swarm"
pe "docker swarm leave --force"


p "# clean up resources"
pe "docker system prune -af"
