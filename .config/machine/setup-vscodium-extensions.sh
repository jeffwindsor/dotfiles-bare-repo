#!/usr/bin/env bash

##########################################################################################
set -e
cd "$(dirname "${0}")"

UNINSTALL_EXTENSION=()
INSTALL_EXTENSION=()
DISABLE_EXTENSION=()

read -p "Uninstall current extensions [y/N]?" yn
case $yn in
    [Yy]* )
        CURRENT_EXTENSIONS=$(code --list-extensions)
        UNINSTALL_EXTENSION=($CURRENT_EXTENSIONS)
        ;;
esac

read -p "Install General Extensions [y/N]?" yn
case $yn in
    [Yy]* )
        INSTALL_EXTENSION+=(
        alefragnani.Bookmarks
        ban.spellright
        bbenoist.Nix
        bmalehorn.vscode-fish
        CoenraadS.bracket-pair-colorizer-2
        eamodio.gitlens
        vscodevim.vim
        wayou.vscode-todo-highlight
        );;
esac

read -p "Install Sharing [y/N]?" yn
case $yn in
    [Yy]* )
        INSTALL_EXTENSION+=(
        ms-vsliveshare.vsliveshare
        )
        DISABLE_EXTENSION+=(
        ms-vsliveshare.vsliveshare
        );;
esac

read -p "Install Themes [y/N]?" yn
case $yn in
    [Yy]* )
        INSTALL_EXTENSION+=(
        AndrsDC.base16-themes
        ankitcode.firefly
        arcticicestudio.nord-visual-studio-code
        dracula-theme.theme-dracula
        monokai.theme-monokai-pro-vscode
        teabyii.ayu
        wesbos.theme-cobalt2
        zhuangtongfa.material-theme
        );;

        DISABLE_EXTENSION+=(
        AndrsDC.base16-themes
        zhuangtongfa.material-theme
        );;
esac

read -p "Install Haskell [y/N]?" yn
case $yn in
    [Yy]* )
        INSTALL_EXTENSION+=(
        justusadam.language-haskell
        DigitalAssetHoldingsLLC.ghcide
        );;
esac


echo "=== Visual Studio Code Extensions ==="

for VSEXT in ${UNINSTALL_EXTENSION[@]}
do
    vscodium --uninstall-extension $VSEXT
done

for VSEXT in ${INSTALL_EXTENSION[@]}
do
    vscodium --install-extension $VSEXT
done

for VSEXT in ${DISABLE_EXTENSION[@]}
do
    vscodium --disable-extension $VSEXT
done

