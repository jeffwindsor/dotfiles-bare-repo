#!/usr/bin/env bash

set -e
cd "$(dirname "${0}")"

echo "creating source directory in home"
mkdir -p ${HOME}/src/hub
cd ${HOME}/src/hub

echo "cloning themes"
git clone https://github.com/jacoborus/tender.vim
git clone https://github.com/tombell/tender-iterm2
git clone https://github.com/huyvohcmc/tender-alacritty
git clone https://github.com/Relaxed-Theme/relaxed-terminal-themes
git clone https://github.com/morhetz/gruvbox
git clone https://github.com/arcticicestudio/nord
