#!/usr/bin/env bash
cd "$(dirname "${0}")"


# machine specific
ln -sFf "$PWD/alacritty" "$HOME/.config/alacritty"
ln -sFf "$PWD/alfred" "$HOME/.config/alfred"
ln -sFf "$PWD/iterm" "$HOME/.config/iterm"
ln -sFf "$PWD/karabiner" "$HOME/.config/karabiner"
ln -sFf "$PWD/DefaultKeyBindings.dict" "$HOME/Library/KeyBindings/DefaultKeyBindings.dict"
ln -sFf "$PWD/vscode/keybindings.json.macos" "$HOME/Library/Application Support/VSCodium/User/keybindings.json"
ln -sFf "$PWD/vscode/settings.json.macos" "$HOME/Library/Application Support/VSCodium/User/settings.json"
ln -sFf "$PWD/zshenv" "$HOME/.zshenv"
ln -sFf "$PWD/zshrc" "$HOME/.zshrc"

# universal links
ln -sf "$HOME/.config/gitignore" "$HOME/.gitignore"
ln -sf "$HOME/.config/git/cj.gitconfig" "$HOME/.gitconfig"
ln -sf "$HOME/.config/nvim/config.vim" "$HOME/.ideavimrc"
ln -sf "$HOME/.config/ssh/cj.config" "$HOME/.ssh/config"
