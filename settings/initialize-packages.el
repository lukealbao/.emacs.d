(defun initialize-packages (packages)
  "Accepts a list of package names and installs them programmatically.

Use it to initialize an installation of Emacs with all your stuff.
PACKAGES can be a symbol, list, or string, any of which should
be able to resolve to a list of packages.

This list should be taken from the package-activated-list variable"

  (interactive "sPackage list name: ")

  ;; activate all the packages (in particular autoloads)
  (package-initialize)

  ;; fetch the list of packages available 
  (unless package-archive-contents
    (package-refresh-contents))

  ;; install the missing packages
  (let ((package-list
         (cond ((listp packages) packages)
               ((symbolp packages) (symbol-value packages))
               ((stringp packages) (symbol-value (intern packages))))))
    (dolist (package package-list)
      (unless (package-installed-p package)
        (package-install package)))))

(provide 'initialize-packages)
