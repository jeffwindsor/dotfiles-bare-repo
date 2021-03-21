;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; User Info
(setq user-full-name "Jeff Windsor"
      user-mail-address "jeff.windsor@gmail.com")

;; Look and Feel
(setq
 doom-font (font-spec :family "JetBrains Mono" :size 14 :weight 'regular)
 doom-big-font (font-spec :family "JetBrains Mono" :size 18)
 doom-theme 'doom-molokai
 display-line-numbers-type 'relative
 confirm-kill-emacs nil)

;; Default working directory
(setq default-directory (concat (getenv "HOME") "/"))

;; Projectile
(setq projectile-project-search-path '("~/src/"))

;; Org
(setq org-directory "~/org/")
