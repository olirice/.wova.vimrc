#!/bin/bash

# Test if .vimrc exists in home folder
if [ -a ~/.vimrc ]
then
    echo "Backing up original .vimrc as .vimrc.backup"
    mv ~/.vimrc ~/.vimrc.backup 
    echo "Backup complete"
fi
if [ -d ~/.vim ] 
then
    echo "Backing up original .vim/ as .vim.backup/"
    mv ~/.vim ~/.vim.backup 
    echo "Backup complete"
fi

#cp --parents .vim/colors/hybrid.vim ~/
cp .vimrc ~/.vimrc
cp -R .vim ~/.vim
