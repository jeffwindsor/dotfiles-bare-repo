#!/usr/bin/env bash
cd "$(dirname "${0}")"

read -r -p "CJ Profile? [y/n] " response
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    MACHINE=$PWD/cj
else
    MACHINE=$PWD
fi

mkdir -p $HOME/.config/alacritty/
ln -sfv "$PWD/alacritty/os.yml" "$HOME/.config/alacritty/os.yml"

ln -sfv "$PWD/gitignore" "$HOME/.gitignore"
ln -sfv "$MACHINE/gitconfig" "$HOME/.gitconfig"

mkdir -p $HOME/.config/skhd/
ln -sfv "$PWD/skhd/skhdrc" "$HOME/.config/skhd/skhdrc"

ln -sfv "$PWD/ssh/config" "$HOME/.ssh/config"

ln -sfv "$PWD/zshenv" "$HOME/.zshenv"
ln -sfv "$PWD/zshrc" "$HOME/.zshrc"
