#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Docker
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
BASHHELPERSHELP+=("" "[Docker]")

BASHHELPERSHELP+=("dils : Show All docker images")
alias dils="docker image ls"

BASHHELPERSHELP+=("dps  : Show all active docker containers")
alias dps="docker ps"

BASHHELPERSHELP+=("dpsa : Show all active and inactive docker containers")
alias dpsa="docker ps -a"

BASHHELPERSHELP+=("dex  : Gain TTY & Interactive access to a specific docker")
unalias dex
function dex() {
	docker exec -it $1 /bin/bash
}

BASHHELPERSHELP+=("dlog : Docker Logs for a specific Container")
unalias dlog
function dlog() {
	docker logs $1
}

BASHHELPERSHELP+=("dst : Docker Stats")
unalias dlog
function dst() {
	docker stats $1
}