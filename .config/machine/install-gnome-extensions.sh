#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

# Fonts
dconf write /org/gnome/desktop/interface/font-name 'JetBrains Mono weight=521 11'
dconf write /org/gnome/desktop/interface/monospace-font-name 'JetBrains Mono weight=521 11'

# gnome extensions
sudo apt -y install gnome-shell-extensions

# gnome extension hub
xdg-open https://extensions.gnome.org/extension/600/launch-new-instance/
xdg-open https://extensions.gnome.org/extension/1488/gnome-fuzzy-search/
xdg-open https://extensions.gnome.org/extension/1000/random-walls/
xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
xdg-open https://extensions.gnome.org/extension/10/windownavigator/
xdg-open https://extensions.gnome.org/extension/21/workspace-indicator/
xdg-open https://extensions.gnome.org/extension/615/appindicator-support/
xdg-open https://extensions.gnome.org/extension/19/user-themes/

# git hub
cd $SRC/hub/

#xdg-open https://github.com/pop-os/shell
(git clone git@github.com:pop-os/shell.git \
    && cd shell \
    && sh rebuild.sh)

#xdg-open https://github.com/pop-os/gnome-shell-extension-always-show-workspaces
(git clone git@github.com:pop-os/gnome-shell-extension-always-show-workspaces.git \
    && cd gnome-shell-extension-always-show-workspaces \
    && make clean install)

#xdg-open https://github.com/pop-os/gnome-shell-extension-alt-tab-raise-first-window
(git clone git@github.com:pop-os/gnome-shell-extension-alt-tab-raise-first-window.git \
    && cd gnome-shell-extension-alt-tab-raise-first-window \
    && make clean install)




# historical - no longer used
#xdg-open https://extensions.gnome.org/extension/1011/dynamic-panel-transparency/
#xdg-open https://extensions.gnome.org/extension/7/removable-drive-menu/
#xdg-open https://extensions.gnome.org/extension/750/openweather/
#xdg-open https://extensions.gnome.org/extension/1253/extended-gestures/
#xdg-open https://extensions.gnome.org/extension/545/hide-top-bar/
#xdg-open https://extensions.gnome.org/extension/1166/extension-update-notifier/
