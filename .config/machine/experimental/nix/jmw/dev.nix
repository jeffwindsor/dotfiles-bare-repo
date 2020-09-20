# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
  ];
}
