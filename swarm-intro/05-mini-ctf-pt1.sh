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
echo "05 - mini ctf"
echo "Press ENTER to begin"

p "# we're going to own a container with a RCE vuln"
p "# then we'll try to do the same thing with a better container build"

p "# first lets build our application and our container image using the standard golang image"
pe "cd resources/05"
pe "less RCE.go"
pe "less Dockerfile"
pe "docker build -t dustin-decker/rce -f Dockerfile ."
p "# notice the size of the image"
pe "docker image ls"

p "# now we deploy the service stack that uses that image"
pe "less rce-stack.yml"
pe "docker stack deploy -c rce-stack.yml rce-stack"
pe "docker stack ls"
pe "watch docker stack ps rce-stack"

p "# loadbalancing demonstration on the published port"
pe "curl '127.0.0.1:666?cmd=/bin/cat&args=/etc/passwd'"

pe "docker stack rm rce-stack"