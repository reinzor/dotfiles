#!/bin/bash
source ~/.dotfiles/install_vim-plug.sh

mkdir -vp ~/bin
mkdir -vp ~/.config/git

# Remove all dotfiles so we can create links
dotfiles=$(ls -A shell)
for dotfile in $dotfiles
do
  rm -rf ~/$dotfile
done

find * -maxdepth 0 -type d -print0 | xargs -0 stow -v
