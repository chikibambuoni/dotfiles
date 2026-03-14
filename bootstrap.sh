#!/bin/bash

PACKAGES=(
  docker
  docker-buildx
  devpod-cli-bin
  github-cli
  git
  neovim
  tmux
  fish
)

echo "Installing packages..."
for pkg in "${PACKAGES[@]}"; do
  yay -S --noconfirm "$pkg"
done

echo "Running install.sh..."
"$(dirname "$0")/install.sh"
