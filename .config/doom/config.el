;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; User Info
(setq user-full-name "Jeff Windsor"
      user-mail-address "jeff.windsor@gmail.com")

;; Look and Feel
(setq
 doom-font (font-spec :family "JetBrains Mono" :size 18)
 doom-big-font (font-spec :family "JetBrains Mono" :size 24)
 doom-theme 'doom-one
 display-line-numbers-type 'relative
 confirm-kill-emacs nil)

;; Projectile
(setq projectile-project-search-path '("~/src/"))

;; Org
(add-hook! org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-directory "~/org/")
