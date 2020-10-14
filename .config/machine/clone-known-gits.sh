#!/usr/bin/env bash

set -e
cd "$(dirname "${0}")"

clone-if-missing(){
    cd ${HOME}/src/hub

    [[ ! -d $2 ]] && git clone git@github.com:${1}/${2}.git
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

clone-if-missing pop-os shell
clone-if-missing pop-os gnome-shell-extension-always-show-workspaces
clone-if-missing pop-os gnome-shell-extension-alt-tab-raise-first-window

echo "clones complete"
