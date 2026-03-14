#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

LINKS=(
  .config/nvim
  .config/fish
  .config/foot
  .config/sway
  .config/ghostty
  .bashrc
  .zshrc
  .tmux.conf
)

for item in "${LINKS[@]}"; do
  source="$DOTFILES/$item"
  target="$HOME/$item"

  mkdir -p "$(dirname "$target")"
  [ -L "$target" ] && rm "$target"
  [ -e "$target" ] && mv "$target" "$target.bak"

  ln -s "$source" "$target"
  echo "linked $item"
done
