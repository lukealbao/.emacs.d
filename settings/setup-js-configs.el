(require 'flycheck-flow)
(add-hook 'javascript-mode-hook 'flycheck-mode)
(load-file "~/.emacs.d/flow-for-emacs/flow.el")

;; js2-refactor does not work in a buffer that has Javascript
;; parse errors. To tell js2-mode to treat hashbangs as comments,
;; which prevents them from causing parse errors:
(setq js2-skip-preprocessor-directives t)

(setq js2-include-node-externs t)

(provide 'setup-js-configs)
