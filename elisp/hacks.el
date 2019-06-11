(defun de-json ()
  "Quick hack to turn JSON object into a POJO. Set region around an
object, set point at minimum, and then run this function."
  (interactive)
  (save-excursion
    (while (re-search-forward "\"" nil t)
      (replace-match "'"))
    (while (re-search-backward "'\\([[:alpha:]_]+\\)':" nil t)
      (replace-match "\\1:"))))

(defun b64d ()
  "Decode region from base-64 and add to clipboard"
  (let ((s (buffer-substring (region-beginning) (region-end))))
    (kill-new (base64-decode-string s) t)))

(defun b64e ()
  "Decode region from base-64 and add to clipboard"
  (let ((s (buffer-substring (region-beginning) (region-end))))
    (kill-new (base64-encode-string s) t)))

(provide 'hacks)
