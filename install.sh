#!/bin/bash

sudo apt-get update && sudo apt-get install -y \
  silversearcher-ag \
  bat \
  ccache \
  clang-format \
  docker.io \
  f3d \
  fzf \
  htop \
  ipython3 \
  python3-ipdb \
  prettyping \
  terminator \
  vim

sudo snap install code --classic && \
  sudo snap install clion --classic && \
  sudo snap install pycharm-community --classic && \
  sudo snap install spotify --classic && \
  sudo snap install webstorm --classic

mkdir -vp ~/bin
mkdir -vp ~/.config/git

# Remove all dotfiles so we can create links
dotfiles=$(find . -type f -name ".*")
for dotfile in $dotfiles
do
  dotfile_path=~/$(basename $dotfile)
  echo "Removing $dotfile_path"
  rm -vrf $dotfile_path
done

# Create config symlinks to .dotfiles
find * -maxdepth 0 -type d -print0 | xargs -0 stow -v

# Permissions
sudo adduser `whoami` dialout
sudo adduser `whoami` docker

# Set-up vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
