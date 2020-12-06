#!/usr/bin/env sh

# Laptop Power Management
sysdl='/etc/systemd/logind.conf'
cat $sysdl \
    | sed -r 's/\#?HandleLidSwitchExternalPower=.*/HandleLidSwitchExternalPower=ignore/g' \
    | sed -r 's/\#?HandleLidSwitch=.*/HandleLidSwitch=poweroff/g' \
    | sudo tee $sysdl
