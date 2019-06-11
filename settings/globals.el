;; File Hierarchies
(defvar home-dir
  (expand-file-name "Documents" "~"))
(defvar work-dir
  (expand-file-name "adhoc" home-dir))
(defvar personal-dir
  (expand-file-name "personaldev" home-dir))

;; Environment
(setenv "PATH"
        (concat "/Users/luke/.cargo/bin:"
                "/usr/local/bin:"
                "/usr/bin:"
                (getenv "PATH")))

(setq exec-path (append exec-path '("/Users/luke/.cargo/bin")))

(provide 'luke-globals)
