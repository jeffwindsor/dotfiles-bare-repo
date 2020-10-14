#!/usr/bin/env sh

################################################################################
# POP-OS
################################################################################
set -e
cd "$(dirname "${0}")"

# packages
alias ai='sudo apt -y install'
sudo apt update
sudo apt upgrade

# pimp my shell
(source ../clone-know-gits.sh)
ai alacritty
ai zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"
(source ../install-jetbrains-font.sh)
(source ../install-starship-prompt.sh)
ai ripgrep fzf fd git tldr wget jq autojump

# gnome
(source ../install-gnome-extensions.sh)
(source ./gnome-keyboard-shortcuts.sh)

# editors
ai neovim && (source ../install-neovim-plug.sh)
ai emacs && (source ../install-doom-emacs.sh)

# languages
ai scala
ai golang
ai nodejs
cargo install topgrade
(source ../install-rust.sh)
#ai clojure leiningen
#ai haskell-stack ../setup-stack-utils.sh

# extra
ai spotify-client vlc brave-browser

# manual
xdg-open https://mega.nz/sync
xdg-open https://github.com/VSCodium/vscodium/releases
