#!/usr/bin/env sh

MEDIA_KEYS='/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings' 

addCustom(){
    dconf write "$MEDIA_KEYS/custom$1/binding" $2
    dconf write "$MEDIA_KEYS/custom$1/command" $3
    dconf write "$MEDIA_KEYS/custom$1/name" $4
}


# Remove shortcut for email
dconf write '/org/gnome/settings-daemon/plugins/media-keys/email' '@as []'

# Create Custom Keybinding entries
dconf write "$MEDIA_KEYS" "['$MEDIA_KEYS/custom0/','$MEDIA_KEYS/custom1/','$MEDIA_KEYS/custom2/']"
addCustom "0" "'<Super>e'" "'emacs'" "'Launch Emacs'"
addCustom "1" "'<Super><Shift>e'" "'code'" "'Launch VSCodium'"
addCustom "2" "'<Super>i'" "'idea'" "'Launch Intellij Idea'"

# Application Launcher
dconf write '/org/gnome/shell/extensions/pop-shell/activate-launcher' "['<Super>space']"

# Move Mode
dconf write '/org/gnome/shell/extensions/pop-shell/tile-enter' "@as ['<Alt><Super>space']"

# Terminal
dconf write '/org/gnome/settings-daemon/plugins/media-keys/terminal' "['<Super>Return']"

# Browser
dconf write '/org/gnome/settings-daemon/plugins/media-keys/www' "['<Shift><Super>Return']"

# Seetings 
dconf write '/org/gnome/settings-daemon/plugins/media-keys/control-center' "['<Super>comma']"

