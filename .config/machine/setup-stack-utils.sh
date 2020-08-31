#!/usr/bin/env bash

##########################################################################################
set -e
cd "$(dirname "${0}")"

stack install ghcid
stack install hlint
stack install brittany

# Haskel GHCIDE: https://github.com/digital-asset/ghcide
#git clone https://github.com/digital-asset/ghcide.git $SRC/hub/ghcide
#pushd $SRC/hub/ghcide && stack install && popd
