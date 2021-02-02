#!/usr/bin/env bash
cd "$(dirname "${0}")"

mkdir -p $HOME/.config/alacritty
mkdir -p $HOME/.config/alfred
mkdir -p $HOME/.config/karabiner

read -r -p "CJ Profile? [y/n] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then            
    ln -sfv "$PWD/cj/zshenv" "$HOME/.zshenv"
    ln -sfv "$PWD/cj/zshrc" "$HOME/.zshrc"
    ln -sfv "$PWD/cj/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"
    ln -sfv "$PWD/cj/alacritty/base.yml" "$HOME/.config/alacritty/base.yml"
    ln -sfv "$PWD/cj/DefaultKeyBindings.dict" "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"

else
    ln -sfv "$PWD/zshenv" "$HOME/.zshenv"
    ln -sfv "$PWD/zshrc" "$HOME/.zshrc"
    ln -sfv "$PWD/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"
    ln -sfv "$PWD/alacritty/base.yml" "$HOME/.config/alacritty/base.yml"

fi

ln -sfv "$PWD/alfred/Alfred.alfredpreferences" "$HOME/.config/alfred/Alfred.alfredpreferences"
ln -sfv "$PWD/vscode/keybindings.json.macos" "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
ln -sfv "$PWD/vscode/settings.json.macos" "$HOME/Library/Application Support/VSCodium/User/settings.json"
ln -sfv "$PWD/ssh/config" "$HOME/.ssh/config"
ln -sfv "$PWD/gitconfig" "$HOME/.gitconfig"
ln -sfv "$PWD/gitignore" "$HOME/.gitignore"
ln -sfv "$HOME/.config/nvim/config.vim" "$HOME/.ideavimrc"
