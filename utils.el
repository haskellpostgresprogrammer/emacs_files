(defun nil-string (x) (if (stringp x) x ""))

(defun action-forward-line () (interactive)
  (progn 
    (delete-trailing-whitespace)
    (next-line)))

(defmacro with-delete-other-windows (&rest forms) 
  `(progn ,@forms (delete-other-windows)))

(defun symbol-concat (&rest symbols) 
  (make-symbol 
   (apply 'concat (mapcar 'symbol-name symbols))))

;; (defun copy-directory-recursive (src dst display)
;;   (call-process "cp" nil display nil "-r" src dst))
(defun copy-directory-recursive (src dst display)
  (shell-command (concat "cp -r " src " " dst) display))
(defun copy-directory-files (src dst display)
  (shell-command (concat "cp " src "* " dst) display))

(defun camel-case (x) 
  (replace-regexp-in-string " " "" (capitalize 
				    (replace-regexp-in-string "_" " " x))))

(defun remove-directory-recursive (directory)
  (shell-command (concat "rm -r " directory)))

(defun quoted (x) (concat "\"" x "\""))
(defun bracketed (x) (concat "[" x "]"))
(defun parenthesized (x) (concat "(" x ")"))
(defun braced (x) (concat "{" x "}"))
(defun concat-sep (l sep) 
  (reduce (lambda (x y) (concat x sep y)) l))
(defun comma-sep (l) (concat-sep l ","))
(defun space-sep (l) (concat-sep l " "))
(defun func-apply (f args) 
  (concat f (parenthesized (comma-sep args))))
(defun func-apply-statement (f args) 
  (concat (func-apply f args) ";"))
(defmacro map-apply (f a) 
  `(mapcar (lambda (x) (apply #',f x)) ,a))

(defun remove-backups () (interactive)
  (mapcar #'remove-backup-files
	  (mapcar (lambda (x) (concat "/home/umar/" x))
		  '("emacsfiles" 
		    "abclfiles"
		    "lispfiles"
		    "mysqlfiles"
		    "ocamlfiles"
		    "ozfiles"
		    "pharenfiles"
		    "postgresfiles"
		    "prologfiles"
		    "public_html"))))


(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist 
	     '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist 
	     '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist 
	     '("\\.md\\'" . markdown-mode))
