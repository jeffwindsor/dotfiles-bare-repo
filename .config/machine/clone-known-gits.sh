#!/usr/bin/env bash

set -e
cd "$(dirname "${0}")"

clone-if-missing(){
    [[ ! -d $HOME/src/hub/$2 ]] && git clone https://github.com/${1}/${2}.git ${HOME}/src/hub/${2}
}


echo "creating source directory in home"
mkdir -p ${HOME}/src/hub

echo "cloning git repos"
clone-if-missing jacoborus tender.vim
clone-if-missing tombell tender-iterm2
clone-if-missing huyvohcmc tender-alacritty
clone-if-missing Relaxed-Theme relaxed-terminal-themes
clone-if-missing morhetz gruvbox
clone-if-missing arcticicestudio nord
clone-if-missing eendroroy alacritty-theme
echo "clones complete"
