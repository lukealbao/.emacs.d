;; init.el

;; https://github.com/technomancy/better-defaults
(require 'better-defaults)

;; Paths
(setq themes-dir
       (expand-file-name "themes" user-emacs-directory))
(setq packages-dir
      (expand-file-name "packages" user-emacs-directory))
(setq settings-dir
       (expand-file-name "settings" user-emacs-directory))

(add-to-list 'custom-theme-load-path themes-dir)
(add-to-list 'load-path packages-dir)
(add-to-list 'load-path settings-dir)

;; Get the stuff set by Custom
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Appearance-type stuff
(require 'appearance)

;; Set up Packages we like
(require 'setup-js-comint)
(require 'setup-web-mode)

