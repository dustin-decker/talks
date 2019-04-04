#!/usr/bin/env bash

. ./resources/lib.sh
clear



echo "Docker Swarm introduction"
echo "02 - testing an encrypted overlay network"
echo "Press ENTER to begin"

p "# Docker Swarm has a simple CLI you can use for quick testing"
p "# let's run an iperf benchmark over our encrypted overlay network"

p "# first, create an encrypted overlay network"
pe "docker network create --opt encrypted=duh --driver overlay perf-test"
pe "docker network ls"
pe "docker network inspect perf-test | less"

p "# now create the server component of the benchmark"
pe "docker service create --name perf-test-a --network perf-test nicolaka/netshoot iperf -s -p 9999"

p "# now create the client component of the benchmark"
pe "docker service create --name perf-test-b --network perf-test nicolaka/netshoot iperf -c perf-test-a -p 9999"

pe "docker service ls"

pe "docker service logs perf-test-a"
pe "docker service logs perf-test-b"

pe "docker service rm perf-test-a"
pe "docker service rm perf-test-b"

p ""