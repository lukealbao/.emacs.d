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
 '(asana-my-tasks-project-id nil t)
 '(asana-selected-workspace
   (quote
    ((id . 295940779223992)
     (name . "Dianne & Luke's Wedding"))) t)
 '(beacon-color "#ff9da4")
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode nil nil (cua-base))
 '(cursor-type (quote (hbar . 20)))
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "e03d2efd989b91f29ed5f91f160b0054031e6b6574950f7d64792a3acf0c9565" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "60948671aeed6450faa8f28978a09586f142af6eb0b59e70848fcc32b9d36fd1" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "9583f0b6511c5774e5ebfe32662105b4d7157f51473f64e5e1d8be3fc8565f01" "08a89acffece58825e75479333109e01438650d27661b29212e6560070b156cf" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb749a38c5cb7d13b60fa7fc40db7eced3d00aa93654d150b9627cabd2d9b361" "d606ac41cdd7054841941455c0151c54f8bff7e4e050255dbd4ae4d60ab640c1" "807a7f4c2d0d331fc1798e6d38b890ce3582096b8d622ba3b491b2aa4345e962" "90ae00a0a69258160e351a225389459fb0f35bb9e034ba90224ec6776402be6d" "0befb9358d6cc9a33133e096886c325708d38b7a02903c710a10783f4814dd92" "eb84431490f8d264a21a02d8600da94d9db5d2aee414c6b8f4a83101caf21ebe" default)))
 '(default-input-method "TeX")
 '(editorconfig-mode t)
 '(electric-indent-mode nil)
 '(electric-pair-mode nil)
 '(fci-rule-color "#073642")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(flycheck-javascript-flow-args nil)
 '(frame-background-mode (quote dark))
 '(fringe-mode 0 nil (fringe))
 '(helm-mode t)
 '(highlight-symbol-colors
   (quote
    ("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA" "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F")))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(hl-sexp-background-color "#efebe9")
 '(jdee-db-active-breakpoint-face-colors (cons "#191C25" "#80A0C2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#191C25" "#A2BF8A"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#191C25" "#434C5E"))
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-concat-multiline-strings t)
 '(js3-enter-indents-newline nil)
 '(js3-indent-dots nil)
 '(js3-indent-level 2)
 '(jsx-indent-level 2)
 '(line-number-mode t)
 '(linum-format " %6d ")
 '(lsp-clients-typescript-server "javascript-typescript-langserver")
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(nyan-mode t)
 '(org-babel-load-languages (quote ((python . t) (ruby . t) (js . t) (C . t))))
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
    (company sed-mode dockerfile-mode cobol-mode uuid buttercup lsp-ui racket-mode dr-racket-like-unicode lsp-typescript ag helm-ag julia-repl julia-mode ox-jira py-autopep8 elixir-mode helm-flyspell tide typescript-mode emacsql-psql ivy doom-themes projectile org-projectile use-package helm-swoop tuareg xref-js2 flow-minor-mode prettier-js powerline-evil dart-mode command-log-mode csharp-mode groovy-mode tiny helpful go-mode annotate rust-playground ob-rust cargo pug-mode helm-projectile editorconfig lua-mode ox-twbs smart-mode-line-powerline-theme smart-mode-line powerline color-theme-sanityinc-solarized eslint-fix discover-js2-refactor avy-zap expand-region flycheck-flow flycheck ac-cider redshank paredit jsx-mode slack mocha-snippets yasnippet color-theme-sanityinc-tomorrow org-pomodoro org-beautify-theme org-bullets demo-it foggy-night-theme exec-path-from-shell leuven-theme ob-js web-mode ox-gfm ac-js2 zoom-frm gh-md gh nyan-mode zone-nyan zone-rainbow helm org2issue organic-green-theme flatui-theme green-screen-theme pastelmac-theme graphql-mode yaml-mode swagger-to-org slime avy markdown-preview-mode markdown-mode magit rjsx-mode js-comint js3-mode js2-mode)))
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(projectile-mode t nil (projectile))
 '(safe-local-variable-values (quote ((hl-sexp-mode) (rainbow-mode . t))))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
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
 '(vc-annotate-very-old-color nil)
 '(which-function-mode t)
 '(yas-global-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Source Code Pro"))))
 '(magit-diff-added ((t (:foreground "#ddffdd"))))
 '(magit-diff-added-highlight ((t (:background "#cceecc"))))
 '(magit-diff-context-highlight ((t (:background "grey96"))))
 '(magit-diff-hunk-heading ((t (:background "grey70" :foreground "grey25"))))
 '(magit-diff-hunk-heading-highlight ((t (:weight semi-bold))))
 '(magit-diff-removed ((t (:foreground "#ffdddd"))))
 '(magit-diff-removed-highlight ((t (:background "#eecccc"))))
 '(magit-section-highlight ((t (:box (:line-width 2 :color "grey75" :style released-button)))))
 '(mode-line ((t (:background "#335EA8" :foreground "#85CEEB" :box (:line-width 1 :color "#1A2F54") :weight semi-light))))
 '(mode-line-buffer-id ((t (:foreground "white" :weight normal))))
 '(org-mode-line-clock ((t (:inherit mode-line)))))
