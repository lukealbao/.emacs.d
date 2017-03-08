
;Setup bash-completion.el to load only when needed
;; (autoload 'bash-completion-dynamic-complete \"bash-completion\"
;;   \"BASH completion hook\")
;; (add-hook 'shell-dynamic-complete-functions
;;           'bash-completion-dynamic-complete)
;; (add-hook 'shell-command-complete-functions
;;           'bash-completion-dynamic-complete)

(require 'bash-completion)
(bash-completion-setup)

;; ANSI color output for comint shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;; ANSI color output for eshell
(add-hook 'eshell-preoutput-filter-functions
          'ansi-color-filter-apply)


(provide 'setup-bash)
