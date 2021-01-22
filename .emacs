
;; Disable unwanted visuals
(setq inhibit-startup-message t)
(setq visual-bell t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(set-face-attribute 'default nil :font "JetBrains Mono" :height 200)
(load-theme 'tango-dark)

;; Keys
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Package Initialization
(require 'package)
(setq package-archives '(("melpa" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)


