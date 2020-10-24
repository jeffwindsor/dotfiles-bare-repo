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

# gnome theme
mkdir -p $HOME/.themes
mkdir -p $HOME/.icons

# download and install solarized green theme
FILE='Solarized-Dark-Green-3.36_2.0.3.zip'
cd $HOME/Downloads
    && wget "https://www.gnome-look.org/p/1308808/startdownload?file_id=1603172413&file_name=${FILE}.zip&file_type=application/zip&file_size=959489"
    && unzip ${FILE}.zip
    && mv ./${FILE}/* $HOME/.themes
    && rm -rf ${FILE}
    && cd -

# download icons
FILE='Solarized-Numix-FLAT-Green_2.0.4'
cd $HOME/Downloads
    && wget "https://www.pling.com/p/1309239/startdownload?file_id=1597908080&file_name=${FILE}.zip&file_type=application/zip&file_size=12511376"
    && unzip ${FILE}.zip -d $HOME/.icons
    && cd -

