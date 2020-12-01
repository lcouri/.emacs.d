;; Disable UI stuff immediately to avoid any display at all
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)

;; start maximised
(push '(fullscreen . maximized) initial-frame-alist)

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; ----from doom emacs----
;; Resizing the Emacs frame can be a terribly expensive part of changing the
;; font. By inhibiting this, we easily halve startup times with fonts that are
;; larger than the system default.
(setq frame-inhibit-implied-resize t)

;; Ignore X resources; its settings would be redundant with the other settings
;; in this file and can conflict with later config (particularly where the
;; cursor color is concerned).
(advice-add #'x-apply-session-resources :override #'ignore)
;; ------------------------

;; Set up package archives
(with-eval-after-load 'package
  (add-to-list 'package-archives
               '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives
               '("org" . "https://orgmode.org/elpa/") t))
