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

## invite text

If you're running this session, here is a template for an invite description:

```
This session's focus is to introduce container orchestration using Docker Swarm, but will also briefly review container images, containers, container runtimes, and the underlying technology that makes it work.

The second part of the session is optionally interactive. You can watch, but participation on your own machine is encouraged. The interactive session covers:

- Turning your computer into a one-node swarm
- Connect services with encrypted overlay networks
- Build and deploy a simple application stack
- Explore container isolation
- Exploit a RCE vuln in two different deploy scenarios

If you wish to participate in the second part of the session, please do this ahead of time:

1. Clone the repo: 
    `git clone https://github.com/dustin-decker/talks.git`
2. Cache the Docker images: 
    `cd talks/swarm-intro/; ./00-cache-images.sh`
3. Before the presentation begins, pull the latest changes:
    `git pull`
```