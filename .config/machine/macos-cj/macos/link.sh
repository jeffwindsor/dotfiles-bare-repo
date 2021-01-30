#!/usr/bin/env bash
cd "$(dirname "${0}")"

mkdir -p $HOME/.config/alacritty
ln -sFf "$PWD/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"
ln -sFf "$PWD/alacritty/base.yml" "$HOME/.config/alacritty/base.yml"

mkdir -p $HOME/.config/alfred
ln -sFf "$PWD/alfred/Alfred.alfredpreferences" "$HOME/.config/alfred/Alfred.alfredpreferences"

#mkdir -p $HOME/.config/iterm
#ln -sFf "$PWD/iterm" "$HOME/.config/iterm"

mkdir -p $HOME/.config/karabiner
ln -sFf "$PWD/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"

#ln -sFf "$PWD/DefaultKeyBindings.dict" "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"

#ln -sFf "$PWD/vscode/keybindings.json.macos" "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
#ln -sFf "$PWD/vscode/settings.json.macos" "$HOME/Library/Application Support/VSCodium/User/settings.json"

ln -sFf "$PWD/zshenv" "$HOME/.zshenv"
ln -sFf "$PWD/zshrc" "$HOME/.zshrc"

# universal links
ln -sf "$HOME/.config/gitignore" "$HOME/.gitignore"
ln -sf "$HOME/.config/git/cj.gitconfig" "$HOME/.gitconfig"
ln -sf "$HOME/.config/nvim/config.vim" "$HOME/.ideavimrc"
ln -sf "$HOME/.config/ssh/cj.config" "$HOME/.ssh/config"
