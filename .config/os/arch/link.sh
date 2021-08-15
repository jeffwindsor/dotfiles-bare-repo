#!/usr/bin/env bash

cd "$(dirname "${0}")"

# ZSH
ln -sf $PWD/zshenv $HOME/.zshenv
ln -sf $PWD/zshrc $HOME/.zshrc 

# XMONAD
mkdir -p $HOME/.xmonad
ln -sf $PWD/xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs
ln -sf $PWD/xmonad/autostart.sh $HOME/.xmonad/autostart.sh

# XMOBAR
ln -sf $PWD/xmobar/xmobarrc $HOME/.xmobarrc

# POLYBAR (BACKUP TO XMOBAR)
mkdir -p $HOME/.config/polybar/scripts
ln -sf $PWD/polybar/launch.sh $HOME/.config/polybar/launch.sh
ln -sf $PWD/polybar/config $HOME/.config/polybar/config

for f in $PWD/polybar/scripts/ 
do
  ln -sf $PWD/polybar/scripts/$f $HOME/.config/polybar/scripts/$f
done

