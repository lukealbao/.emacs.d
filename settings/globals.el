;; File Hierarchies
(defvar home-dir
  (expand-file-name "Documents" "~"))
(defvar work-dir
  (expand-file-name "fpdev" home-dir))
(defvar personal-dir
  (expand-file-name "personaldev" home-dir))

(provide 'luke-globals)
