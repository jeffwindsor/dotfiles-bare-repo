#!/usr/bin/env bash
cd "$(dirname "${0}")"

ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config/alacritty"
ln -sf "$PWD/alacritty/os.yml" "$HOME/.config/alacritty/os.yml"

ln -sf "$PWD/gitignore" "$HOME/.gitignore"
ln -sf "$PWD/gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/sshconfig" "$HOME/.ssh/config"
