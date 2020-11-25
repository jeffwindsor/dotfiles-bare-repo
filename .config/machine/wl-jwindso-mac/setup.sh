#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# xcode command line
xcode-select --install

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask homebrew/core homebrew/fonts

# pimp my terminal
brew cask install alacritty starship topgrade
brew install bat exa autojump
brew install fd ripgrep fzf tldr

brew install bash bash-completion
brew install fish && curl -L https://get.oh-my.fish | fish
brew install zsh zsh-completions zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting
# emitting legal etc/shells file
sudo cat > /etc/shells <<EOL
/bin/sh
/usr/local/bin/bash
/usr/local/bin/fish
/usr/local/bin/zsh
EOL
# set default shell
chsh -s "$(which zsh)"

# pimp my desktop
brew cask install alfred amethyst karabiner-elements whichspace

# utils
brew install gpg-suite 
brew isntall coreutils gnu-sed dig curl watch 
brew install git tig
brew install sshpass
brew cask install wireshark

# languages
brew install clojure
brew install haskell-stack hlint
brew install rustup-init
brew install nodejs
brew install openjdk scala

#editors
brew install neovim
brew cask install emacs
brew cask install intellij-idea
brew cask install vscodium

# fonts
brew cask install font-cascadia font-fira-code font-inconsolata
brew cask install font-source-code-pro font-jetbrains-mono

# mac apps
brew tap mas-cli/tap
brew install mas                  # Mac App Store command-line interface
mas "LastPass", id: 926036361
mas "Microsoft Remote Desktop", id: 1295203466
mas "Be Focused - Focus Timer", id: 973134470
mas "iStat Menus", id: 1319778037
mas "Microsoft OneNote", id:784801555
brew cask install brave-browser spotify vlc slack

read -r -p "dotfiles? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            

    # dotfiles
    pushd $HOME \
        && git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
        && pushd $home/.dotfiles \
        && git config --local status.showUntrackedFiles no \
        && popd && popd

fi 

read -r -p "cj specific? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    brew install parquet-tools
    brew install kafka
    brew install maven
    brew install maven-completion
    brew install cassandra
    brew install penjdk
    brew isntall clojure
    brew install sbt
    brew install scala
    brew install selenium-server-standalone

    brew tap InstantClientTap/instantclient
    brew install "instantclient-basic"instantclient-sqlplus
    brew install "instantclient-sqlplus"

    brew cask install "keybase"
    brew cask install "java8"
    brew cask install "microsoft-teams"
fi
