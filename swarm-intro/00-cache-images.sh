#!/usr/bin/env bash

. ./resources/lib.sh
clear

# put your demo awesomeness below here

echo "Docker Swarm introduction"
echo "Thanks for pre-caching your images, that should help speed it up during the presentation for those who don't"

docker pull nicolaka/netshoot
docker pull golang:1.10-alpine3.8
docker pull ubuntu