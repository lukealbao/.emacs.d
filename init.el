;; init.el

;; Paths
(setq themes-dir
       (expand-file-name "themes" user-emacs-directory))
(setq packages-dir
      (expand-file-name "packages" user-emacs-directory))
(setq settings-dir
       (expand-file-name "settings" user-emacs-directory))

(add-to-list 'custom-theme-load-path themes-dir)

;; packages
(add-to-list 'load-path packages-dir)
(let ((default-directory packages-dir)) ;; recursive -subdirectories
  (normal-top-level-add-subdirs-to-load-path))

;; settings
(add-to-list 'load-path settings-dir)
(let ((default-directory settings-dir))
  (normal-top-level-add-subdirs-to-load-path))

;; https://github.com/technomancy/better-defaults
(setq technomancy-defaults
      (expand-file-name "better-defaults.el" packages-dir))
(load technomancy-defaults)

;; Get the stuff set by Custom
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Appearance-type stuff
(require 'appearance)

;; Set up Packages we like
(require 'setup-js-comint)
(require 'setup-web-mode)
(require 'comment-box)

