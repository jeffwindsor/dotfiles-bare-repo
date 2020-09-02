#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

alias pi='sudo pacman -S --noconfirm'
alias yi='yay -S --noconfirm'

# aur helper
pi yay

# pimp my shell
(../setup-git-clones.sh)
pi alacritty

# languages
pi clojure leiningen
pi stack 
pi nodejs
pi go
(../setup-rust.sh)

# Editors and Ides
pi neovim && (../setup-neovim-plug.sh)
pi emacs && (../setup-doom-emacs.sh)

# vscodium
yi vscodium-bin

# Fonts
pi ttf-jetbrains-mono

# utils
pi ripgrep tldr

# entertainment
yi spotify 
pi vlc

# browsers
yi vivaldi
sudo pacman -S --noconfirm brave-browser

# starship prompt
curl -fsSL https://starship.rs/install.sh | bash

# mega
xdg-open https://mega.nz/sync 
