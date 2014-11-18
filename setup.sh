#!/bin/bash

DIR=$(cd "$(dirname "$0")"; pwd -P)

[ -n "$BYOBU_DISTRO" ] || 
{
    echo "Please start byobu before running this script"
    exit 1
}

case "$BYOBU_DISTRO" in
	"Ubuntu")
		sudo patch --backup /usr/share/byobu/profiles/bashrc < ${DIR}/Ubuntu14.04/usr/share/byobu/profiles/bashrc.patch
	;;
	*)
		# Use nice colors (green / red / blue)
		echo "Distro is $BYOBU_DISTRO"
	;;
esac


ln -sf ${DIR}/.gitconfig $HOME/
ln -sf ${DIR}/.vimrc $HOME/
ln -sf ${DIR}/.gitignore $HOME/
