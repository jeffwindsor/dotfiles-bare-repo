#!/usr/bin/env bash

cd "$(dirname "${0}")"

ln -sf $PWD/zshenv $HOME/.zshenv
ln -sf $PWD/zshrc $HOME/.zshrc 

mkdir -p $HOME/.xmonad
ln -sf $PWD/xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs
ln -sf $PWD/xmonad/scripts/ $HOME/.xmonad/
ln -sf $PWD/xmonad/polybar/ $HOME/.xmonad/

