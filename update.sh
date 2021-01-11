#!/usr/bin/env sh

help="Type \"$0 commit\" or \"$0 local\""
[[ $# != 1 ]] && echo $help && exit 0

# Define some dot file path
SPACEMACS_LOCAL="~/.spacemacs"
ZSH_LOCAL="~/.zshrc"

case $1 in 
	commit)
		echo "Sync spacemacs dot file"
		cp ${SPACEMACS_LOCAL} .spacemacs
	;;

	local)
 		cp .spacemacs ${SPACEMACS_LOCAL}
	;;

	*)
		echo $help
	;;
esac

