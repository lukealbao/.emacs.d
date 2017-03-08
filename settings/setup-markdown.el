;;; Custom setup for markdown mode

(add-hook 'markdown-mode-hook 'turn-on-auto-fill)

;; Keystrokes
(add-hook 'markdown-mode-hook '(lambda()
                                 (local-set-key "\C-cf" 'fill-region)
                                 ))

(provide 'setup-markdown)
