#!/usr/bin/env bash
cd "$(dirname "${0}")" 
sudo pacman -Syyu

################################################################
# ARCO LINUX
################################################################
install() { sudo pacman -S --noconfirm --needed $1; }
installif() {
	if pacman -Qi $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
        install "$1"
    fi
}

clone-if-missing(){
    [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2
}

################################################################
# HARDWARE: MACBOOK PRO 15
################################################################
install broadcom-wl-dkms

# hidpi retina screen to 200%
cat << EOF >> $HOME/.Xresources

Xft.dpi: 192
Xft.autohint: 0
Xft.lcdfilter:  lcddefault
Xft.hintstyle:  hintfull
Xft.hinting: 1
Xft.antialias: 1
Xft.rgba: rgb

EOF


################################################################
# Standard
################################################################
installif alacritty
installif emacs
installif fd
installif fzf
installif git
installif go
installif keychain
installif neovim
installif nodejs
installif picom
installif ripgrep
installif tldr
installif ttf-jetbrains-mono
installif variety
installif vlc
installif zsh
installif zsh-autosuggestions
installif zsh-completions
installif zsh-syntax-highlighting

mkdir -p ${HOME}/src/hub
cd $HOME/src

clone-if-missing jeffwindsor dwm
cd ./dwm && sudo make clean install && cd -

clone-if-missing jeffwindsor dwmblocks
cd ./dwmblocks && sudo make clean install && cd -

clone-if-missing jeffwindsor dmenu
cd ./dmenu && sudo make clean install && cd -

################################################################
echo "==> STARSHIP PROMPT"
curl -fsSL https://starship.rs/install.sh | bash -s -- --yes

################################################################
echo "==> RUST LANG"
curl --proto '=https' --tlsv1.2 -sSfo rustup-init.sh https://sh.rustup.rs
chmod +x rustup-init.sh
./rustup-init.sh -y
rm -f rustup-init.sh
source $HOME/.cargo/env

################################################################
echo "==> NVIM PLUGINS"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim --headless +PlugInstall +qall

################################################################
#echo "==> SSH"
#ssh-keygen -t rsa -b 4096 -C "jeff.windsor@gmail.com"

################################################################
# zsh as default shell
chsh -s "$(which zsh)"

################################################################
echo "topgrade package updater" 
cargo install topgrade
cargo isntall cargo-update

################################################################
echo "link config files" 
#./link.sh

################################################################
echo "manual steps"
xdg-open https://mega.nz/sync

