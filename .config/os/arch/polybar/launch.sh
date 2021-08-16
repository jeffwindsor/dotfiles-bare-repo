#!/usr/bin/env bash
set -euo pipefail

# move to directory where script resides, exit if failure
cd "$(dirname "${0}")" || exit

# kill current polybars and wait for it to complete
killall -q polybar
while pgrep -u "$UID" -x polybar > /dev/null; do sleep 1; done

# collect monitors
count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)

# instantiate bars on each monitor
if [ "$count" = 1 ]; then
  m=$(xrandr --query | grep " connected" | cut -d" " -f1)
  MONITOR=$m polybar --reload mainbar-xmonad -c "$PWD"/config &

#  m=$(xrandr --query | grep " connected" | cut -d" " -f1)
#  MONITOR=$m polybar --reload mainbar-xmonad-extra -c "$PWD"/config &
else
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mainbar-xmonad -c "$PWD"/config &
  done

#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload mainbar-xmonad-extra -c "$PWD"/config &
#  done
fi
