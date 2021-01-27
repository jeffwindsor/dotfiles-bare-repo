#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

install-package() {
	if brew list $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
    	brew install $1
    fi
}
install-cask() {
	if brew list $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
    	brew install --cask $1
    fi
}
clone-if-missing(){
    [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2
}

read -r -p "Clone Dotfiles? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    pushd $HOME \
        && git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
        && pushd $home/.dotfiles \
        && git config --local status.showUntrackedFiles no \
        && popd && popd
fi 

read -r -p "Add Homebrew? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    xcode-select --install
    
    # homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap homebrew/cask 
    brew tap homebrew/core 
    brew tap homebrew/fonts
    brew tap mas-cli/tap
fi 

read -r -p "Add Standard Packages? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            

packages=(
alacritty
autojump
bash
bash-completion
bat
coreutils
curl
dig
exa
fd
fzf
git
gnu-sed
gpg-suite
haskell-stack
hlint
jq
mas
neovim
nnn
nodejs
ripgrep
rustup-init
sshpass
starship
tig
tldr
topgrade
watch
zsh
zsh-autosuggestions
zsh-completions
zsh-history-substring-search
zsh-syntax-highlighting
)

casks=(
alfred
amethyst
karabiner-elements
whichspace
caffeine
wireshark
emacs
intellij-idea
vscodium
font-cascadia
font-fira-code
font-inconsolata
font-source-code-pro
font-jetbrains-mono
brave-browser
spotify
vlc
slack
)
    
    for p in "${packages[@]}"; do install-package "$p"; done;
    for p in "${casks[@]}"; do install-cask "$p"; done;
    ################################################################
    echo "==> GIT REPOS INTO HOME ${HOME}/SRC"
    mkdir -p ${HOME}/src/hub

    cd $HOME/src
    clone-if-missing jeffwindsor dwm
    clone-if-missing jeffwindsor dwmblocks
    clone-if-missing jeffwindsor dmenu
    
    cd $HOME/src/hub
    clone-if-missing jacoborus tender.vim
    clone-if-missing tombell tender-iterm2
    clone-if-missing huyvohcmc tender-alacritty
    clone-if-missing Relaxed-Theme relaxed-terminal-themes
    clone-if-missing morhetz gruvbox
    clone-if-missing arcticicestudio nord
    clone-if-missing eendroroy alacritty-theme
    
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
fi

read -r -p "Install Apple Store Applications? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    # mac apps
    mas "LastPass", id: 926036361
    mas "Microsoft Remote Desktop", id: 1295203466
    mas "Be Focused - Focus Timer", id: 973134470
    mas "iStat Menus", id: 1319778037
    mas "Microsoft OneNote", id:784801555
fi

read -r -p "Add CJ specific packages? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    brew tap InstantClientTap/instantclient

packages=(
parquet-tools
kafka
maven
maven-completion
cassandra
openjdk
clojure
sbt
scala
selenium-server-standalone
)

casks=(
instantclient-basic
instantclient-sqlplus
instantclient-sqlplus
keybase
java8
microsoft-teams
)

    for p in "${packages[@]}"; do install-package "$p"; done;
    for p in "${casks[@]}"; do install-cask "$p"; done;
fi


read -r -p "Set zsh as default? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    sudo cat > /etc/shells <<EOL
/bin/sh
/usr/local/bin/bash
/usr/local/bin/fish
/usr/local/bin/zsh
EOL

    # set default shell
    chsh -s "$(which zsh)"
fi 


read -r -p "Create SSH key? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    ssh-keygen -t rsa -b 4096 -C "jeff.windsor@gmail.com"
fi 
