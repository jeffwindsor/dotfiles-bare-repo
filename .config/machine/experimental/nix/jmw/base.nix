# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  boot.loader ={
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  environment.shells = [pkgs.zsh pkgs.bashInteractive];
  environment.systemPackages = with pkgs; [

    # Terminal/Shell
    starship                        # A minimal, blazing fast, and extremely customizable prompt for any shell
    zsh                             # The Z Shell
    zsh-autosuggestions             # Fish shell autosuggestions for Zsh
    zsh-history-substring-search    # Fish shell like syntax highlighting for Zsh
    zsh-syntax-highlighting         # Fish shell like syntax highlighting for Zsh

    # Tools
    autojump                        # A `cd' command that learns
    chromium                        # An open source web browser from Google
    curl                            # A command line tool for transferring files with URL syntax
    emacs	                        # The extensible, customizable GNU text editor
    exa                             # Replacement for 'ls' written in Rust
    fd                              # A simple, fast and user-friendly alternative to find
    fzf                             # Fuzzy Finder
    neovim                          # Vim text editor fork focused on extensibility and agility
    ripgrep                         # A utility that combines the usability of The Silver Searcher with the raw speed of grep
    spotify	                      # Play music from the Spotify music service
    unzip                           # An extraction utility for archives compressed in .zip format

  ];

  fonts.fonts = with pkgs; [
    cascadia-code               # Monospaced font that includes programming ligatures and is designed to enhance the modern look and feel of the Windows Terminal
    inconsolata                 # A monospace font for both screen and print
    source-code-pro             # A set of monospaced OpenType fonts designed for coding environments
    jetbrains-mono         # A typeface made for developers
    fira-code                   # Monospace font with programming ligatures
  ];

  hardware.bluetooth.enable = true;
  hardware.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
  };

  networking = {
    networkmanager.enable = true;

    #global DHCP deprecated
    useDHCP = false;
    interfaces.enp0s31f6.useDHCP = true;
    interfaces.wlp4s0.useDHCP = true;
  };

  nix = {
    buildCores = 2;
    trustedUsers = [ "@wheel" ];
    gc.automatic = true;
  };

  nixpkgs.config.allowUnfree = true;

  powerManagement.powertop.enable = true;

  #programs.gnupg.agent = {
  #  enable = true;
  #  enableSSHSupport = true;
  #  pinentryFlavor = "gtk2";
  #};

  services.printing.enable = true;
  services.xserver.enable = true;

  sound.enable = true;

  time.timeZone = "America/Los_Angeles";

  users.extraUsers.jmw = {
    shell = pkgs.zsh;
    extraGroups = [ "audio" "docker" "networkmanager" "wheel" ];
    isNormalUser = true;
    uid = 1000;
  };

}
