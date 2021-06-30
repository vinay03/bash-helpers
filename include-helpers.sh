#!/bin/bash

BASHHELPERSHELP=("" "Command : Purpose")
BASHHELPERSHELP+=("- - - - - - - - - - - - - - ")

source ~/bash-helpers/helpers.sh

while test $# -gt 0; do
  case "$1" in
    -g|--git)
			source ~/bash-helpers/git-helpers.sh
			shift
      ;;
    -d|--docker)
			source ~/bash-helpers/docker-helpers.sh
			shift
      ;;
		-p|--prompt)
			source ~/bash-helpers/prompt-helper.sh
			shift
      ;;
		-a|--all)
			source ~/bash-helpers/git-helpers.sh
			source ~/bash-helpers/docker-helpers.sh
			source ~/bash-helpers/prompt-helper.sh
			shift
      ;;
    *)
      break
      ;;
  esac
done

function printBashHelpersHelp() {
	printf '%s\n' "${BASHHELPERSHELP[@]}"
}
alias bashhelp="printBashHelpersHelp"