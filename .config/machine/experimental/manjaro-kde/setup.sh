#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# MANJARO KDE

alias pi='sudo pacman -S --noconfirm'
alias yi='yay -S --noconfirm'

# aur helper
pi yay

# pimp my shell
(source ../clone-known-gits.sh)
pi alacritty
(source ../install-starship-prompt.sh)
pi ttf-jetbrains-mono

# languages
pi clojure leiningen
pi stack 
pi nodejs
pi go
(source ../install-rust.sh)

# Editors and Ides
pi neovim && (source ../install-neovim-plug.sh)
pi emacs && (source ../install-doom-emacs.sh)

# vscodium
yi vscodium-bin

# Fonts

# utils
pi ripgrep tldr

# entertainment
yi spotify 
pi vlc

# browsers
yi vivaldi
pi brave-browser

# mega
xdg-open https://mega.nz/sync
