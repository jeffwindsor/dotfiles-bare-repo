#!/usr/bin/env bash

packages=(
ttf-jetbrains-mono
alacritty
emacs
fd
fzf
keychain
neovim
ripgrep
tldr
zsh
zsh-completions
zsh-autosuggestions
zsh-syntax-highlighting
nodejs
go
)

install() {
	if pacman -Qi $1 &> /dev/null; then
  		echo "###> Skipping package "$1", it is already installed"
	else
    	echo "===> Installing package "  $1
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

