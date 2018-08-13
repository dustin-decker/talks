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

p "# now we're going to deploy a service stack."
p "# a service stack is defined by the docker-compose file spec"
p "# v3 spec: https://docs.docker.com/compose/compose-file"

p "# first lets build our application and our container image"
pe "less resources/03/whoami.go"
pe "less resources/03/Dockerfile"
pe "docker build -f resources/03/Dockerfile -t dustin-decker/whoami ./resources/03"
pe "docker image ls"
pe "docker image history --no-trunc dustin-decker/whoami"

p "# now we deploy the service stack that uses that image"
pe "less resources/03/service-stack.yml"
pe "docker stack deploy -c resources/03/service-stack.yml test-stack"
pe "docker stack ls"
pe "docker stack ps test-stack"

p "# loadbalancing demonstration on the published port"
pe "for i in L O L; do curl 127.0.0.1:666; done"
