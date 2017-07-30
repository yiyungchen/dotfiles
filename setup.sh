#!/bin/bash

dir=~/.dotfiles
files="zshrc tmux.conf vimrc"

for file in $files; do
    ln -sf $dir/$file ~/.$file
done
