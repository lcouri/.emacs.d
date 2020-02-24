;; Disable UI stuff immediately to avoid any display at all
(when window-system
  (tool-bar-mode -1)
  (menu-bar-mode -1))
(setq inhibit-startup-message t)

;; start maximised
(custom-set-variables
 '(initial-frame-alist '((fullscreen . maximized))))

;; Set up package archives
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; Install use-package if it's not already installed.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
