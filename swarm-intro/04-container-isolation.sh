#!/usr/bin/env bash

########################
# include the magic
########################
. ./resources/lib.sh


########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
TYPE_SPEED=75

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "

# hide the evidence
clear


# put your demo awesomeness here

echo "Docker Swarm introduction"
echo "04 - explore container isolation"
echo "Press ENTER to begin"

p "# spawn a container in the background"
pe "docker run -d --name test-isolation alpine sleep 1800"

p "# let's run some commands in that container to explore some boundaries"

p "# here is a look into our container PID namespace"
pe "docker exec -it test-isolation ps aux"

p "# here is the host PID namespace for contrast"
pe "ps aux"

p "# this is the container's network namespace"
pe "docker exec -it test-isolation ip a"

p "# and the host's network namespace"
pe "ifconfig"

p "# this is the container's mount namespace"
pe "docker exec -it test-isolation mount"

p "# and the host's mount namespace"
pe "mount"

p "# the container's UTS namespace"
pe "docker exec -it test-isolation hostname"
p "# and the host's UTS namespace"
pe "hostname"

pe "docker container rm test-isolation"