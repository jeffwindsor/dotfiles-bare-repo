#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"
ln -sf "$PWD/gitignore" "$HOME/.gitignore"
ln -sf "$XDG_CONFIG_HOME/git/cj.gitconfig" "$HOME/.gitconfig"
ln -sf "$XDG_CONFIG_HOME/ssh/cj.config" "$HOME/.ssh/config"
ln -sf "$XDG_CONFIG_HOME/vscode/keybindings.json.macos" \
       "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
ln -sf "$XDG_CONFIG_HOME/vscode/settings.json.macos" \
       "$HOME/Library/Application Support/VSCodium/User/settings.json"
ln -sf "$XDG_CONFIG_HOME/machine/wl-jwindso-mac/DefaultKeyBindings.dict" \
       "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"
ln -sf "$XDG_CONFIG_HOME/nvim/config.vim" "$HOME/.ideavim"
