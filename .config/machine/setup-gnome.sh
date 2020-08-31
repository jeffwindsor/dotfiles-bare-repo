#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"


# Fonts
dconf write /org/gnome/desktop/interface/font-name 'Ubuntu Medium 11'
dconf write /org/gnome/desktop/interface/monospace-font-name 'JetBrains Mono weight=521 11'



# gnome extensions
sudo apt -y install gnome-shell-extensions

##################################################################################
# task bar extensions
##################################################################################
xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
xdg-open https://extensions.gnome.org/extension/750/openweather/
xdg-open https://extensions.gnome.org/extension/21/workspace-indicator/
xdg-open https://extensions.gnome.org/extension/7/removable-drive-menu/

# # transparent top bar
xdg-open https://extensions.gnome.org/extension/1011/dynamic-panel-transparency/

# # maintained fork of sensors
# xdg-open https://extensions.gnome.org/extension/841/freon/
# # maintained version of sys monitor
# echo "sys monitor requires"
# echo "sudo apt -y install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0"
# xdg-open https://extensions.gnome.org/extension/120/system-monitor/

# allows keyboard shortcut selection of spaces and windows in overlay
xdg-open https://extensions.gnome.org/extension/10/windownavigator/
xdg-open https://extensions.gnome.org/extension/600/launch-new-instance/
# desktop wallpaper auto switcher
# xdg-open https://extensions.gnome.org/extension/543/backslide/
xdg-open https://extensions.gnome.org/extension/1000/random-walls/
# extended multi touch gestures
xdg-open https://extensions.gnome.org/extension/1253/extended-gestures/
xdg-open https://extensions.gnome.org/extension/545/hide-top-bar/
xdg-open https://extensions.gnome.org/extension/1166/extension-update-notifier/
