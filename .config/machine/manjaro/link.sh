#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"
ln -sf "${HOME}/.config/git/personal.gitconfig" "$HOME/.gitconfig"
ln -sf "${HOME}/.config/ssh/personal.config" "$HOME/.ssh/config"
#ln -sf "${HOME}/.config/vscode/keybindings.json.macos" \
#       "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
#ln -sf "${HOME}/.config/vscode/settings.json.macos" \
#       "$HOME/Library/Application Support/VSCodium/User/settings.json"