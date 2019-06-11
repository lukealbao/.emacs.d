;;; Custom setup for org

;; Agenda
(setf org-agenda-files
      (mapcar 'eval
              '((expand-file-name "personal.org" personal-dir)
                (expand-file-name "home.org" personal-dir)
                (expand-file-name "org/todo.org" work-dir))))
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))

;; Multi-state todos
(setq org-todo-keywords
      '((sequence "TODO" "FOLLOWUP" "|" "DONE" "WAITING")))

;; Appearance
(add-hook 'org-mode-hook 'turn-on-auto-fill)
;; I think this is too conflicting: (require 'org-beautify-theme)

(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

;; Asana
;; (add-hook 'org-mode-hook 'asana-mode)
;; (setq asana-keymap-prefix "C-c C-a")

;; Latex
(setq latex-bin-dir "/Library/TeX/texbin")
(setq org-latex-create-formula-image-program
      'dvipng)
(setenv "PATH" (concat (getenv "PATH") ":" latex-bin-dir))
(add-to-list 'exec-path latex-bin-dir)

;; Babel
(require 'ob-sql)
(require 'ob-js)
(setq exec-path (append exec-path '("/usr/local/bin"))) ;; guile
(setq geiser-default-implementation 'guile)
(setq org-confirm-babel-evaluate nil)
(setq org-src-fontify-natively t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sql . t)
   (C . t)
   (emacs-lisp .t)
   ;;(sh . t)
   (scheme . t)
   (python . t)
   (ruby . t)
   (js . t)))
                                     

;; Custom functions
(defun visit-link-in-buffer ()
  "Force open-link to visit in an Emacs buffer in current frame."
  (interactive)
  (org-open-at-point (universal-argument)))

(defun gh-link ()
  "Open a github issue at point."
  (interactive)
  (let ((start (point)))
    (set-mark (- (re-search-forward "[a-z]") 1))
    (re-search-forward "#")
    (re-search-forward "[0-9]+")
    (copy-region-as-kill (point) (mark))

    (with-temp-buffer
      (yank)
      (goto-char (point-min))
      (insert "https://github.com/firstperformancecorporation/")
      (goto-char (point-min))
      (replace-regexp "#" "/issues/")
      (org-open-link-from-string (buffer-substring (point-min) (point-max))))
    (goto-char start)))

;; Capture Templates
(setq org-default-notes-file (expand-file-name "org/todo.org" work-dir))
(setq org-capture-templates
 '(
   ("t" "Task"
    entry (file+headline (expand-file-name "org/todo.org" work-dir) "Inbox")
        "** TODO %?\n  %i\n  %a")
   ("c" "Clock"
    entry
    (file+headline (expand-file-name "org/todo.org" work-dir) "Today")
    "** %(format-time-string \"%I:%M%p\"): %?\n  %i\n")
   ))

;; Keystrokes
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cv" 'visit-link-in-buffer)
(global-set-key "\C-cgh" 'gh-link)

(provide 'setup-org)
