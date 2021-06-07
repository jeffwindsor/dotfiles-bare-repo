#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"
ln -sf "$PWD/topgrade.toml" "$HOME/.config/topgrade.toml"

mkdir -p "$HOME/.config/picom"
ln -sf "$PWD/picom.conf" "$HOME/.config/picom/picom.conf"

mkdir -p "$HOME/.config/alacritty"
ln -sf "$PWD/alacritty-os.yml" "$HOME/.config/alacritty/os.yml"

mkdir -p "$HOME/.config/gitignore"
ln -sf "${HOME}/.config/gitignore" "$HOME/.gitignore"

