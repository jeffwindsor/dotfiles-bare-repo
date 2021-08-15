#!/usr/bin/env bash

cd "$(dirname "${0}")"

check_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "################## The package "$1" is already installed"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "##################  Installing package "  $1
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

# DISPLAY MANAGER
check_install sddm
sudo systemctl enable sddm.service -f

# WINDOW MANAGER
check_install xmonad
check_install xmonad-contrib
check_install haskell-dbus
check_install xmonad-utils
check_install xmonad-log
check_install polybar
#xmobar
check_install arandr
check_install picom

# AUR
check_install paru 

# AUDIO
check_install pulseaudio
check_install pulseaudio-alsa
check_install pavucontrol
check_install alsa-firmware
check_install alsa-lib
check_install alsa-plugins
check_install alsa-utils
#check_install pipewire
#check_install pipewire-docs
#check_install pipewire-alsa
#check_install pipewire-pulse
check_install playerctl
check_install volumeicon

# BLUETOOTH
check_install pulseaudio-bluetooth
check_install bluez
check_install bluez-libs
check_install bluez-utils
check_install blueberry

# LAPTOP POWER
check_install tlp
sudo systemctl enable tlp.service
check_install xfce4-notifyd
check_isntall xfce4-power-manager

# NETWORK
check_install avahi
check_install nss-mdns
check_install gvfs-smb
sudo systemctl enable avahi-daemon.service
#   hosts: files mymachines myhostname resolve [!UNAVAIL=return] dns
#   hosts: files mymachines resolve [!UNAVAIL=return] mdns dns wins myhostname
sudo sed -i 's/files mymachines myhostname/files mymachines/g' /etc/nsswitch.conf
sudo sed -i 's/\[\!UNAVAIL=return\] dns/\[\!UNAVAIL=return\] mdns dns wins myhostname/g' /etc/nsswitch.conf

# FILE MANAGER
check_install thunar
check_install thunar-archive-plugin
check_install thunar-volman

# BROWSER
check_install firefox

# WALLPAPER MANAGER
check_install feh

# PLAYERS
check_install vlc

# DOCUMENT VIEWER
check_install zarthura

# SCREEN SHOTS
check_install flameshot

# ARCHIVES
check_install sharutils 

# SEARCHERS
check_install ripgrep
check_install fzf
check_install rofi

# CONKY
check_install conky-lua-archers

# FONTS
check_install awesome-terminal-fonts
check_install ttf-ubuntu-font-family
check_install nerd-fonts-complete
