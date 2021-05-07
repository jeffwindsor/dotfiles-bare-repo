#!/usr/bin/env bash
cd "$(dirname "${0}")" 
sudo pacman -Syyu

################################################################
# ARCH LINUX
################################################################
install() {
	if pacman -Qi $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
         sudo pacman -S --noconfirm --needed $1
    fi
}

clone-if-missing(){
    [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2
}
################################################################


list=(
alacritty
dmenu
fd
feh
firefox
fzf
git
neovim
paru
pipewire
ripgrep
sddm
sxhkd
tldr
variety
vlc
zsh
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	install $name
done


sudo systemctl enable sddm.service -f
