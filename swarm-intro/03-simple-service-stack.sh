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
echo "03 - building and deloying a simple service stack"
echo "Press ENTER to begin"

p "# now we're going to deploy a service stack."
p "# a service stack is defined by the docker-compose file spec"
p "# v3 spec: https://docs.docker.com/compose/compose-file"

p "# first lets build our application and our container image"
pe "cd resources/03"
pe "less whoami.go"
pe "less Dockerfile"
pe "docker build -t dustin-decker/whoami ."
pe "docker image ls"

p "# now we deploy the service stack that uses that image"
pe "less service-stack.yml"
pe "docker stack deploy -c service-stack.yml test-stack"
pe "docker stack ls"
pe "watch docker stack ps test-stack"

p "# loadbalancing demonstration on the published port"
pe "for i in {0..10}; do curl 127.0.0.1:666; done"

pe "docker stack rm test-stack"