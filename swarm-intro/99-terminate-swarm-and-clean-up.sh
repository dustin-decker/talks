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

p "# time to take down the swarm"

pe "docker swarm leave --force"


p "# clean up resources"

pe "docker system prune -af"
