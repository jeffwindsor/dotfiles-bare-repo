# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.shells = [pkgs.zsh pkgs.bashInteractive];
  environment.systemPackages = with pkgs; [
    # Terminal/Shell
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
    spotify	                        # Play music from the Spotify music service
    unzip                           # An extraction utility for archives compressed in .zip format
    vifm                            # Terminal File Browser
    vivaldi                         # A Browser for our Friends, powerful and personal
    wget                            # Tool for retrieving files using HTTP, HTTPS, and FTP

  ];

  fonts.fonts = with pkgs; [
    cascadia-code               # Monospaced font that includes programming ligatures and is designed to enhance the modern look and feel of the Windows Terminal
    inconsolata                 # A monospace font for both screen and print
    source-code-pro             # A set of monospaced OpenType fonts designed for coding environments
    font-jetbrains-mono         # A typeface made for developers
    fira-code                   # Monospace font with programming ligatures
  ];

}
