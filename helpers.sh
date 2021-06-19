source ~/bash-helpers/prompt.sh

alias bash-self-update="cd ~/bash-helpers && git pull origin master && source ~/.bash_profile && source ~/.bashrc"

alias nbp="nano ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias cbp="cat ~/.bash_profile"

alias nbr="nano ~/.bashrc"
alias sbr="source ~/.bashrc"
alias cbr="cat ~/.bashrc"

alias gst="git status"
alias gaa="git add ."
alias gca="git add . && git commit -m $1"
alias gck="git checkout $1"
alias gbr="git branch"
alias gpl='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gps='git push origin $(git rev-parse --abbrev-ref HEAD)'

# Chrome
alias ojen='open -n -a "Google Chrome" --args "https://jenkins.tools.beachbody.com/"'


# Docker
alias dils="docker image ls"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dex="docker exec -it $1 /bin/bash"
alias dlog="docker logs $1"

