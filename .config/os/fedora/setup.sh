#!/usr/bin/env bash
################################################################################
# FEDORA
################################################################################
cd "$(dirname "${0}")"

alias install='sudo dnf -y install'
clone-if-missing (){
    [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2
}

# package manager update
sudo dnf -y upgrade
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# applications
install alacritty
install albert
install bat
#install clojure leiningen
install emacs
install exa
install fd-find
install fzf
#install go
install neovim
#install nodejs
install ripgrep
#install stack
install tldr
install util-linux-user
install vlc
install zsh zsh-autosuggestions zsh-syntax-highlighting

# vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# doom emacs 
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# shell
chsh -s "$(which zsh)"

# starship prompt
curl -fsSL https://starship.rs/install.sh | bash -s -- --yes

# rust
curl --proto '=https' --tlsv1.2 -sSfo rustup-init.sh https://sh.rustup.rs
chmod +x rustup-init.sh
./rustup-init.sh -y
rm -f rustup-init.sh
source $HOME/.cargo/env
install cargo-completions
cargo install cargo-update
cargo install topgrade

# repos
mkdir -p ${HOME}/src/hub
cd $HOME/src
#clone-if-missing jeffwindsor dwm
#clone-if-missing jeffwindsor dwmblocks
#clone-if-missing jeffwindsor dmenu
clone-if-missing jeffwindsor nord-startpage
clone-if-missing jeffwindsor learn
cd 

# manual
xdg-open https://github.com/settings/keys
xdg-open https://mega.nz/sync
xdg-open https://bitwarden.com/download
