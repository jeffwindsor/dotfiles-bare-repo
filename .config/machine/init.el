;; Packages
(setq package-list '(
		     doom-themes
		     doom-modeline
             evil
             evil-leader
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
(require 'evil-leader)
(global-evil-leader-mode)
(evil-mode t)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(doom-modeline-mode 1)

;; show column number in bottom bar
(column-number-mode)
;; display line numbers
(global-display-line-numbers-mode t)
;; theme
(load-theme 'doom-one 't)

;; turn off gui extras
(setq inhibit-startup-message t)
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)          ; Disable the menu bar

;;Keys 
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key 
  "b" 'switch-to-buffer
  "e" 'eval-buffer
  "k" 'kill-buffer
  )
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)     ;; Make ESC quit prompts




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(which-key use-package rainbow-delimiters no-littering ivy-rich hydra helpful general evil-collection doom-themes doom-modeline counsel command-log-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
