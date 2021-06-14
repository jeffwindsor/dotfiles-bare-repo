#!/usr/bin/env bash
################################################################################
# FEDORA
################################################################################
cd "$(dirname "${0}")"

alias install='sudo dnf -y install'
clone-if-missing { [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2; }

# package manager update
sudo dnf -y upgrade
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# pimp my shell
install alacritty
install util-linux-user
install ripgrep tldr fd-find fzf bat exa
install zsh zsh-autosuggestions zsh-syntax-highlighting
chsh -s "$(which zsh)"

#starship
curl -fsSL https://starship.rs/install.sh | bash -s -- --yes
install gnome-tweaks
install vlc

# rust
curl --proto '=https' --tlsv1.2 -sSfo rustup-init.sh https://sh.rustup.rs
chmod +x rustup-init.sh
./rustup-init.sh -y
rm -f rustup-init.sh
source $HOME/.cargo/env

install cargo-completions
cargo install cargo-update

#install nodejs
#install go
#install clojure leiningen
#install stack

install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# bspwm
#install bspwm sxkhd dmenu rofi polybar


# repos
mkdir -p ${HOME}/src/hub
cd $HOME/src
clone-if-missing jeffwindsor dwm
clone-if-missing jeffwindsor dwmblocks
clone-if-missing jeffwindsor dmenu
clone-if-missing jeffwindsor nord-startpage
clone-if-missing jeffwindsor learn
cd 

# manual
xdg-open https://github.com/settings/keys
xdg-open https://mega.nz/sync
xdg-open https://extensions.gnome.org/extension/600/launch-new-instance/
xdg-open https://extensions.gnome.org/extension/1488/gnome-fuzzy-search/
xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
xdg-open https://extensions.gnome.org/extension/21/workspace-indicator/
xdg-open https://extensions.gnome.org/extension/19/user-themes/
xdg-open https://extensions.gnome.org/extension/744/hide-activities-button/
xdg-open https://www.gnome-look.org/p/1267246/
xdg-open https://www.gnome-look.org/p/1357889/
xdg-open https://www.gnome-look.org/s/Gnome/p/1166289 
