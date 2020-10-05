#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d

~/.emacs.d/bin/doom install

