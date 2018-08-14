#!/usr/bin/env bash

. ./resources/lib.sh
clear

# put your demo awesomeness below here


p "# time to take down the swarm"
pe "docker swarm leave --force"


p "# clean up resources"
pe "docker system prune -af"
