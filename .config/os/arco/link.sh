#!/usr/bin/env bash

cd "$(dirname "${0}")" || exit

# ZSH
ln -sf "$PWD"/zshenv "$HOME"/.zshenv
ln -sf "$PWD"/zshrc "$HOME"/.zshrc 

# XMONAD
mkdir -p "$HOME"/.xmonad
ln -sf "$PWD"/xmonad/xmonad.hs "$HOME"/.xmonad/xmonad.hs
ln -sf "$PWD"/xmonad/autostart.sh "$HOME"/.xmonad/autostart.sh

# XMOBAR
ln -sf "$PWD"/xmobar/xmobarrc "$HOME"/.xmobarrc

# POLYBAR (BACKUP TO XMOBAR)
mkdir -p "$HOME"/.config/polybar/scripts
ln -sf "$PWD"/polybar/launch.sh "$HOME"/.config/polybar/launch.sh
ln -sf "$PWD"/polybar/config "$HOME"/.config/polybar/config

FILES="$PWD/polybar/scripts/*.*" 
for file in $FILES
do
  ln -sf "$file" "$HOME"/.config/polybar/scripts/"${file##*/}"
done

# JOHAN'S PICOM
ln -sf "$PWD"/picom/picom.conf "$HOME"/.config/picom/picom.conf

