#!/usr/bin/env bash

################################################################################
# MANJARO
################################################################################
set -e
cd "$(dirname "${0}")"

# packages
#sudo pacman-mirrors --fasttrack
#sudo pacman -Syyu
#sudo pacman -S --noconfirm yay

# pimp my shell
(source ../clone-known-gits.sh)
sudo pacman -S --noconfirm alacritty
(source ../install-starship-prompt.sh)
sudo pacman -S --noconfirm ttf-jetbrains-mono
sudo pacman -S --noconfirm ripgrep tldr fd

# gnome
sudo yay -S --noconfirm gnome-extension-pop-shell-git

# languages
sudo pacman -S --noconfirm nodejs
sudo pacman -S --noconfirm go
(source ../install-rust.sh)
cargo install topgrade
#sudo pacman -S --noconfirm clojure leiningen
#sudo pacman -S --noconfirm stack

# editors
sudo pacman -S --noconfirm neovim && (source ../install-neovim-plug.sh)
sudo pacman -S --noconfirm emacs && (source ../install-doom-emacs.sh)
yay -S --noconfirm vscodium-bin

# extra
yay -S --noconfirm spotify
sudo pacman -S --noconfirm vlc
sudo pacman -S --noconfirm brave-browser

# manual
xdg-open https://mega.nz/sync
