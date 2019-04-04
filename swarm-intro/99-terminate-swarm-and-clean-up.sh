#!/usr/bin/env bash

. ./resources/lib.sh
clear


echo "Docker Swarm introduction"
echo "99 - Terminate Swarm and cleanup resources"
echo "Press ENTER to begin"

p "# time to take down the swarm"
pe "docker swarm leave --force"

p "# clean up resources"
pe "docker system prune -af"

p ""
