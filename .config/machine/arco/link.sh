#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"
ln -sf "$PWD/systemd" "$HOME/.config/systemd"
ln -sf "$PWD/alacritty" "$HOME/.config/alacritty"

ln -sf "${HOME}/.config/gitignore" "$HOME/.gitignore"
ln -sf "${HOME}/.config/git/personal.gitconfig" "$HOME/.gitconfig"
ln -sf "${HOME}/.config/ssh/personal.config" "$HOME/.ssh/config"



#ln -sf "${HOME}/.config/machine/arco/spectrwm.conf" "$HOME/.spectrwm.conf"
#ln -sf "${HOME}/.config/machine/arco/spectrbar.sh" "$HOME/.config/spectrwm/spectrbar.sh"
#ln -sf "${HOME}/.config/machine/arco/polybar.config" "$HOME/.config/polybar/config"
#ln -sf "${HOME}/.config/vscode/keybindings.json.macos" \
#       "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
#ln -sf "${HOME}/.config/vscode/settings.json.macos" \
#       "$HOME/Library/Application Support/VSCodium/User/settings.json"
