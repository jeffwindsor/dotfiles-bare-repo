#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

ln -sf "$PWD/gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/gitignore" "$HOME/.gitignore"
ln -sf "$PWD/topgrade.toml" "$HOME/.config/topgrade.toml"
ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config/picom"
ln -sf "$PWD/picom.conf" "$HOME/.config/picom/picom.conf"

mkdir -p "$HOME/.config/alacritty"
ln -sf "$PWD/alacritty-os.yml" "$HOME/.config/alacritty/os.yml"


