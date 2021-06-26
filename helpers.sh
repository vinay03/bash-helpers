#!/bin/bash
source ~/bash-helpers/prompt.sh

alias bash-self-update="cd ~/bash-helpers && git pull origin master && source ~/.bash_profile && source ~/.bashrc"

alias nbp="nano ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias cbp="cat ~/.bash_profile"

alias nbr="nano ~/.bashrc"
alias sbr="source ~/.bashrc"
alias cbr="cat ~/.bashrc"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Print Help
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
BASHHELPERSHELP=("" "Command : Purpose")
BASHHELPERSHELP+=("- - - - - - - - - - - - - - ")


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# GIT
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
BASHHELPERSHELP+=("" "[GIT]")

BASHHELPERSHELP+=("gst  : To check all staged and unstaged changes")
alias gst="git status"

BASHHELPERSHELP+=("gaa  : To add all files to staging")
alias gaa="git add ."

BASHHELPERSHELP+=("gca  : To add all files to staging and make a commit with passed message")
alias gca="git add . && git commit -m $1"

BASHHELPERSHELP+=("gck  : To checkout to another branch or to checkout changes in a file.")
alias gck="git checkout $1"

BASHHELPERSHELP+=("gbr  : To show List of Branches from local")
alias gbr="git branch"

BASHHELPERSHELP+=("gpl  : Git Pull current branch from origin ")
alias gpl='git pull origin $(git rev-parse --abbrev-ref HEAD)'

BASHHELPERSHELP+=("gps  : Git push current branch to origin ")
alias gps='git push origin $(git rev-parse --abbrev-ref HEAD)'

BASHHELPERSHELP+=("gca  : Change Last commit message")
alias gca="git commit --amend -m $1"



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
alias dex="docker exec -it $1 /bin/bash"

BASHHELPERSHELP+=("dlog : Docker Logs for a specific Container")
alias dlog="docker logs $1"

BASHHELPERSHELP+=("dst : Docker Stats")
alias dst="docker stats $1"

function printBashHelpersHelp() {
	printf '%s\n' "${BASHHELPERSHELP[@]}"
}
alias bashhelp="printBashHelpersHelp"