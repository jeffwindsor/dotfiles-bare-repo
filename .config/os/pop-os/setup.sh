#!/usr/bin/env bash
cd "$(dirname "${0}")"
sudo apt update && sudo apt upgrade

################################################################################
# POP-OS
################################################################################
install() {
    if [ $(dpkg-query -W -f='${Status}' $1 | grep -c "ok installed") -eq 0 ];
    then
        printf "\033[0;32m==> installing $1 \033[0m \n"
        sudo apt-get -y install $1;
    else
        printf "\033[0;32m==> $1 \033[0m [installed] \n"
    fi
}
clone-if-missing(){
    [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2
}

################################################################################
# MACBOOK PRO 2015 
################################################################################
read -r -p "Macbook? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    echo "macbook pro retina 2015"
    # Wireless proprietary wireless drive for broadcom 14E4:43A0
    #   https://unix.stackexchange.com/questions/175810/how-to-install-broadcom-bcm4360-on-debian-on-macbook-pro
    install broadcom-sta-dkms
    sudo modprobe -r b44 b43 b43legacy ssb brcmsmac
    sudo modprobe wl
    # Laptop Power Management
    sysdl='/etc/systemd/logind.conf'
    cat $sysdl \
        | sed -r 's/\#?HandleLidSwitchExternalPower=.*/HandleLidSwitchExternalPower=ignore/g' \
        | sed -r 's/\#?HandleLidSwitch=.*/HandleLidSwitch=poweroff/g' \
        | sudo tee $sysdl
fi

################################################################################
# SOFTWARE: 
################################################################################
install alacritty
install autojump
install fd-find
install fzf
install gnome-tweaks
install ripgrep
install tldr
install vlc
install wallch
install zsh 
install zsh-autosuggestions 
install zsh-syntax-highlighting

################################################################
echo "==> STARSHIP PROMPT"
curl -fsSL https://starship.rs/install.sh | bash -s -- --yes

################################################################
echo "==> NVIM PLUGINS"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim --headless +PlugInstall +qall

################################################################
echo "==> DOOM EMACS"
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

################################################################################
echo "vscodium"
flatpak install -y flathub com.vscodium.codium

################################################################################
echo "brave browser"
install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
install brave-browser

################################################################################
echo "JetBrains Font"
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.002.zip \
    && unzip JetBrainsMono-2.002.zip -d ~/.local/share/fonts \
    && fc-cache -f -v \
    && rm -f JetBrainsMono-2.002.zip \
    && gsettings set org.gnome.desktop.interface document-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono Medium 12' \
    && gsettings set org.gnome.desktop.wm.preferences titlebar-font 'JetBrains Mono Medium 12' 

##########################################################
read -r -p "Development Languages? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            

    install golang
    install haskell-stack
    install jq
    install nodejs

    ################################################################
    echo "==> RUST LANG"
    curl --proto '=https' --tlsv1.2 -sSfo rustup-init.sh https://sh.rustup.rs
    chmod +x rustup-init.sh
    ./rustup-init.sh -y
    rm -f rustup-init.sh
    source $HOME/.cargo/env

    echo "==> topgrade package updater" 
    install cargo-completions
    cargo install topgrade
fi

################################################################################
echo "link config files" 
source ./link.sh

################################################################
echo "==> GIT REPOS INTO HOME ${HOME}/SRC"
mkdir -p ${HOME}/src/hub

cd $HOME/src
clone-if-missing jeffwindsor dwm
clone-if-missing jeffwindsor dwmblocks
clone-if-missing jeffwindsor dmenu

cd $HOME/src/hub

################################################################################
echo "appearance"
mkdir -p $HOME/.themes 
mkdir -p $HOME/.icons 

################################################################################
echo "manual steps"

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

