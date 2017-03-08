;; custom.el

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(column-number-mode t)
 '(cua-mode nil nil (cua-base))
 '(cursor-type (quote (hbar . 20)))
 '(custom-enabled-themes (quote (leuven-luke)))
 '(custom-safe-themes
   (quote
    ("90ae00a0a69258160e351a225389459fb0f35bb9e034ba90224ec6776402be6d" "0befb9358d6cc9a33133e096886c325708d38b7a02903c710a10783f4814dd92" "eb84431490f8d264a21a02d8600da94d9db5d2aee414c6b8f4a83101caf21ebe" default)))
 '(default-input-method "TeX")
 '(fci-rule-color "#073642")
 '(fringe-mode 0 nil (fringe))
 '(hl-sexp-background-color "#efebe9")
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-concat-multiline-strings t)
 '(js3-enter-indents-newline nil)
 '(js3-indent-dots nil)
 '(js3-indent-level 2)
 '(line-number-mode t)
 '(linum-format " %6d ")
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(org-agenda-files
   (quote
    ("~/Documents/personaldev/personal.org" "~/Documents/fpdev/org/personal/home.org" "~/Documents/fpdev/org/todo.org")))
 '(org-babel-load-languages (quote ((sh . t) (python . t) (ruby . t) (js . t) (C . t))))
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("~" org-code verbatim)
     ("+"
      (:strike-through t))
     ("`"
      (:inverse-video t)
      verbatim))))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-mode-hook
   (quote
    (#[nil "\300\301\302\303\304$\207"
           [org-add-hook change-major-mode-hook org-show-block-all append local]
           5]
     #[nil "\300\301\302\303\304$\207"
           [org-add-hook change-major-mode-hook org-babel-show-result-all append local]
           5]
     org-babel-result-hide-spec org-babel-hide-all-hashes turn-on-auto-fill)))
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (ob-js web-mode ox-gfm ac-js2 zoom-frm gh-md gh nyan-mode zone-nyan zone-rainbow helm org2issue organic-green-theme flatui-theme green-screen-theme pastelmac-theme graphql-mode yaml-mode swagger-to-org slime avy markdown-preview-mode markdown-mode magit rjsx-mode js-comint js3-mode js2-mode)))
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(safe-local-variable-values (quote ((hl-sexp-mode) (rainbow-mode . t))))
 '(split-width-threshold 140)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "nil" :family "Menlo"))))
 '(org-mode-line-clock ((t (:inherit mode-line))) t))
