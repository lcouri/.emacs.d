;; -*- lexical-binding: t; -*-

(setenv "LSP_USE_PLISTS" "true")
;; Increase gc threshold and read-process to improve lsp
;; Note: I'm a bit unclear on if these are fine to have increased all the time - need to look into it more
(setq gc-cons-threshold (* 1024 1024 50))
(setq read-process-output-max (* 1024 1024))

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

;; disable package.el in favour of elpaca
(setq package-enable-at-startup nil)
