#!/usr/bin/env bash

. ./resources/lib.sh
clear

# put your demo awesomeness below here


echo "Docker Swarm introduction"
echo "07 - namespaces"
echo "Press ENTER to begin"

p "# Namespaces are pretty darn awesome, lets take a look"

p "# we'll use our mult-stage image from the previous example"
pe "cd resources/07"
pe "docker build -t dustin-decker/rce -f Dockerfile ."

pe "docker stack deploy -c rce-stack.yml rce-stack"

p "# lets try to run some troubleshooting commands inside our container"
pe "docker exec $(docker ps -q --filter name=rce-stack_rce.1) ping rce-stack_rce"

p "# uh-oh, this didn't work. we don't have the ping binary in our container!"
p "# but, by utilizing namespaces, we can launch another container in the same network namespace as our existing container"
pe "docker run --net container:$(docker ps -q --filter name=rce-stack_rce.1) nicolaka/netshoot ping rce-stack_rce"

p "# this is one way you could get access to network troubleshooting tools without having to add unnecessary binaries to your production images"

pe "docker stack rm rce-stack"
