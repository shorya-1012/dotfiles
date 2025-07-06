#!/bin/bash

tmux_path="$HOME/.config/tmux"
nvim_path="$HOME/.config/nvim"
qtile_path="$HOME/.config/qtile"
kitty_path="$HOME/.config/kitty"
picom_path="$HOME/.config/picom"
fastfetch_path="$HOME/.config/fastfetch"
rofi_path="$HOME/.config/rofi"
cava_path="$HOME/.config/cava"

if [ -d "$tmux_path" ]; then
  rm -fr "$tmux_path"
fi
if [ -d "$nvim_path" ]; then
  rm -fr "$nvim_path"
fi
if [ -d "$qtile_path" ]; then
  rm -fr "$qtile_path"
fi
if [ -d "$kitty_path" ]; then
  rm -fr "$kitty_path"
fi
if [ -d "$picom_path" ]; then
  rm -fr "$picom_path"
fi
if [ -d "$fastfetch_path" ]; then
  rm -fr "$fastfetch_path"
fi
if [ -d "$rofi_path" ]; then
  rm -fr "$rofi_path"
fi
if [ -d "$cava_path" ]; then
  rm -fr "$cava_path"
fi

#create symlink
ln -s $PWD/tmux $tmux_path
ln -s $PWD/nvim $nvim_path
ln -s $PWD/qtile $qtile_path
ln -s $PWD/kitty $kitty_path
ln -s $PWD/picom $picom_path
ln -s $PWD/fastfetch $fastfetch_path
ln -s $PWD/rofi $rofi_path
ln -s $PWD/cava $cava_path
