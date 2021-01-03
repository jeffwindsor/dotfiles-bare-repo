#!/bin/env bash


install-nix-catalina-step-1(){
    echo 'nix' | sudo tee -a /etc/synthetic.conf
    # Actually reboot your Mac.
    sudo shutdown -r now
}

install-nix-catalina-step-2(){
    sudo diskutil apfs addVolume disk1 APFSX Nix -mountpoint /nix
    sudo diskutil enableOwnership /nix
    sudo chflags hidden /nix
    echo "LABEL=Nix /nix apfs rw" | sudo tee -a /etc/fstab
    sh <(curl https://nixos.org/nix/install) --daemon
}

install-nix-home-manager(){
    nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
    nix-channel --update
    export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
    nix-shell '<home-manager>' -A install
}
