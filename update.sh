#!/usr/bin/env sh

help="Type \"$0 commit\" or \"$0 local\""
[[ $# != 1 ]] && echo $help && exit 0

case $1 in
	commit)
	    echo "cp ~/.spacemacs .spacemacs"
		  cp ~/.spacemacs .spacemacs

      echo "cp ~/.zshrc .zshrc"
      cp ~/.zshrc .zshrc
	;;

	local)
      echo "cp .spacemacs ~/.spacemacs"
 		  cp .spacemacs ~/.spacemacs

      echo "cp .zshrc ~/.zshrc"
      cp .zshrc ~/.zshrc
	;;

	*)
		echo $help
	;;
esac

