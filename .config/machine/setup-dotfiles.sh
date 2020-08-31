#!/usr/bin/env bash

set -e
cd "$(dirname "${0}")"

pushd $HOME \
    && git clone --bare https://github.com/jeffwindsor/dotfiles.git $HOME/.dotfiles \
    && pushd $HOME/.dotfiles \
    && git config --local status.showUntrackedFiles no \
    && popd && popd