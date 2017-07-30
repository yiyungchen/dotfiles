#!/bin/bash

dir=~/.dotfiles
files="zshrc tmux.conf"

for file in $files; do
    ln -sf $dir/$file ~/.$file
done
