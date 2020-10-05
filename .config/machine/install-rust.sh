#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

curl --proto '=https' --tlsv1.2 -sSfo rustup-init.sh https://sh.rustup.rs
chmod +x rustup-init.sh
./rustup-init.sh -y

