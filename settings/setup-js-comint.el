;; js-comint mode provides a JS REPL

(require 'js-comint)

;; Weird prompt code bug fix
(setenv "NODE_NO_READLINE" "1")
(setq inferior-js-program-command "/usr/local/bin/node --interactive")

;; Key bindings
(add-hook 'js-mode-hook '(lambda () 
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
			    (local-set-key "\C-cb" 'js-send-buffer)
			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
			    (local-set-key "\C-cl" 'js-load-file-and-go)
			    ))

;; Prettify
(setq inferior-js-mode-hook
      (lambda ()
	;; Pretty colors
	(ansi-for-comint-mode-on)))

(provide 'setup-js-comint)


