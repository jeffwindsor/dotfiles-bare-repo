#!/usr/bin/env bash
cd "$(dirname "${0}")"

mkdir -p $HOME/.ssh
mkdir -p "$HOME/.config/alacritty"

ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"
ln -sf "$PWD/alacritty/os.yml" "$HOME/.config/alacritty/os.yml"
ln -sf "$PWD/git/gitignore" "$HOME/.gitignore"
ln -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/ssh/config" "$HOME/.ssh/config"

#ln -sf "$HOME/.config/vscode/keybindings.json.macos" \
#       "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
#ln -sf "$HOME/.config/vscode/settings.json.macos" \
#       "$HOME/Library/Application Support/VSCodium/User/settings.json"
