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
sudo apt -y install emacs && ../install-doom-emacs.sh
flatpak install flathub com.vscodium.codium

echo-color "languages"
sudo apt -y install golang
sudo apt -y install nodejs
../install-rust.sh
sudo apt -y install haskell-stack 

echo-color "entertainment"
sudo apt -y install vlc
sudo apt -y install wallch

echo-color "brave browser"
sudo apt -y install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt -y install brave-browser

echo-color "pimp my terminal"
sudo apt -y install alacritty
sudo apt -y install zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"

echo-color "pimp my desktop"
sudo apt -y install gnome-tweaks
../setup-laptop.sh
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.002.zip \
    && unzip JetBrainsMono-2.002.zip -d ~/.local/share/fonts \
    && fc-cache -f -v \
    && rm -f JetBrainsMono-2.002.zip \
    && gsettings set org.gnome.desktop.interface document-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.wm.preferences titlebar-font 'JetBrains Mono Medium 12' 

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

echo-color "appearance"
mkdir -p $HOME/.themes 
mkdir -p $HOME/.icons 

echo-color "ssh"
../setup-machine-ssh.sh

echo-color "manual steps"
xdg-open https://github.com/settings/keys
xdg-open https://mega.nz/sync
# extensions
xdg-open https://extensions.gnome.org/extension/600/launch-new-instance/
xdg-open https://extensions.gnome.org/extension/1488/gnome-fuzzy-search/
xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
xdg-open https://extensions.gnome.org/extension/21/workspace-indicator/
xdg-open https://extensions.gnome.org/extension/19/user-themes/
xdg-open https://extensions.gnome.org/extension/744/hide-activities-button/
# themes
xdg-open https://www.gnome-look.org/p/1267246/
xdg-open https://www.gnome-look.org/p/1357889/
# icons
xdg-open https://www.gnome-look.org/s/Gnome/p/1166289 

