#!/usr/bin/env bash
cd "$(dirname "${0}")" 

################################################################
echo "==> GIT REPOS INTO HOME ${HOME}/SRC"

clone-if-missing(){
    [[ ! -d $2 ]] && git clone https://github.com/${1}/${2}.git $2
}

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

################################################################
echo "==> SSH"
ssh-keygen -t rsa -b 4096 -C "jeff.windsor@gmail.com"
