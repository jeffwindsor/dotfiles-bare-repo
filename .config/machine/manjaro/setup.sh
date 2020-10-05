#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# MANJARO
alias pi='sudo pacman -S --noconfirm'
alias yi='yay -S --noconfirm'

sudo pacman-mirrors --fasttrack
sudo pacman -Syyu
pi yay

# pimp my shell
(source ../clone-known-gits.sh)
pi alacritty
(source ../install-starship-prompt.sh)
pi ttf-jetbrains-mono
(source ../install-gnome.sh)
(source ../install-gnome-extensions.sh)

# nemo as default file manager
pi nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

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

# utils
pi ripgrep tldr

# entertainment
yi spotify
pi vlc

# browsers
yi vivaldi
pi brave-browser

# manual
xdg-open https://mega.nz/sync
