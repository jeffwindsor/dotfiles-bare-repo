#!/usr/bin/env bash
cd "$(dirname "${0}")"

mkdir -p $HOME/.config/alacritty/
mkdir -p $HOME/.config/alfred/
mkdir -p $HOME/.config/karabiner/
mkdir -p $HOME/.config/skhd/

read -r -p "CJ Profile? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    MACHINE=$PWD/cj
else
    MACHINE=$PWD
fi

ln -sfv "$MACHINE/zshenv" "$HOME/.zshenv"
ln -sfv "$MACHINE/zshrc" "$HOME/.zshrc"
ln -sfv "$MACHINE/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"
ln -sfv "$MACHINE/alacritty/base.yml" "$HOME/.config/alacritty/base.yml"

ln -sfv "$PWD/DefaultKeyBindings.dict" "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"
ln -sfv "$PWD/skhd/skhdrc" "$HOME/.config/skhd/skhdrc"
ln -sfv "$PWD/alfred/Alfred.alfredpreferences" "$HOME/.config/alfred/Alfred.alfredpreferences"
ln -sfv "$PWD/vscode/keybindings.json.macos" "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
ln -sfv "$PWD/vscode/settings.json.macos" "$HOME/Library/Application Support/VSCodium/User/settings.json"
ln -sfv "$PWD/ssh/config" "$HOME/.ssh/config"
ln -sfv "$PWD/gitconfig" "$HOME/.gitconfig"
ln -sfv "$PWD/gitignore" "$HOME/.gitignore"
#ln -sfv "$HOME/.config/nvim/config.vim" "$HOME/.ideavimrc"
