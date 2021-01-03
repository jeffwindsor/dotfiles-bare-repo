
// ####### ####### ######  
// #     #    #    #     # 
// #     #    #    #     # 
// #     #    #    ######  
// #     #    #    #     # 
// #     #    #    #     # 
// #######    #    ######  
//
//#################################
//
//This file contains basic instructions for a vanilla Arch Linux installation.  It is not a script, just a set of instructions and commands.
//Following the installation you should refer to the Arch wiki for post installation configurations.
//
//What this file contains are the basic commands to set up a desktop of your choice.  If you are unfamiliar with an
//Arch Linux install, I would recommend setting up your system over ssh.  This means you can boot the Arch iso and then perform the install
//from another machine.  The advantage of doing this is that you will be able to copy commands directly into the terminal from this file, or if you prefer
//from the Arch wiki
//
//##################################

# Arch Vanilla Install

[adapted from](https://gitlab.com/OldTechBloke/dotfiles/-/blob/master/archinstall/archinstall.txt)

## Preparation

- Download the [Arch ISO](https://www.archlinux.org/download/)
- Burn to USB `sudo dd bs=4M if=<name of iso file> of=/dev/sdd status=progress oflag=sync`

## Boot on Local Machine

- Most likely Fn-F12 for boot menu, select Usb Drive
- Connect Wifi with 
    ```
    [~#] iwctl

    Find active devices:
    [iwd]# device list

    You can then list all available networks SSIDs:
    [iwd]# station {device} scan
    [iwd]# station {device} get-networks

    Finally, to connect to a network:
    [iwd]# station {device} connect {SSID}

    If a passphrase is required, you will be prompted to enter it. Alternatively, you can supply as a command line argument:
    $ iwctl --passphrase passphrase station device connect SSID

    ```
- Check you are connected to the internet: `ping archlinux.org`
- Set an ssh root password: `passwd`
- Then start the ssh service: `systemctl start sshd.service`
- Check the ip address of the arch machine: `ip a`

## Install over SSH

- Go to a terminal on another machine: `ssh root@{ip-address-from-above}`
- If you want to install a UEFI system, verify that you have booted the iso in the correct mode: `ls /sys/firmware/efi/efivars`
  - If the directory exists, you're good to go
- Begin the install by checking the system clock is accurate: `timedatectl set-ntp true`
- Create partitions:
  - `fdisk -l` to see drive name
  - `cfdisk /dev/{drive}`
    - EFI Partition 550mb
    - Linux File System : Rest
- Format the partitions.
  ```
  mkfs.fat -F32 /dev/sda1
  mkswap /dev/sda2
  mkfs.ext4 /dev/sda3
  ```
- Turn on swap: `swapon /dev/sda2`
- Mount partitions
  - start with root: `mount /dev/sda3 /mnt`
  - for efi systems
    - create a mount point: `mkdir -p /mnt/boot/efi`
    - mount it: `mount /dev/sda1 /mnt/boot/efi`
- Install the essentials: `pacstrap /mnt base base-devel linux linux-firmware nano less dialog wpa_supplicant dhcpcd sudo reflector pacman-contrib usbutils pciutils`
- Create fstab: `genfstab -U /mnt >> /mnt/etc/fstab`
- Chroot into the new system: `arch-chroot /mnt`
- Set the time Zone. 
  - Check available zones with `ls /usr/share/zoneinfo/`  i.e. America/Los_Angeles
  - Create a symbolic link to /etc/localtime: `ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime`
- Generate /etc/adjtime: `hwclock --systohc`
- Set up localisation: 
  ```
  echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
  locale-gen
  echo LANG=en_US.UTF-8 > /etc/locale.conf
  export LANG=en_GB.UTF-8
  ``` 
- Set up network and hosts: `echo {hostname} > /etc/hostname`
- Edit your hosts file
  ``` 
  127.0.0.1 localhost
  ::1		  localhost
  127.0.1.1 otbarch.localdomain otbarch
  ```
- Create a new initramfs: `mkinitcpio -P`
- Create a normal user
  ```
  useradd -m -G sys,wheel,users,adm,log -s /bin/bash otb
  passwd otb
  ``` 
- Setup sudo: `EDITOR=nano visudo` : Uncomment the line that states "Uncomment to allow members of group wheel to execute any command"
- Enable multilib: `nano /etc/pacman.conf` : Uncomment the two lines that say `[multilib]` and `include = /etc/pacman.d/mirrorlist`
- Optimise mirrors: `reflector --country 'United States' --age 24 --protocol https --sort rate --save /etc/pacman.d/mirrorlist`
- Sync the repos: `pacman -Syy`	
- Then install grub: 
  ```
  pacman -S grub efibootmgr os-prober --noconfirm
  grub-install --target=x86_64-efi --bootloader-id=grub --efi-directory=/boot/efi 
  grub-mkconfig -o /boot/grub/grub.cfg
  ```
- Install some essential packages: `pacman --noconfirm -S xorg xorg-apps xorg-server xorg-drivers xterm mesa linux-headers xdg-user-dirs fuse2 fuse3 ntfs-3g exfat-utils pulseaudio gvfs dkms haveged git unrar unzip htop lsb-release polkit man-db man-pages firefox`
- Install Network Manager, Printing, a Display Manager and some fonts: `pacman --noconfirm -S cups system-config-printer foomatic-db-engine foomatic-db-ppds foomatic-db-nonfree-ppds gutenprint ghostscript networkmanager network-manager-applet lightdm lightdm-gtk-greeter ttf-ubuntu-font-family ttf-dejavu ttf-bitstream-vera ttf-liberation noto-fonts`
- Install a Desktop environment: `pacman --noconfirm -S gnome gnome-extra`
- Enable services
  ```
  systemctl enable lightdm.service
  systemctl enable NetworkManager.service
  systemctl enable org.cups.cupsd.service
  ```
- Reboot
    ```
    exit
    umount /dev/sda1
    umount /dev/sda3
    shutdown -r now
    ```

## On new machine
-- Step 28

-Install yay and Pamac

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S pamac-aur

--Step 29

-Install microcode, either:

pacman -S intel-ucode

-or

pacman -S amd-ucode

--Step 30

-Themes, codecs and packages are now up to you. Enjoy

