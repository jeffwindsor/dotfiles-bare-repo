#!/usr/bin/env bash

cd "$(dirname "${0}")"

ln -sf $PWD/zshenv $HOME/.zshenv
ln -sf $PWD/zshrc $HOME/.zshrc 

mkdir -p $HOME/.xmonad
ln -sf $PWD/xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs

rm -rf $HOME/.xmonad/scripts/ 
ln -sf $PWD/xmonad/scripts/ $HOME/.xmonad/

rm -rf $HOME/.xmonad/polybar/ 
ln -sf $PWD/xmonad/polybar/ $HOME/.xmonad/

