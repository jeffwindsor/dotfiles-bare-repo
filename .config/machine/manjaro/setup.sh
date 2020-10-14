#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# MANJARO
sudo pacman-mirrors --fasttrack
sudo pacman -Syyu
sudo pacman -S --noconfirm yay

# pimp my shell
(source ../clone-known-gits.sh)
sudo pacman -S --noconfirm alacritty
(source ../install-starship-prompt.sh)
sudo pacman -S --noconfirm ttf-jetbrains-mono

# gnome
sudo yay -S --noconfirm gnome-extension-pop-shell-git


# languages
#sudo pacman -S --noconfirm clojure leiningen
#sudo pacman -S --noconfirm stack
sudo pacman -S --noconfirm nodejs
sudo pacman -S --noconfirm go
(source ../install-rust.sh)

# Editors and Ides
sudo pacman -S --noconfirm neovim && (source ../install-neovim-plug.sh)
sudo pacman -S --noconfirm emacs && (source ../install-doom-emacs.sh)

# vscodium
yay -S --noconfirm vscodium-bin

# utils
sudo pacman -S --noconfirm ripgrep tldr fd

# entertainment
yay -S --noconfirm spotify
sudo pacman -S --noconfirm vlc

# browsers
#yay -S --noconfirm vivaldi
sudo pacman -S --noconfirm brave-browser

# manual
xdg-open https://mega.nz/sync
