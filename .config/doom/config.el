;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq
 user-full-name "Jeff Windsor"
 user-mail-address "jeff.windsor@gmail.com"
 doom-font (font-spec :family "JetBrains Mono" :size 18)
 doom-big-font (font-spec :family "JetBrains Mono" :size 24)
 doom-theme 'doom-one
 display-line-numbers-type 'relative
 confirm-kill-emacs nil)

;; projectile
(setq projectile-project-search-path '("~/src/"))

;; org-bullets
(add-hook! org-mode-hook (lambda () (org-bullets-mode 1)))
