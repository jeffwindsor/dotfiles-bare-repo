#!/usr/bin/env bash

################################################################################
# FEDORA
################################################################################
set -e
cd "$(dirname "${0}")"

alias di='sudo dnf -y install'

# packages
sudo dnf -y upgrade
di https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
di https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# pimp my shell
(source ../clone-known-gits.sh)
di alacritty
di util-linux-user
di zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"
(source ../install-starship-prompt.sh)
(source ../install-jetbrains-font.sh)
di ripgrep tldr fd

# gnome
di extensions
(source ../install-gnome-extensions.sh)

# languages
di nodejs
di go
(source ../install-rust.sh)
# di clojure leiningen
# di stack

# Editors and Ides
di neovim && (source ../install-neovim-plug.sh)
di emacs && (source ../install-doom-emacs.sh)
yi vscodium-bin

# utils

# extras
di vlc
di brave-browser

# manual
xdg-open https://mega.nz/sync
