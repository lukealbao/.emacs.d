;;; Original inspiraticon goes to http://stackoverflow.com/questions/5558876/a-custom-comment-box-on-emacs
;;; Comments by me for learning a lil elisp

(defun box-comment-region (beg end)
  "Place a custom box around a comment block"
  (interactive "r")

  ;; We only want to operate on the current region, which passes beg and end
  (save-restriction
    (narrow-to-region beg end)
    (comment-region beg end -1)         ; first, uncomment

    ;; Start by creating a rectangle and inserting the left borders
    (string-rectangle (point-min)
                      (progn (goto-char (point-max)) (line-beginning-position))
                      "  | ")

    ;; Looks like you gotta move point around. 
    (goto-char (point-min))

    ;; Here we loop through each line to find the longest...
    (let ((max-len 0))
      (while (< (point) (point-max))
        (end-of-line)
        (setq max-len (max max-len (current-column)))
        (forward-line 1))
      ;; ... And then pad all the rest to match.
      (previous-line)
      (end-of-line)
      (insert (make-string (- max-len (current-column)) ?\ ))
      (goto-char (point-min))
      (end-of-line)
      (insert (make-string (- max-len (current-column)) ?\ ))
      (end-of-line)

      ;; Now with all lines the same length, we can fill right borders in a rect
      (let ((top (point)))
        (goto-char (point-max)) 
        (previous-line)
        (end-of-line)
        (string-rectangle top (point) " | "))

      ;; Create a top and bottom border, then (insert) them at top and bottom.
      (let ((top-line (concat " /*" (make-string (- max-len 2) ?=) "*\\ \n"))
            (bottom-line (concat " \\*" (make-string (- max-len 2) ?=) "*/ \n")))
        (goto-char (point-min))
        (insert top-line)
        (goto-char (point-max))
        (insert bottom-line)))))


(defun box-uncomment-region (beg end)
  "Remove a box comment from a region"
  "Only works if region begins at beginning of first line
   and ends at beggining of line after bottom border."
  (interactive "r")
  (save-restriction
  (narrow-to-region beg end)

    ;; Delete the left border
    (goto-char (point-min))
    (push-mark)
    (goto-char (point-max))
    (previous-line)
    (line-beginning-position)
    (forward-char 4)
    (delete-rectangle (mark) (point))

    ;; Delete the right border
    (goto-char (line-end-position))
    (push-mark)
    (goto-char (point-min))
    (goto-char (line-end-position))
    (backward-char 3)
    (delete-rectangle (point) (mark))

    ;; Delete the top and bottom borders
    (goto-char (line-beginning-position))
    (kill-line)
    (goto-char(point-max))
    (previous-line)
    (goto-char (line-beginning-position))
    (kill-line)
    ))

(provide 'comment-box)
