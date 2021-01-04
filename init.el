;; Set up package archives
(with-eval-after-load 'package
  (add-to-list 'package-archives
               '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives
               '("org" . "https://orgmode.org/elpa/") t))

;; Install use-package if it's not already installed.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
