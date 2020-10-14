#!/usr/bin/env bash

set -e
cd "$(dirname "${0}")"

echo "creating source directory in home"
mkdir -p ${HOME}/src/hub
cd ${HOME}/src/hub

echo "cloning themes"
[[ ! -d tender.vim ]] && git clone https://github.com/jacoborus/tender.vim
[[ ! -d tender-iterm2 ]] && git clone https://github.com/tombell/tender-iterm2
[[ ! -d tender-alacritty ]] && git clone https://github.com/huyvohcmc/tender-alacritty
[[ ! -d relaxed-terminal-themes ]] && git clone https://github.com/Relaxed-Theme/relaxed-terminal-themes
[[ ! -d gruvbox ]] && git clone https://github.com/morhetz/gruvbox
[[ ! -d nord ]] && git clone https://github.com/arcticicestudio/nord
[[ ! -d alacritty-theme ]] && git clone https://github.com/eendroroy/alacritty-theme
echo "clones complete"
