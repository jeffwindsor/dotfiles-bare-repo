;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; User Info
(setq user-full-name "Jeff Windsor"
      user-mail-address "jeff.windsor@gmail.com")

;; Look and Feel
(setq doom-font (font-spec :family "JetBrains Mono" :size 14 :weight 'regular)
      doom-big-font (font-spec :family "JetBrains Mono" :size 18)
      display-line-numbers-type 'relative
      confirm-kill-emacs nil)

;;(setq doom-theme 'doom-molokai)
(setq doom-theme 'doom-vibrant)
;;(setq doom-theme 'doom-nord)

;; Default working directory
(setq default-directory "~/")

;; Projectile
(setq projectile-project-search-path "~/src/")

;; Org
(setq org-directory "~/org/")
