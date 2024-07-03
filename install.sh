#!/bin/bash

(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt-get update && sudo apt-get install -y \
  silversearcher-ag \
  bat \
  ccache \
  clang-format \
  docker.io \
  f3d \
  fzf \
  gh \
  htop \
  ipython3 \
  mdns-scan \
  python3-ipdb \
  prettyping \
  terminator \
  vim

sudo snap install code --classic && \
  sudo snap install clion --classic && \
  sudo snap install blender --classic && \
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

# Set-up gh
gh extension install github/gh-copilot --force
gh auth login
