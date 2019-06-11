;; Attempting to follow tutorial @ https://www.emacswiki.org/emacs/ModeTutorial
;; 7/7/17

;; Allow the user to run their own code when your mode is run. 
(defvar wpdl-mode-hook nil)

;; All modes need a keymap, I think. Here you mutate some keymap
;; object. If you won't have a lot of key bindings, try using make-sparse-keymap
;; instead of make-keymap.
(defvar wpdl-mode-map
  (let ((map (make-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for WPDL major mode")

;; ###autoload
;; Tell Emacs to open all *.wpd files as wpdl-mode. (We still haven't created
;; wpdl-mode yet.
(add-to-list 'auto-mode-alist '("\\.wpd\\'" . wpdl-mode))

;; A set of keywords that can be used for highlighting. Neat! you should use
;; regexp-opt to define the keyword lists:
;; (regexp-opt '("var" "foo" "bar")) will give you an optimized regexp string.
;;
;; Note that the regexp is wrapped in "<>". This ensures that the exp only
;; matches when surrounded by whitespace or EOF; i.e., full-word match only.
(defconst wpdl-font-lock-keywords-1
  (list
   '("\\<\\(A\\(CTIVITY\\|PPLICATION\\)\\|DATA\\|END_\\(A\\(CTIVITY\\|PPLICATION\\)\\|DATA\\|MODEL\\|PARTICIPANT\\|T\\(OOL_LIST\\|RANSITION\\)\\|WORKFLOW\\)\\|MODEL\\|PARTICIPANT\\|T\\(OOL_LIST\\|RANSITION\\)\\|WORKFLOW\\)\\>" . font-lock-builtin-face)
   '("\\('\\w*'\\)" . font-lock-variable-name-face))
  "Minimal highlighting expressions for WPDL mode")

;; These next two constant declarations create multiple levels of highlighting.
;; They build off the upper level, giving a single keyword variable that matches
;; everything at multiple levels
(defconst wpdl-font-lock-keywords-2
  (append wpdl-font-lock-keywords-1
		  (list
		   '("\\<\\(AUTHOR\\|C\\(ONDITION\\|REATED\\)\\|DE\\(FAULT_VALUE\\|SCRIPTION\\)\\|EXTENDED_ATTRIBUTE\\|FROM\\|I\\(MPLEMENTATION\\|N_PARAMETERS\\)\\|JOIN\\|NAME\\|O\\(THERWISE\\|UT_PARAMETERS\\)\\|PERFORMER\\|ROUTE\\|S\\(PLIT\\|TATUS\\)\\|T\\(O\\(OLNAME\\)?\\|YPE\\)\\|VENDOR\\|WPDL_VERSION\\)\\>" . font-lock-keyword-face)
		   '("\\<\\(TRUE\\|FALSE\\)\\>" . font-lock-constant-face)))
  "Additional Keywords to highlight in WPDL mode")

(defconst wpdl-font-lock-keywords-3
  (append wpdl-font-lock-keywords-2
		  (list
		   '("\\<\\(A\\(ND\\|PPLICATIONS\\)\\|BOOLEAN\\|HUMAN\\|INTEGER\\|NO\\|OR\\(GANISATIONAL_UNIT\\)?\\|R\\(EFERENCE\\|OLE\\)\\|S\\(TRING\\|YNCHR\\)\\|UNDER_REVISION\\|WORKFLOW\\|XOR\\)\\>" . font-lock-constant-face)))
  "Balls-out highlighting in WPDL mode")

;; We'll tell our mode to use the most verbose highlighting by referencing
;; it with our global keywords variable.
(defvar wpdl-font-lock-keywords wpdl-font-lock-keywords-3
  "Default highlighting expressions for WPDL mode")
