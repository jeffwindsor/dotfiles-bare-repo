#!/usr/bin/env bash

################################################################################
# POP-OS
################################################################################
set -e
cd "$(dirname "${0}")"

echo-color(){ printf "\033[0;32m==> $1 \033[0m \n"; }

echo-color "packages"
sudo apt update
sudo apt upgrade

echo-color "utilities"
sudo apt -y install ripgrep fzf fd-find git tldr wget jq autojump

echo-color "editors"
sudo apt -y install neovim && ../install-neovim-plug.sh

echo-color "languages"
sudo apt -y install golang
sudo apt -y install nodejs
../install-rust.sh
sudo apt -y install haskell-stack 

echo-color "vlc"
sudo apt -y install vlc

echo-color "brave browser"
sudo apt -y install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt -y install brave-browser

echo-color manual installs
xdg-open https://mega.nz/sync
xdg-open https://github.com/VSCodium/vscodium/releases

echo-color "gnome extensions"
xdg-open https://extensions.gnome.org/extension/600/launch-new-instance/
xdg-open https://extensions.gnome.org/extension/1488/gnome-fuzzy-search/
xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
xdg-open https://extensions.gnome.org/extension/10/windownavigator/
xdg-open https://extensions.gnome.org/extension/21/workspace-indicator/
xdg-open https://extensions.gnome.org/extension/19/user-themes/

echo-color "pimp my terminal"
sudo apt -y install alacritty
sudo apt -y install zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"

echo-color "pimp my desktop"
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.002.zip \
    && unzip JetBrainsMono-2.002.zip -d ~/.local/share/fonts \
    && fc-cache -f -v \
    && rm -f JetBrainsMono-2.002.zip \
    && gsettings set org.gnome.desktop.interface document-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.wm.preferences titlebar-font 'JetBrains Mono Medium 12' 

mkdir -p $HOME/.themes \
    && wget "https://www.gnome-look.org/p/1308808/startdownload?file_id=1603172413&file_name=Solarized-Dark-Green-3.36_2.0.3.zip&file_type=application/zip&file_size=959489" \
    && unzip Solarized-Dark-Green-3.36_2.0.3.zip \
    && mv ./Solarized-Dark-Green-3.36_2.0.3/* $HOME/.themes \
    && rm -rf Solarized-Dark-Green-3.36_2.0.3 \
    && gsettings set org.gnome.desktop.interface gtk-theme 'Solarized-Dark-Green-3.36'

mkdir -p $HOME/.icons \
    && wget "https://www.pling.com/p/1309239/startdownload?file_id=1597908080&file_name=Solarized-Numix-FLAT-Green_2.0.4.zip&file_type=application/zip&file_size=12511376" \
    && unzip Solarized-Numix-FLAT-Green_2.0.4.zip -d $HOME/.icons \
    && rm -f Solarized-Numix-FLAT-Green_2.0.4.zip \
    && gsettings set org.gnome.desktop.interface icon-theme 'Solarized-FLAT-Green'

echo-color "topgrade package updater" 
source $HOME/.cargo/env
cargo install topgrade

echo-color "link config files" 
./link.sh

echo-color "gnome keybindings"
./gnome-keybindings.sh

echo-color "starship prompt"
../install-starship-prompt.sh

echo-color "git clones"
../clone-known-gits.sh
