#!/usr/bin/env sh
set -e
cd "$(dirname "${0}")"

# POP-OS
alias ai='sudo apt -y install'

(source ../clone-know-gits.sh)

# Jetbrains Mono Font
(source ../install-jetbrains-font.sh)

# pimp my shell
ai alacritty
(source ../install-starship-prompt.sh)

# zsh as deafult shell with bling
ai zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"

# nemo as default file manager
ai nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# nvim
ai neovim && (source ../install-neovim-plug.sh)

# emacs - doom edition
ai emacs && (source ../install-doom-emacs.sh)

# languages
#ai clojure leiningen
ai elm
#ai golang
#ai haskell-stack ../setup-stack-utils.sh
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && ai nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# utils
ai ripgrep fzf fd git tldr wget jq autojump

# entertainment
ai spotify-client vlc

#####################################################################################
# Gnome
#####################################################################################
(source ../setup-gnome.sh)
(source ../install-gnome-extensions.sh)
(source ./gnome-keyboard-shortcuts.sh)

#####################################################################################
# MANUAL INSTALLS
#####################################################################################
xdg-open https://mega.nz/sync 
xdg-open https://brave-browser.readthedocs.io/en/latest/installing-brave.html
xdg-open https://github.com/VSCodium/vscodium/releases
