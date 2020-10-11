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
ai zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"

# nvim
ai neovim && (source ../install-neovim-plug.sh)

# emacs - doom edition
ai emacs && (source ../install-doom-emacs.sh)

# languages
#ai clojure leiningen
ai scala
ai golang
#ai racket racket-common racket-doc
#ai haskell-stack ../setup-stack-utils.sh
ai nodejs
(source ../install-rust.sh)
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# utils
ai ripgrep fzf fd git tldr wget jq autojump
cargo install topgrade

# entertainment
ai spotify-client vlc brave-browser

#####################################################################################
# Gnome
#####################################################################################
(source ../setup-gnome.sh)
(source ../install-gnome-extensions.sh)
(source ./gnome-keyboard-shortcuts.sh)

# Laptop Power Management
sysdl='/etc/systemd/logind.conf'
cat $sysdl \
    | sed -r 's/\#?HandleLidSwitchExternalPower=.*/HandleLidSwitchExternalPower=ignore/g' \
    | sed -r 's/\#?HandleLidSwitch=.*/HandleLidSwitch=poweroff/g' \
    | sudo tee $sysdl

#####################################################################################
# MANUAL INSTALLS
#####################################################################################
xdg-open https://mega.nz/sync 
xdg-open https://github.com/VSCodium/vscodium/releases
# sudo apt -y install megasync
