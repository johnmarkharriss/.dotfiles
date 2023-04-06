#!/bin/bash
#Checking the operating system
if [ "$(uname)" != "Linux" ]; then 
	echo "Error: Operating System is not Linux" >> linuxsetup.log
	exit
fi
# Creates a Trash Directory
mkdir -p ~/TRASH
#If .vimrc exists in the home directory, changes .vimrc name
if [ -f "~./vimrc" ];then
	echo ".vimrc changed to bup_vimrc" >> linuxsetup.log
	mv .vimrc .bup_vimrc
fi

./etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
