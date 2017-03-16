(defun de-json ()
  "Quick hack to turn JSON object into a POJO. Set region around an
object, set point at minimum, and then run this function."
  (interactive)
  (save-excursion
    (while (re-search-forward "\"" nil t)
      (replace-match "'"))
    (while (re-search-backward "'\\([[:word:]]+\\)':" nil t)
      (replace-match "\\1:"))))

(provide 'hacks)
