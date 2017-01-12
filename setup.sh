#!/bin/bash

# TODO: move these 3 conditionals to something more concise
PEDF=false
if [ ! -h ~/.vimrc ]; then
    if [ -e ~/.vimrc ]; then
        PEDF=true
        mv ~/.vimrc ~/.vimrc-backup
    fi    
    ln -s dotfiles/.vimrc ~/.vimrc
fi

if [ ! -h ~/.bashrc ]; then
    if [ -e ~/.bashrc ]; then
        PEDF=true
        mv ~/.bashrc ~/.bashrc-backup
    fi    
    ln -s dotfiles/.bashrc ~/.bashrc
fi

if [ ! -h ~/.zshrc ]; then
    if [ -e ~/.zshrc ]; then
        PEDF=true
        mv ~/.zshrc ~/.zshrc-backup
    fi    
    ln -s dotfiles/.zshrc ~/.zshrc
fi

if [ $PEDF = true ]; then
    echo "Pre-existing files have been renamed with -backup suffix"
fi
