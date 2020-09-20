#!/usr/bin/env sh

cd "$(dirname "${0}")"

alias i='sudo apt -y install'

../setup-git-clones.sh

# Jetbrains Mono Font
JBM_FONT_ZIP=JetBrainsMono-2.001.zip
wget https://download.jetbrains.com/fonts/$JBM_FONT_ZIP \
    && unzip $JBM_FONT_ZIP -d ~/.local/share/fonts \
    && fc-cache -f -v \
rm -f $JBM_FONT_ZIP

# pimp my shell
i alacritty
i zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"
curl -fsSL https://starship.rs/install.sh | bash

# nemo as default file manager
i nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

# nvim
i neovim \
  && ../setup-neovim-plug.sh

# emacs - doom edition
i emacs \
  && rm -rf $HOME/.emacs.d \
  && git clone --depth 1 https://github.com/hlissner/doom-emacs $HOME/.emacs.d \
  && $HOME/.emacs.d/bin/doom install

# clojure
i clojure leiningen

# haskell
i haskell-stack \
  && ../setup-stack-utils.sh

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# js / nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && i nodejs

# go
i golang

# utils
i ripgrep fzf fd git tldr wget jq autojump

# entertainment
i spotify-client vlc


#####################################################################################
# Gnome
#####################################################################################
../setup-gnome.sh

# Keyboard Shortcuts - Emacs
dconf write /org/gnome/settings-daemon/plugins/media-keys/email @as []
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding '<Super>e'
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command  'emacs'
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name 'Launch eMacs'
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']

# Keyboard Shortcuts - Application Launcher
dconf write /org/gnome/shell/extensions/pop-shell/activate-launcher ['<Super>space']

# Keyboard Shortcuts - Move Mode
dconf write /org/gnome/shell/extensions/pop-shell/tile-enter @as ['<Alt><Super>space']

# Keyboard Shortcuts - Terminal
dconf write /org/gnome/settings-daemon/plugins/media-keys/terminal ['<Super>Return']

# Keyboard Shortcuts - Browser
dconf write /org/gnome/settings-daemon/plugins/media-keys/www ['<Shift><Super>Return']

#####################################################################################
# MANUAL INSTALLS
#####################################################################################
# mega
xdg-open https://mega.nz/sync 

# brave
xdg-open https://brave-browser.readthedocs.io/en/latest/installing-brave.html

# vscodium
xdg-open https://github.com/VSCodium/vscodium/releases
