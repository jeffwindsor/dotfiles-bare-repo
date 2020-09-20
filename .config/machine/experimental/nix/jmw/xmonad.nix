# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Desktop
    acpi                            # Show battery status and other ACPI information
    bluez                           # Bluetooth support for Linux
    inetutils                       # Collection of common network programs
    efibootmgr
    xorg.xkbcomp                    # xkb keymap compiler
    xcape                           # Modal Keybinding
    dmenu                           # Application Launcher
    networkmanagerapplet            # Networking Applet
    haskellPackages.xmobar          # Status Bar
    stalonetray                     # System Tray
    dunst                           # Notification Daemon
    libnotify                       # Notification Client
    xbanish                         # Hides Mouse when typing
    xlayoutdisplay                  # Multihead Script
  ];

  services.xserver = {
      displayManager = {
        defaultSession = "none+xmonad";
        lightdm = {
          enable = true;
          autoLogin = {
            user = "dev";
          };
        };
      };
      layout = "us";
      libinput.enable = true;
      libinput.clickMethod = "clickfinger";
      libinput.tapping = false;
      libinput.disableWhileTyping = true;
      windowManager.xmonad.enable = true;
      windowManager.xmonad.enableContribAndExtras = true;
      xkbOptions = "ctrl:nocaps";
  };
}
