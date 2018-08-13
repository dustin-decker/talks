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

p "# let's make a swarm"

pe "docker swarm init"

p "# that's it. you have a one node swarm now."

pe "docker info "

pe "docker swarm --help"
