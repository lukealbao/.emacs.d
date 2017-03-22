;; File Hierarchies
(defvar home-dir
  (expand-file-name "Documents" "~"))
(defvar work-dir
  (expand-file-name "fpdev" home-dir))
(defvar personal-dir
  (expand-file-name "personaldev" home-dir))

;; Environment
(setenv "PATH"
        (concat "/usr/local/bin:"
                "/usr/bin:"
                (getenv "PATH")))

(provide 'luke-globals)
