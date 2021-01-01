#!/usr/bin/env bash

base_os=(
lightdm
arcolinux-lightdm-gtk-greeter
arcolinux-lightdm-gtk-greeter-settings
arcolinux-wallpapers-git
thunar
thunar-archive-plugin
thunar-volman
xfce4-terminal
arcolinux-xfce-git
arcolinux-local-xfce4-git
spectrwm
feh
checkupdates-aur
perl-checkupdates-aur
polybar
arcolinux-polybar-git
awesome-terminal-fonts
dmenu
arcolinux-logout-git
clipmenu
arcolinux-spectrwm-git
arcolinux-spectrwm-dconf-git
arcolinux-config-spectrwm-git
sxhkd
tlp
arandr
dmenu
feh
gmrun
gtk-engine-murrine
imagemagick
lxappearance
lxrandr
nitrogen
picom
playerctl
python-pywal
volumeicon
w3m
urxvt-resize-font-git
xfce4-appfinder
xfce4-notifyd
xfce4-power-manager
xfce4-screenshooter
xfce4-settings
xfce4-screenshooter
xfce4-taskmanager
xfce4-terminal
hardcode-fixer-git
)
audio=(
pulseaudio
pulseaudio-alsa
pavucontrol
alsa-firmware
alsa-lib
alsa-plugins
alsa-utils
gstreamer
gst-plugins-good
gst-plugins-bad
gst-plugins-base
gst-plugins-ugly
playerctl
volumeicon
)
bluetooth=(
pulseaudio-bluetooth
bluez
bluez-libs
bluez-utils
blueberry
)
printing=(
cups
cups-pdf
ghostscript
gsfonts
gutenprint
gtk3-print-backends
libcups
system-config-printer
)
network=(
avahi
nss-mdns
gvfs-smb
)
arco=(
arcolinux-bin-git
arcolinux-hblock-git
arcolinux-root-git
arcolinux-termite-themes-git
arcolinux-tweak-tool-git
arcolinux-variety-git
arcolinux-rofi-git
arcolinux-rofi-themes-git
)
fonts=(
arcolinux-fonts-git
awesome-terminal-fonts
adobe-source-sans-pro-fonts
noto-fonts
ttf-jetbrains-mono
ttf-inconsolata
)
utils=(
variety
alacritty
fd
fzf
ripgrep
tldr
neovim
emacs
zsh
zsh-completions
zsh-autosuggestions
zsh-syntax-highlighting
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
packages=("${base_os[@]}" "${audio[@]}" "${bluetooth[@]}" "${printing[@]}" "${network[@]}" "${arco[@]}" "${fonts[@]}" "${utils[@]}") 
foreach name ("${base_os[@]}")
    install $name
end

# Enabling lightdm as display manager"
sudo systemctl enable lightdm.service -f

# Enabling bluetooth
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

# Enable printing
sudo systemctl enable org.cups.cupsd.service

# Enable laptop
sudo systemctl enable tlp.service

# Enable network
sudo sed -i 's/files mymachines myhostname/files mymachines/g' /etc/nsswitch.conf
sudo sed -i 's/\[\!UNAVAIL=return\] dns/\[\!UNAVAIL=return\] mdns dns wins myhostname/g' /etc/nsswitch.conf
sudo systemctl enable avahi-daemon.service

################################################################
# pimp my shell
(source ../clone-known-gits.sh)
(source ../install-starship-prompt.sh)

# languages
sudo pacman -S --noconfirm nodejs
sudo pacman -S --noconfirm go
(source ../install-rust.sh)
#sudo pacman -S --noconfirm clojure leiningen
#sudo pacman -S --noconfirm stack

# editors
(source ../install-neovim-plug.sh)
(source ../install-doom-emacs.sh)

# requires rust
cargo install topgrade

# manual
xdg-open https://mega.nz/sync

# Arco - Copying all files and folders from /etc/skel to ~"
cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf /etc/skel/. ~

echo "Reboot your system"
