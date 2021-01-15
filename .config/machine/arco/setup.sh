#!/usr/bin/env bash

packages=(
alacritty
emacs
fd
fzf
keychain
neovim
picom
ripgrep
tldr
variety
zsh
zsh-completions
zsh-autosuggestions
zsh-syntax-highlighting
nodejs
go
terminal-font-awesome
ttf-jetbrains-mono
)

install() {
	if pacman -Qi $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
    	sudo pacman -S --noconfirm --needed $1
    fi
}

################################################################
cd "$(dirname "${0}")" 
for name in "${packages[@]}"
do
    install $name
done

# pimp my shell
(source ../clone-known-gits.sh)
(source ../install-starship-prompt.sh)

# languages
(source ../install-rust.sh)

# editors
(source ../install-neovim-plug.sh)
(source ../install-doom-emacs.sh)

# requires rust
cargo install topgrade

# manual
xdg-open https://mega.nz/sync

