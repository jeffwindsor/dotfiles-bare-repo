# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";

  environment.shells = [pkgs.zsh pkgs.bashInteractive];
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
    
    # Terminal/Shell
    alacritty                       # A cross-platform, GPU-accelerated terminal emulator
    starship                        # A minimal, blazing fast, and extremely customizable prompt for any shell
    zsh                             # The Z Shell
    zsh-autosuggestions             # Fish shell autosuggestions for Zsh
    zsh-history-substring-search    # Fish shell like syntax highlighting for Zsh
    zsh-syntax-highlighting         # Fish shell like syntax highlighting for Zsh
    
    # Development
    clojure                         # A Lisp dialect for the JVM
    clj-kondo                       # A linter for Clojure code that sparks joy.
    leiningen	                    # Project automation for Clojure
    go                              # The Go Programming language
    go-tools                        # A collection of tools and libraries for working with Go code, including linters and static analysis.
    haskellPackages.stack           # The Haskell Tool Stack
    haskellPackages.hlint           # Source code suggestions
    rustup                          # The Rust toolchain installer
    git                             # Distributed version control system
    gitAndTools.tig                 # Text-mode interface for git
    gitAndTools.hub                 # Command-line wrapper for git that makes you better at GitHub
    gnumake                         # A tool to control the generation of non-source files from sources
    vscodium                        # Open source source code editor developed by Microsoft for Windows, Linux and macOS (VS Code without MS branding/telemetry/licensing)

    # Tools
    autojump                        # A `cd' command that learns
    chromium                        # An open source web browser from Google
    curl                            # A command line tool for transferring files with URL syntax
    exa                             # Replacement for 'ls' written in Rust
    fd                              # A simple, fast and user-friendly alternative to find
    fzf                             # Fuzzy Finder
    neovim                          # Vim text editor fork focused on extensibility and agility
    ripgrep                         # A utility that combines the usability of The Silver Searcher with the raw speed of grep
    spotify	                        # Play music from the Spotify music service
    unzip                           # An extraction utility for archives compressed in .zip format
    vifm                            # Terminal File Browser
    wget                            # Tool for retrieving files using HTTP, HTTPS, and FTP
  ];

  fonts.fonts = with pkgs; [
    cascadia-code               # Monospaced font that includes programming ligatures and is designed to enhance the modern look and feel of the Windows Terminal
    inconsolata                 # A monospace font for both screen and print
    source-code-pro             # A set of monospaced OpenType fonts designed for coding environments
    font-jetbrains-mono         # A typeface made for developers
    fira-code                   # Monospace font with programming ligatures
  ];

  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
  hardware.bluetooth.enable = true;

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;

    useDHCP = false;
    interfaces.enp0s31f6.useDHCP = true;
    interfaces.wlp4s0.useDHCP = true;

    # firewall.allowedTCPPorts = [ 7777 ];
    # firewall.allowedUDPPorts = [ ... ];
    # firewall.enable = false;

    # proxy.default = "http://user:password@proxy:port/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  };

  nix.buildCores = 2;
  nix.trustedUsers = [ "@wheel" ];
  nix.gc.automatic = true;
  nixpkgs.config.allowUnfree = true;
  powerManagement.powertop.enable = true;

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryFlavor = "gtk2";
  };

  time.timeZone = "America/Los_Angeles";

  users.extraUsers.dev = {
    home = "/home/dev";
    shell = pkgs.zsh;
    extraGroups = [ "audio" "docker" "networkmanager" "wheel" ];
    isNormalUser = true;
    uid = 1000;
  };

  services.printing.enable = true;
  services.xserver = {
      enable = true;
      layout = "us";
      xkbOptions = "ctrl:nocaps";
      windowManager.xmonad.enable = true;
      windowManager.xmonad.enableContribAndExtras = true;
      displayManager = {
        defaultSession = "none+xmonad";
        lightdm = {
          enable = true;
          autoLogin = {
            user = "dev";
          };
        };
      };
      libinput.enable = true;
      libinput.clickMethod = "clickfinger";
      libinput.tapping = false;
      libinput.disableWhileTyping = true;
  };

  sound.enable = true;
  system.stateVersion = "20.03";

