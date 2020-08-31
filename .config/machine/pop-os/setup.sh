#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

../setup-git-clones.sh

# Jetbrains Mono Font
cd ~/Downloads 
    && wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip \
    && unzip JetBrainsMono-2.001.zip -d ~/.local/share/fonts \
    && fc-cache -f -v
    && cd -

# pimp my shell
sudo apt -y install alacritty
sudo apt -y install zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"

# nemo as default file manager
sudo apt -y install nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# clojure
sudo apt -y install clojure leiningen

# haskell
sudo apt -y install haskell-stack \
  && ../setup-stack-utils.sh

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# js / nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && sudo apt -y install nodejs

# go
sudo apt -y install golang

# nvim
sudo apt -y install neovim 
../setup-neovim-plug.sh

# emacs - doom edition
sudo apt -y install emacs
rm -rf $HOME/.emacs.d
git clone --depth 1 https://github.com/hlissner/doom-emacs $HOME/.emacs.d \
$HOME/.emacs.d/bin/doom install

# utils
sudo apt -y install ripgrep fzf git tldr wget jq autojump

# gestures
sudo apt -y install wmctrl python3-setuptools xdotool python3-gi libinput-tools python-gobject
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
cd
rm -rf libinput-gestures
libinput-gestures-setup autostart
libinput-gestures-setup start

# entertainment
sudo apt -y install spotify-client vlc

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

###########################################################################
# Keyboard Shortcuts
###########################################################################

# Emacs
dconf write /org/gnome/settings-daemon/plugins/media-keys/email @as []
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding '<Super>e'
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command  'emacs'
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name 'Launch eMacs'
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']

# Application Launcher
dconf write /org/gnome/shell/extensions/pop-shell/activate-launcher ['<Super>space']

# Move Mode
dconf write /org/gnome/shell/extensions/pop-shell/tile-enter @as ['<Alt><Super>space']

# Terminal
dconf write /org/gnome/settings-daemon/plugins/media-keys/terminal ['<Super>Return']

# Browser
dconf write /org/gnome/settings-daemon/plugins/media-keys/www ['<Shift><Super>Return']
