#!/usr/bin/env bash
################################################################################
# KDE [https://www.youtube.com/watch?v=DX_gQTQLUZc]
################################################################################
cd "$(dirname "${0}")"
alias install='sudo dnf -y install'
widget() { 
    plasmapkg -u $1.plasmoid 
}

# tiling windows script [https://github.com/esjeon/krohnkite]
plasmapkg2 -t kwinscript -i krohnkite.kwinscript 

# bigsur theme
install kvantum
git clone https://github.com/vinceliuice/WhiteSur-kde.git $HOME/src/whitesur-kde
$HOME/src/whitesur-kde/install.sh

# plasma widgets
# widget Application Title
# widget Latte Side Bar
# widget Latte Spacer
# widget Latte Separator
# widget Better inline Clock
# widget Launchpad Plasma Menu
# widget Inline Battery
# widget Kpple Menu
# widget Media Player Control Plus,
# widget Ditto Menu

install latte-dock 
