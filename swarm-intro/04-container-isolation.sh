#!/usr/bin/env bash

########################
# include the magic
########################
. lib.sh


########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
TYPE_SPEED=45

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "

# hide the evidence
clear


# put your demo awesomeness here

p "# spawn a container in the background"
pe "docker run -d --name isolation alpine sleep 1800"

p "# let's run some commands in that container to explore some boundaries"

p "# here is a look into our container PID namespace"
pe "docker exec -it isolation ps aux"

p "# here is the host PID namespace for contrast"
pe "ps aux"

p "# this is the container's network namespace"
pe "docker exec -it isolation ip a"

p "# and the host's network namespace"
pe "ip a"
