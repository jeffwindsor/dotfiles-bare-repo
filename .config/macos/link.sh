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
ln -sfv "$MACHINE/alacritty/os.yml" "$HOME/.config/alacritty/os.yml"

rm -f $HOME/.gitignore
cp "$PWD/gitignore" "$HOME/.gitignore"
ln -sfv "$MACHINE/gitconfig" "$HOME/.gitconfig"

mkdir -p $HOME/.config/skhd/
ln -sfv "$PWD/skhd/skhdrc" "$HOME/.config/skhd/skhdrc"

mkdir -p $HOME/.config/yabai/
ln -sfv "$PWD/yabai/yabairc" "$HOME/.config/yabai/yabairc"

mkdir -p $HOME/.config/spacebar/
ln -sfv "$PWD/spacebar/spacebarrc" "$HOME/.config/spacebar/spacebarrc"

ln -sfv "$PWD/topgrade.toml" "$HOME/.config/topgrade.toml"

ln -sfv "$PWD/ssh/config" "$HOME/.ssh/config"

