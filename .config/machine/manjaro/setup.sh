#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

sudo pacman-mirrors --fasttrack
sudo pacman -Syyu


sudo pacman -S --noconfirm yay

../setup-git-clones.sh

# pimp my shell
sudo pacman -S --noconfirm alacritty

# nemo as default file manager
sudo pacman -S --noconfirm nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# clojure
sudo pacman -S --noconfirm clojure leiningen

# haskell
sudo pacman -S --noconfirm haskell-stack \
  && ../setup-stack-utils.sh

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# js / nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && sudo pacman -S --noconfirm nodejs

# go
sudo pacman -S --noconfirm golang

# nvim
sudo pacman -S --noconfirm neovim 
../setup-neovim-plug.sh

# emacs - doom edition
sudo pacman -S --noconfirm emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d \
  && ~/.emacs.d/bin/doom install

# Jetbrains Mono Font
cd ${HOME}/Downloads \
    && wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip \
    && unzip JetBrainsMono-2.001.zip -d ~/.local/share/fonts \
    && fc-cache -f -v \
    && cd -

# utils
sudo pacman -S --noconfirm ripgrep tldr

# gestures
#sudo pacman -S --noconfirm wmctrl python3-setuptools xdotool python3-gi libinput-tools python-gobject
#git clone https://github.com/bulletmark/libinput-gestures.git
#cd libinput-gestures
#sudo make install
#cd
#rm -rf libinput-gestures
#libinput-gestures-setup autostart
#libinput-gestures-setup start

# entertainment
sudo pacman -S --noconfirm spotify vlc

# starship prompt
curl -fsSL https://starship.rs/install.sh | bash

# mega
xdg-open https://mega.nz/sync 

# vivaldi
xdg-open https://vivaldi.com/download/# 

# brave
xdg-open https://brave-browser.readthedocs.io/en/latest/installing-brave.html

# vscodium
xdg-open https://github.com/VSCodium/vscodium/releases

../setup-gnome.sh
