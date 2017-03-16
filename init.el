;; init.el

;; Get the stuff set by Custom
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Paths
(setq themes-dir
       (expand-file-name "themes" user-emacs-directory))
(setq packages-dir
      (expand-file-name "packages" user-emacs-directory))
(setq elpa-dir
      (expand-file-name "elpa" user-emacs-directory))
(setq settings-dir
       (expand-file-name "settings" user-emacs-directory))

;; packages
(add-to-list 'load-path packages-dir)
(let ((default-directory packages-dir)) ;; recursive -subdirectories
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path elpa-dir)
(let ((default-directory elpa-dir)) ;; recursive -subdirectories
  (normal-top-level-add-subdirs-to-load-path))

(package-initialize)

;; themes
(add-to-list 'custom-theme-load-path elpa-dir)
(add-to-list 'custom-theme-load-path themes-dir)
;; disable all themes before loading a new one
;; (source: http://emacs.stackexchange.com/questions/3112)
(defadvice load-theme (before theme-dont-propagate activate)
  (mapc #'disable-theme custom-enabled-themes))

;; default theme: sandy leuven
(load-theme 'leuven-luke t)

;; settings
(add-to-list 'load-path settings-dir)
(let ((default-directory settings-dir))
  (normal-top-level-add-subdirs-to-load-path))

;; Global scope
(load (expand-file-name "globals.el" settings-dir))

;; https://github.com/technomancy/better-defaults
(setq technomancy-defaults
      (expand-file-name "better-defaults.el" packages-dir))
(load technomancy-defaults)


;; Appearance-type stuff
(require 'appearance)

;; Set up Packages we like

(require 'own-packages)
(require 'initialize-packages)
(require 'setup-js-comint)
(require 'setup-web-mode)
(require 'setup-org)
(require 'setup-markdown)
(require 'comment-box)
(require 'setup-keys)

(global-set-key (kbd "C-x C-c") nil)

;; avy-mode
(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "C-:") 'avy-goto-char)

(put 'narrow-to-region 'disabled nil)

;; js defaults
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Default files to open
(mapc 'find-file org-agenda-files)
(shell)
