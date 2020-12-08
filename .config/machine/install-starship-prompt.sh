#!/usr/bin/env bash
set -e
cd "$(dirname "${0}")"

curl -fsSL https://starship.rs/install.sh | bash -s -- --yes
