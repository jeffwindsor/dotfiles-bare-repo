#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

ln -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/git/gitignore" "$HOME/.gitignore"
ln -sf "$PWD/bspwm/bspwmrc" "$HOME/.config/bspwm/bspwmrc"
ln -sf "$PWD/bspwm/sxhkdrc" "$HOME/.config/bspwm/sxhkd/sxhkdrc"
ln -sf "$PWD/topgrade.toml" "$HOME/.config/topgrade.toml"
ln -sf "$PWD/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config/alacritty"
ln -sf "$PWD/alacritty-os.yml" "$HOME/.config/alacritty/os.yml"
