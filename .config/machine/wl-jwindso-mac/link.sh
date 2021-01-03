#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"


# machine specific
ln -sFf "$PWD/alacritty" "$XDG_CONFIG_HOME/alacritty"
ln -sFf "$PWD/alfred" "$XDG_CONFIG_HOME/alfred"
ln -sFf "$PWD/iterm" "$XDG_CONFIG_HOME/iterm"
ln -sFf "$PWD/karabiner" "$XDG_CONFIG_HOME/karabiner"
ln -sFf "$PWD/DefaultKeyBindings.dict" "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"
ln -sFf "$PWD/vscode/keybindings.json.macos" "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
ln -sFf "$PWD/vscode/settings.json.macos" "$HOME/Library/Application Support/VSCodium/User/settings.json"
ln -sFf "$PWD/zshenv" "$HOME/.zshenv"
ln -sFf "$PWD/zshrc" "$HOME/.zshrc"

# universal links
../link.sh
