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

# pimp my terminal
(source ../clone-known-gits.sh)
ai alacritty
ai zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"
(source ../install-starship-prompt.sh)

# pimp my desktop
(source ./gnome-keyboard-shortcuts.sh)  

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.002.zip \
    && unzip JetBrainsMono-2.002.zip -d ~/.local/share/fonts \
    && fc-cache -f -v \
    && rm -f JetBrainsMono-2.002.zip \
    && gsettings set org.gnome.desktop.interface document-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.wm.preferences titlebar-font 'JetBrains Mono Medium 12' 

mkdir -p $HOME/.themes \
    && cd $HOME/Downloads \
    && wget "https://www.gnome-look.org/p/1308808/startdownload?file_id=1603172413&file_name=Solarized-Dark-Green-3.36_2.0.3.zip&file_type=application/zip&file_size=959489" \
    && unzip Solarized-Dark-Green-3.36_2.0.3.zip \
    && mv ./Solarized-Dark-Green-3.36_2.0.3/* $HOME/.themes \
    && rm -rf Solarized-Dark-Green-3.36_2.0.3 \
    && gsettings set org.gnome.desktop.interface gtk-theme 'Solarized-Dark-Green-3.36' \
    && cd -

mkdir -p $HOME/.icons \
    && cd $HOME/Downloads \
    && wget "https://www.pling.com/p/1309239/startdownload?file_id=1597908080&file_name=Solarized-Numix-FLAT-Green_2.0.4.zip&file_type=application/zip&file_size=12511376" \
    && unzip Solarized-Numix-FLAT-Green_2.0.4.zip -d $HOME/.icons \
    && gsettings set org.gnome.desktop.interface icon-theme 'Solarized-FLAT-Green' \
    && cd -



# utilities
ai ripgrep fzf fd git tldr wget jq autojump

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

# manual installs
xdg-open https://mega.nz/sync
xdg-open https://github.com/VSCodium/vscodium/releases

# gnome extensions
xdg-open https://extensions.gnome.org/extension/600/launch-new-instance/
xdg-open https://extensions.gnome.org/extension/1488/gnome-fuzzy-search/
xdg-open https://extensions.gnome.org/extension/1000/random-walls/
xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
xdg-open https://extensions.gnome.org/extension/10/windownavigator/
xdg-open https://extensions.gnome.org/extension/21/workspace-indicator/
xdg-open https://extensions.gnome.org/extension/615/appindicator-support/
xdg-open https://extensions.gnome.org/extension/19/user-themes/
