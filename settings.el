(display-time)
(setq inhibit-startup-message 1)
(auto-compression-mode 1)
(transient-mark-mode 1)
(tool-bar-mode nil)
(menu-bar-mode nil)
(mouse-avoidance-mode 'banish)
(column-number-mode 1)
(setq-default fill-column 50)
(setq scroll-step 1)
(setq visible-bell t)
(show-paren-mode 1)
;; (setq show-paren-delay nil)
(set-cursor-color "red")
(blink-cursor-mode -1)
(setq show-paren-style 'expression) ; highlight entire expr
;; (setq show-paren-style 'parenthesis) ; highlight just parens
(set-face-background 'show-paren-match-face "lightorange")
;; 		     (face-background 'default))
(set-face-foreground 'show-paren-match-face "red")

;; (set-face-attribute 'show-paren-match-face nil
;; 		    :weight 'extra-bold)

;; syntax highlight everywhere
(global-font-lock-mode t)
;; make all "yes or no" prompts show "y or n" instead
;; (fset 'yes-or-no-p 'y-or-n-p)
;; (fset  'y-or-n-p 'yes-or-no-p)
;; (highlight-current-line)
;; (highlight-current-line-set-fg-color "black")
;; (highlight-current-line-set-bg-color "lightblue")
(scroll-bar-mode nil)
;; (auto-fill-mode 1)
;; (require 'tramp)
;; (setq tramp-default-method "scp")

(defun different-colors ()
  (progn  
    (add-hook 
     'window-configuration-change-hook 
     (lambda () 
       (cond 
	((eq (symbol-value 'major-mode) 'w3m-mode) 
	 (color-theme-goldenrod))
	((eq (symbol-value 'major-mode) 'emacs-lisp-mode)
	 (color-theme-sitaramv-nt)
	 (set-cursor-color "red"))
	((eq (symbol-value 'major-mode) 'lisp-interaction-mode)
	 (color-theme-sitaramv-nt)
	 (set-cursor-color "blue"))
	((eq (symbol-value 'major-mode) 'lisp-mode)
	 (color-theme-sitaramv-nt)
	 (set-cursor-color "green"))
	((equal (symbol-value 'default-directory) 
		"/home/umar/emacsfiles/data/")
	 (color-theme-blue-sea))
	((eq (symbol-value 'major-mode) 'shell-mode)
	 (color-theme-euphoria)))))
    (add-hook 'buffer-menu-mode-hook 
	      (lambda () (color-theme-infodoc)))))

(defun euphoria-colors () 
  (progn
    (setq window-configuration-change-hook nil)
    (setq buffer-menu-mode-hook nil))
    (color-theme-euphoria)
;;     (set-face-foreground 'show-paren-match-face "red")
    (set-face-background 'show-paren-match-face "gray8")
    (set-cursor-color "red1"))
(progn
  (color-theme-euphoria)
;;   (set-face-foreground 'show-paren-match-face "red")
  (set-face-background 'show-paren-match-face "gray8")
  (set-cursor-color "red1"))

;; (start-process "otherdiskmount" "otherdiskmountbuffer"
;; 	       "mount" "-o" "umask=000" "/dev/sda1" "/otherdisk/")

(defun sudo-do (command)
  (progn 
    (shell)
    (comint-send-string (get-buffer-process "*shell*") 
			(concat "sudo " command "\n"))))
;; (defun mount-otherdisk () (interactive)
;;   (progn 
;;     (sudo-do "mount -o umask=000 /dev/sda1 /otherdisk/")))
;; (defun mount-otherdisk2 () (interactive)
;;   (progn 
;;     (sudo-do "mount -o umask=000 /dev/sda2 /otherdisk2/")))


(defun remove-backup-files (directory)
  (progn 
    (setq buffername (concat "removebackups" directory))
    (call-process "find" nil buffername
		  t directory)
    (switch-to-buffer buffername)
    (beginning-of-buffer)
    (keep-lines "~")
    (beginning-of-buffer)
    (mapcar (lambda (x) (delete-file x)) 
	    (remove-if (lambda (x) (equal "" x )) 
		       (split-string (buffer-string) "\n")))
    (kill-buffer buffername)))

;; (load "/home/umar/emacsfiles/fromothers/parenface.el")
;; (require 'parenface)
;; (set-face-foreground 'paren-face "blue")
;; (set-face-background 'default "gray3")

;; (defun amaniaurl () (interactive)
;;   (progn 
;;     (w3m-print-this-url)
;;     (start-process "othercomp" "othercomputermessage"
;; 		   "ssh" "othercomputer@192.168.1.12" 
;; 		   "export" "DISPLAY=:0" 
;; 		   "&&" "killall" "chrome" 
;; 		   "&&" "sleep" "3s" 
;; 		   "&&" "google-chrome" 
;; 		   (w3m-anchor) "&")))

;; (find-file "/home/umar/lispfiles/generate.lisp")

;; (defun generate-local-html () (interactive)
;;   (with-current-buffer "generate.lisp"
;;     (beginning-of-buffer)
;;     (search-forward "make-local-html")
;;     (slime-eval-defun)))

;; (defun generate-povray () (interactive)
;;   (with-current-buffer "generate.lisp"
;;     (beginning-of-buffer)
;;     (search-forward "povrayfile.pov")
;;     (slime-eval-defun)
;;     (beginning-of-buffer)
;;     (shell-command "povray /home/umar/povrayfile.pov")))

;; (find-file "/home/umar/emacsfiles/data/bookmarks")
;; (load "/home/umar/emacsfiles/browsing.el")

;; (load "/home/umar/emacsfiles/fromothers/package.el")
;; (load "/home/umar/emacsfiles/clojure.el")
;; Load and configure SLIME
;; (add-to-list 'load-path "/home/umar/clojure/slime/")
;; (require 'slime)
;; (eval-after-load 'slime '(setq slime-protocol-version 'ignore))
;; (add-to-list 'load-path "/home/umar/clojure/slime/contrib/")
;; ;; (slime-setup '(slime-repl))
;; (slime-setup '(slime-fancy slime-asdf))
;; ;; Load a major mode for editing Clojure code.
;; (add-to-list 'load-path "/home/umar/clojure/clojure-mode/")
;; (require 'clojure-mode)
;; (require 'clojure-test-mode) ;; requires slime
;;(color-theme-jsc-light2)

(color-theme-jsc-light2)
(color-theme-calm-forest)

;; (load-library "lush/lush.el")

(defun lateststats () (interactive)
  (shell-command "python /home/umar/pythonfiles/lateststats.py"
		 "lateststats"))

;; ;; clojure-mode
;; (add-to-list 'load-path "~/clojure-mode/")
;; (require 'clojure-mode)
;; ;; ;; slime

;; (add-to-list 'load-path "~/slime/")

;; (eval-after-load "slime"
;;   '(progn (slime-setup '(slime-repl))))
;; (require 'slime)
;; (slime-setup)

;; (setq inferior-lisp-program "/home/umar/bin/startabcl")
(setq inferior-lisp-program "sbcl")

;; (defun myclojurestart () (interactive)
;;   (progn
;;     (shell)
;;     (switch-to-buffer "*shell*")
;;     (comint-send-string "*shell*" "cd ~/clojurefiles/proj1/\n")
;; ;;     (rename-buffer "myclojure")
;; ;;     (comint-send-string "myclojure" 
;; ;; 			"~/clojurefiles/proj1/\n")
;;     (comint-send-string "myclojure" "lein repl\n")
;;     ))

;; (defun lispwindow () (interactive)
;;   (progn
;;     (delete-other-windows)
;;     (split-window)
;;     (other-window 1)
;; ;;     (switch-to-buffer "*inferior-lisp*")))
;; (if (locate-library "bmacs")
;;     (require 'bmacs))
;; (autoload 'bdb "bdb" "bdb mode" t)
;; (autoload 'bee-mode "bee-mode" "bee mode" t)
;; (setq auto-mode-alist
;;       (append '(("\\.scm$" . bee-mode)
;;                 ("\\.sch$" . bee-mode)
;;                 ("\\.scme$" . bee-mode)
;;                 ("\\.bgl$" . bee-mode)
;;                 ("\\.bee$" . bee-mode))
;;               auto-mode-alist))

(add-to-list 'load-path "/usr/local/go/misc/emacs/" t)
(require 'go-mode-load)

(defun vpythonstuff () (interactive)
  (shell-command 
   "python /home/umar/pythonfiles/vpythonstuff.py"
   "vpythonstuff"))

;; (setq make-backup-files nil)
;; (setq make-backup-files t)
(setq auto-save-default nil)

(setq x-select-enable-clipboard t)

;; (add-to-list 'load-path 
;; 	     "/home/umar/twittering-mode/")
;; (require 'twittering-mode)
;; ;; (setq twittering-use-master-password t)

(defun makeslideshow () (interactive)
  (progn
    (start-process 
   "makeslideshow" "makeslideshow"
   "dvd-slideshow" "-n" "currentslideshow" "-o" 
   "/home/umar/" "-f" 
   "/home/umar/currentslideshow"))
  (switch-to-buffer "makeslideshow"))
(defun playslideshow () (interactive)
  (start-process 
   "playslideshow" "playslideshow" 
   "mplayer" "-vo" "x11" "-fs" "-zoom" 
   "/home/umar/currentslideshow.vob"))

;; (defun x-message (seconds)
;;   (shell-command 
;;    (concat "xmessage -timeout " seconds)))


(add-to-list 'load-path "~/pov-mode-3.2")
(autoload 'pov-mode "pov-mode" "PoVray scene file mode" t)
(add-to-list 'auto-mode-alist '("\\.pov\\'" . pov-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . pov-mode))

(defun povrender () (interactive)
  (start-process-shell-command 
   "povrender" "povrender"
   "/home/umar/povrender.sh"))

(defun umarvideos () (interactive)
  (progn
    (start-process-shell-command
     "umarvideos" "umarvideos"
     "python /home/umar/pythonfiles/umarvideos.py")
    (switch-to-buffer "umarvideos")))

;; (defun mycommands (c) (interactive "s command: ")
;;   (progn 
;;     (shell-command 
;;      (concat "python "
;; 	     "/home/umar/pythonfiles/mycommands.py " 
;; 	     c) 
;;      "mycommands")
;; ;;     (switch-to-buffer "mycommands")
;;     ))

(setq backup-inhibited t)


(add-to-list 
 'load-path 
 "/usr/local/mercury-13.05.1/lib/mercury/elisp")
(autoload 'mdb 
  "gud" "Invoke the Mercury debugger" t)
