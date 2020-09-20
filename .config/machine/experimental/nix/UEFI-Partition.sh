#! /usr/bin/env bash

swap_size=$1

echo "UEFI Partitioning"

sudo parted /dev/sda -- mklabel gpt
sudo parted /dev/sda -- mkpart primary 512MiB -${swap_size}GiB
sudo parted /dev/sda -- mkpart primary linux-swap -${swap_size}GiB 100%
sudo parted /dev/sda -- mkpart ESP fat32 1MiB 512MiB
sudo parted /dev/sda -- set 3 boot on

sudo mkfs.ext4 -L nixos /dev/sda1
sudo mkswap -L swap /dev/sda2
sudo swapon /dev/sda2
sudo mkfs.fat -F 32 -n boot /dev/sda3
sudo mount /dev/disk/by-label/nixos /mnt
sudo mkdir -p /mnt/boot
sudo mount /dev/disk/by-label/boot /mnt/boot
sudo nixos-generate-config --root /mnt
