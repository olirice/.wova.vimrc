#!/bin/bash



# Test if .vimrc exists in home folder
if [ -a ~/.vimrc ]
then
    echo "Uninstalling vimrc"
    rm ~/.vimrc     
fi
if [ -d ~/.vim ] 
then
    echo "Uninstalling .vim"
    rm -rf ~/.vim     
fi

# Restoring Backups if they exists
if [ -a ~/.vimrc.backup ]
then
    echo "Restoring Backup .vimrc"
    mv ~/.vimrc.backup ~/.vimrc 
    echo "Backup Restored"
fi
if [ -d ~/.vim.backup ] 
then
    echo "Restoring Backup .vim/"
    mv ~/.vim.backup ~/.vim 
    echo "Backup Restored"
fi

echo "Done"

