#!/usr/bin/env bash
################################################################################
# KDE [https://www.youtube.com/watch?v=DX_gQTQLUZc]
################################################################################
cd "$(dirname "${0}")"
alias install='sudo dnf -y install'
widget() { 
    plasmapkg -u $1.plasmoid 
}

# KWIN Script:  Krohnkite [https://github.com/esjeon/krohnkite]
# Global theme: nordic [https://store.kde.org/p/1327093/]
# Widgets:
#   Better inline Clock
#   BigSur-Inline Battery
#   Kpple Menu (optional left upper apple menu)
#   Window Title / Application Title (shows selected window in bar)
#   


# install kvantum
# install alfred
# 

