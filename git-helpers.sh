#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# GIT
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
BASHHELPERSHELP+=("" "[GIT]")

BASHHELPERSHELP+=("gst  : To check all staged and unstaged changes")
alias gst="git status"

BASHHELPERSHELP+=("gaa  : To add all files to staging")
alias gaa="git add ."

BASHHELPERSHELP+=("gca  : To add all files to staging and make a commit with passed message")
unalias gca > /dev/null 2>&1
function gca() {
	git add .
	git commit -m "${1}"
}

BASHHELPERSHELP+=("gck  : To checkout to another branch or to checkout changes in a file.")
unalias gck > /dev/null 2>&1
function gck() {
	git checkout $1
}

BASHHELPERSHELP+=("gckn  : To create a new branch and checkout to it.")
unalias gckn > /dev/null 2>&1
function gckn() {
	git checkout -b $1
}

BASHHELPERSHELP+=("gbr  : To show List of Branches from local")
alias gbr="git branch"

BASHHELPERSHELP+=("gpl  : Git Pull current branch from origin ")
alias gpl='git pull origin $(git rev-parse --abbrev-ref HEAD)'

BASHHELPERSHELP+=("gps  : Git push current branch to origin ")
alias gps='git push origin $(git rev-parse --abbrev-ref HEAD)'

BASHHELPERSHELP+=("grn  : Change Last commit message")
unalias grn > /dev/null 2>&1
function grn() {
	git commit --amend -m $1
}

BASHHELPERSHELP+=("gdif : Show all uncommited changes in brief.")
alias gdif="git diff"

BASHHELPERSHELP+=("gdfl : Show all uncommited changes in brief.")
alias gdfl="git diff HEAD^ HEAD"

BASHHELPERSHELP+=("gsl : Show commits one per line.")
unalias gsl > /dev/null 2>&1
function gsl() {
	NUM=${1:-10}    
	git log --pretty=oneline -${NUM}
}

BASHHELPERSHELP+=("ggp : Show git log using graph and pretty print.")
alias ggp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

function gupc()
{
    if [ "$1" == "" ]; then
        git log origin/$(git rev-parse --abbrev-ref HEAD)..HEAD
    else
        git log origin/$1..HEAD
    fi
}