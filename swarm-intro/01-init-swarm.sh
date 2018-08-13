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
# TYPE_SPEED=20

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
echo "01 - initializing a Swarm"
echo "Press ENTER to begin"

p "# let's make a swarm"

pe "docker swarm init"

pe "docker info | less"

pe "docker swarm --help"

pe "docker node ls"
