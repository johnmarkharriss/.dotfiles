#!/bin/bash
#Removing .vimrc from home directory
rm ~/.vimrc

#replaces text found with nothing in the file
sed -i 's/[source]+/ /g' ~/.bashrc

rm -rf ~/.TRASH*
#Deletes Trash directory
