;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; user
(setq user-full-name "Jeff Windsor"
      user-mail-address "jeff.windsor@gmail.com")

;; locations
(setq default-directory (concat (getenv "HOME") "/"))
(setq org-directory "~/org/")

;; visual
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14)
      doom-big-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 18))

(setq doom-theme 'doom-molokai)
(setq display-line-numbers-type 'relative)
(setq confirm-kill-emacs nil)

