#!/bin/bash

configs=(
  "tmux"
  "nvim"
  "kitty"
  "fastfetch"
  "cava"
  "alacritty"
  "yazi"
)

#remove previous
for config in "${configs[@]}"; do
  path="$HOME/.config/$config"
  if [ -d "$path" ]; then
    rm -fr "$path"
  fi
done

#create symlink
for config in "${configs[@]}"; do
  echo "Linking $PWD/$config → $HOME/.config/$config"
  ln -s "$PWD/$config" "$HOME/.config/$config"
done
