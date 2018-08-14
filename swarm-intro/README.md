# Docker Swarm interactive introduction

## begin slideshow

If you have `present`, run that command to start the slideshow server.

Otherwise, [go here](https://talks.godoc.org/github.com/dustin-decker/talks/swarm-intro/intro-to-swarm.slide
) for it to be rendered for you.

## begin interactive intro

**requirement:** have a working Docker installation, preferably newer than v18.03

**suggestion:** pre-cache the Docker images you'll need with `./00-cache-images.sh`

```bash
➜  swarm-intro git:(master) ls -1a *.sh
00-cache-images.sh
01-init-swarm.sh
02-perf-test-overlay-network.sh
03-simple-service-stack.sh
04-container-isolation.sh
05-mini-ctf-pt1.sh
06-mini-ctf-pt2.sh
99-terminate-swarm-and-clean-up.sh

➜  swarm-intro git:(master) ✗ ./01-init-swarm.sh

Docker Swarm introduction
01 - initializing a Swarm
Press ENTER to begin
```

run with `-dn` to prevent the script from waiting