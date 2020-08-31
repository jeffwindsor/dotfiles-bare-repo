#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# xcode command line
xcode-select --install

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# packages
brew tap homebrew/cask homebrew/core

brew cask install alfred amethyst karabiner-elements whichspace
brew cask install alacritty starship
brew install bash bash-completion

brew install fish
curl -L https://get.oh-my.fish | fish

brew install zsh zsh-completions zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting
brew install bat exa fd curl coreutils watch gnu-sed ripgrep fzf autojump
brew install git vifm tig tldr dig
brew cask install gpg-suite brave-browser spotify vlc slack

brew install clojure
brew install haskell-stack
brew install hlint
brew install rustup-init
brew install neovim
brew cask install vscodium

#  "installing fonts"
brew tap homebrew/cask-fonts
brew cask install font-cascadia font-fira-code font-inconsolata
brew cask install font-source-code-pro font-jetbrains-mono


#  installing Mac App Store CLI (mas)
brew tap mas-cli/tap
brew install mas                  # Mac App Store command-line interface
mas "LastPass", id: 926036361
mas "Microsoft Remote Desktop", id: 1295203466
mas "Be Focused - Focus Timer", id: 973134470
mas "iStat Menus", id: 1319778037
mas "Microsoft OneNote", id:784801555
# mas "Forecast Bar - Weather + Radar", id: 982710545

#  "emitting etc/shells file"
sudo cat > /etc/shells <<EOL
/bin/sh
/usr/local/bin/bash
/usr/local/bin/fish
/usr/local/bin/zsh
EOL
#  "setting default shell to ZSH"
chsh -s "$(which zsh)"

#  "installing lolcat-c"
git clone git@github.com:jaseg/lolcat.git ${HOME}/src/hub/lolcat/ \
    && pushd ${HOME}/src/hub/lolcat \
    && make \
    && ln -fhs ${HOME}/src/hub/lolcat/lolcat /usr/local/bin/lolcat \
    && popd


read -r -p "Install for dotfiles? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            

    # dotfiles
    pushd $HOME \
        && git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
        && pushd $HOME/.dotfiles \
        && git config --local status.showUntrackedFiles no \
        && popd && popd

fi 

read -r -p "Install for CJ? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    brew install "parquet-tools"
    brew install "kafka"
    brew install "maven"
    brew install "maven-completion"
    brew install "cassandra"
    brew install "sbt"
    brew install "scala"
    brew install "selenium-server-standalone"
    brew install "sshpass"

    brew tap InstantClientTap/instantclient
    brew install "instantclient-basic"instantclient-sqlplus
    brew install "instantclient-sqlplus"

    brew cask install "keybase"
    brew cask install "intellij-idea"
    brew cask install "java8"
    brew cask install "microsoft-teams"
fi
