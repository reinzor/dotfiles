#!/bin/bash
source ~/.dotfiles/install-vim-plug.sh
source ~/.dotfiles/install-bat.sh
source ~/.dotfiles/install-terminator.sh
source ~/.dotfiles/install-htop.sh
source ~/.dotfiles/install-ag.sh
source ~/.dotfiles/install-fzf.sh
source ~/.dotfiles/install-ipython.sh

mkdir -vp ~/bin
mkdir -vp ~/.config/git

# Remove all dotfiles so we can create links
dotfiles=$(find . -type f -name ".*")
for dotfile in $dotfiles
do
  rm -rf ~/$dotfile
done

find * -maxdepth 0 -type d -print0 | xargs -0 stow -v
