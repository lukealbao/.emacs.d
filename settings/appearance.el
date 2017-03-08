;;;
;;; Here be things for easy eyeing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Default visual stuff
(setq inhibit-splash-screen t)

;; Specific looks
(add-hook 'org-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook
          (lambda () (set-fill-column 80)))


;; Frame sizes
(setq initial-frame-alist
      '(
        (width . 143) ; character
        (height . 54) ; lines
        ))

;; default/sebsequent window
(setq default-frame-alist
      '(
        (width . 143) ; character
        (height . 52) ; lines
        ))

(provide 'appearance)
