#!/bin/sh

dte(){
  dte="$(date +"%A, %B %d %l:%M")"
  echo -e "$dte"
}

while :; do
    echo "$(dte)"
	sleep 60
done
