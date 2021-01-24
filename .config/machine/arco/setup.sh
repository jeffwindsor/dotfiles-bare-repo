#!/usr/bin/env bash
cd "$(dirname "${0}")" 
sudo pacman -Syyu

################################################################
# ARCO LINUX
################################################################
install() {
	if pacman -Qi $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
    	sudo pacman -S --noconfirm --needed $1
    fi
}

################################################################
# HARDWARE: MACBOOK PRO 15
################################################################
install broadcom-wl-dkms

################################################################
# Standard
################################################################
packages=(
alacritty
autojump
emacs
fd
fzf
git
go
keychain
neovim
nodejs
picom
ripgrep
terminal-font-awesome
tldr
ttf-jetbrains-mono
variety
vlc
zsh
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
)
source ../setup.sh "${packages[@]}"

cd $HOME/src/dwm && sudo make clean install && cd -
cd $HOME/src/dwmblocks && sudo make clean install && cd -
cd $HOME/src/dmenu && sudo make clean install && cd -

################################################################
# zsh as default shell
chsh -s "$(which zsh)"

################################################################
echo "topgrade package updater" 
cargo install topgrade

################################################################
echo "link config files" 
./link.sh

################################################################
echo "manual steps"
xdg-open https://mega.nz/sync

