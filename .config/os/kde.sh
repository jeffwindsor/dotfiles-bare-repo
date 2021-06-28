#!/usr/bin/env bash
################################################################################
# KDE [https://www.youtube.com/watch?v=DX_gQTQLUZc]
################################################################################
cd "$(dirname "${0}")"
alias install='sudo dnf -y install'
widget() { 
    plasmapkg -u $1.plasmoid 
}

# install KWIN Script Krohnkite
# install Global themes
#   nordic
#

