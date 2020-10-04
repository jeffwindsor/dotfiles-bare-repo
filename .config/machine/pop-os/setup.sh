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
i neovim && ../setup-neovim-plug.sh

# emacs - doom edition
i emacs \
  && rm -rf $HOME/.emacs.d \
  && git clone --depth 1 https://github.com/hlissner/doom-emacs $HOME/.emacs.d \
  && $HOME/.emacs.d/bin/doom install

# languages
#i clojure leiningen
i elm
#i golang
#i haskell-stack ../setup-stack-utils.sh
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && i nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# utils
i ripgrep fzf fd git tldr wget jq autojump

# entertainment
i spotify-client vlc


#####################################################################################
# Gnome
#####################################################################################
source ../setup-gnome.sh
source ./gnome-keyboard-shortcuts.sh

#####################################################################################
# MANUAL INSTALLS
#####################################################################################
xdg-open https://mega.nz/sync 
xdg-open https://brave-browser.readthedocs.io/en/latest/installing-brave.html
xdg-open https://github.com/VSCodium/vscodium/releases
