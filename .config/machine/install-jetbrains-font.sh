#!/usr/bin/env sh
set -e
cd "$(dirname "${0}")"

# Jetbrains Mono Font
JBM_FONT_ZIP=JetBrainsMono-2.002.zip
wget https://download.jetbrains.com/fonts/$JBM_FONT_ZIP \
    && unzip $JBM_FONT_ZIP -d ~/.local/share/fonts \
    && fc-cache -f -v \
rm -f $JBM_FONT_ZIP
