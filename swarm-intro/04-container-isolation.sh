#!/usr/bin/env bash

. ./resources/lib.sh
clear

# put your demo awesomeness below here


echo "Docker Swarm introduction"
echo "04 - explore container isolation"
echo "Press ENTER to begin"

p "# spawn a container in the background"
pe "docker run -d --name test-isolation alpine sleep 1800"

p "# let's run some commands in that container to explore some boundaries"

p "# here is a look into our container PID namespace"
pe "docker exec -it test-isolation ps aux"

p "# here is the host PID namespace for contrast"
pe "ps aux | less"

p "# this is the container's network namespace"
pe "docker exec -it test-isolation ifconfig"

p "# and the host's network namespace"
pe "ifconfig | less"

p "# this is the container's mount namespace"
pe "docker exec -it test-isolation mount"

p "# and the host's mount namespace"
pe "mount | less"

p "# the container's UTS namespace"
pe "docker exec -it test-isolation hostname"
p "# and the host's UTS namespace"
pe "hostname"

pe "docker container rm -f test-isolation"

p "# set PID limit and blow a fork bomb"
pe "docker run --rm -it --pids-limit=5 ubuntu bash -c ':(){ :|: & };:'"