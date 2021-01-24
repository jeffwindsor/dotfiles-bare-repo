;; Packages
(setq package-list '(
		     doom-themes
		     doom-modeline
             evil
             ivy))

;; Packages: repositories
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Packages: Activate all the packages (in particular autoloads)
(package-initialize)

;; Pacakges: Update your local package index
(unless package-archive-contents
  (package-refresh-contents))

;; Packages: Install all missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Packages: Configuration
(require 'evil)
(evil-mode t)
(load-theme 'doom-one 't)
(doom-modeline-mode 1)
(ivy-mode 1)

;; Visuals
(setq inhibit-startup-message t)
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)          ; Disable the menu bar

;;Keys 
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)     ;; Make ESC quit prompts
