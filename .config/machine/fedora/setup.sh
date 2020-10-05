#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# FEDORA
alias di='sudo dnf -y install'
#alias yi='yay -S --noconfirm'

sudo dnf -y upgrade

di https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# pimp my shell
(source ../clone-known-gits.sh)
di alacritty
di util-linux-user
di zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"
(source ../install-starship-prompt.sh)
(source ../install-jetbrains-font.sh)
(source ../install-gnome.sh)
(source ../install-gnome-extensions.sh)
di extensions

# languages
di clojure leiningen
di stack
di nodejs
di go
(source ../install-rust.sh)

# Editors and Ides
di neovim && (source ../install-neovim-plug.sh)
di emacs && (source ../install-doom-emacs.sh)

# vscodium
yi vscodium-bin

# utils
di ripgrep tldr

# entertainment
yi spotify
di vlc

# browsers
yi vivaldi
di brave-browser

# manual
xdg-open https://mega.nz/sync
