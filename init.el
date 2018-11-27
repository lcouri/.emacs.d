;; I'm also running emacs on WSL (Windows Subsystem for Linux) with VcXsrv as an X server.
;; It doesn't seem to support double buffering which causes emacs to not resize its frame.
;; I'm not sure if there's a better way of checking in emacs whether the x server supports
;; double buffering, but for now at least I'm just checking a custom environment variable.
(when (getenv "NO_X_DOUBLE_BUFFERING")
  (setq default-frame-alist
      (append default-frame-alist '((inhibit-double-buffering . t)))))

;; Disable UI stuff immediately to avoid any display at all
(when window-system
  (tool-bar-mode -1)
  (menu-bar-mode -1))
(setq inhibit-startup-message t)

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
