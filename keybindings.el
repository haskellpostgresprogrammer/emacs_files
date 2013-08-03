(global-set-key (kbd "<M-kp-0>") 'downcase-word)
;; (global-set-key (kbd "<M-kp-1>") 'slime-repl-buffer-x)
;; (global-set-key (kbd "<M-kp-2>") 'umar-org-buffer)
(global-set-key (kbd "<M-kp-3>") 'scratch-el-buffer)
;; (global-set-key (kbd "<M-kp-4>") 'scratch-lisp-buffer)
;; (global-set-key (kbd "<M-kp-5>") 'utils-lisp-buffer)
;; (global-set-key (kbd "<M-kp-6>") 'set-my-current-buffer)
(global-set-key (kbd "<M-kp-5>") 'set-current-ocaml-buffer)
(global-set-key (kbd "<M-kp-7>") 'utils-el-buffer)
(global-set-key (kbd "<M-kp-8>") 'keybindings-el-buffer)
(global-set-key (kbd "<M-kp-9>") 'settings-el-buffer)
(global-set-key (kbd "<M-kp-divide>") 'comment-region)
(global-set-key (kbd "<M-kp-multiply>") 'uncomment-region)
(global-set-key (kbd "<M-kp-substract>") nil)
(global-set-key (kbd "<M-kp-add>") nil)
(global-set-key (kbd "<M-kp-decimal>") nil)

(defun action-forward-line () (interactive)
  (progn 
    (indent-for-tab-command)
    (forward-line)))

(global-set-key (kbd "<C-kp-0>") 'action-forward-line)
(global-set-key (kbd "<C-kp-1>") nil)
(global-set-key (kbd "<C-kp-2>") nil)
(global-set-key (kbd "<C-kp-3>") nil)
(global-set-key (kbd "<C-kp-4>") nil)
(global-set-key (kbd "<C-kp-5>") nil)
(global-set-key (kbd "<C-kp-6>") nil)
(global-set-key (kbd "<C-kp-7>") 'mplayer-pause)
(global-set-key (kbd "<C-kp-8>") 'mplayer-seek-backward)
(global-set-key (kbd "<C-kp-9>") 'mplayer-seek-forward)
(global-set-key (kbd "<C-kp-divide>") 'play)
(global-set-key (kbd "<C-kp-multiply>") 'playquit)
(global-set-key (kbd "<C-kp-subtract>") 'mplayer-next)
(global-set-key (kbd "<C-kp-add>") 'mplayer-prev)
(global-set-key (kbd "<C-kp-decimal>") nil)


(global-set-key (kbd "<s-kp-0>") nil)
(global-set-key (kbd "<s-kp-1>") nil)
(global-set-key (kbd "<s-kp-2>") nil)
(global-set-key (kbd "<s-kp-3>") nil)
(global-set-key (kbd "<s-kp-4>") nil)
(global-set-key (kbd "<s-kp-5>") nil)
(global-set-key (kbd "<s-kp-6>") nil)
(global-set-key (kbd "<s-kp-7>") 'select-w3m-site)
(global-set-key (kbd "<s-kp-8>") 'select-chrome-site)
(global-set-key (kbd "<s-kp-9>") nil)
(global-set-key (kbd "<s-kp-divide>") nil)
(global-set-key (kbd "<s-kp-multiply>") nil)
(global-set-key (kbd "<s-kp-substract>") nil)
(global-set-key (kbd "<s-kp-add>") nil)
(global-set-key (kbd "<s-kp-decimal>") nil)

(global-set-key (kbd "M-w") 'insert-parentheses)
(global-set-key (kbd "M-q") 'delete-other-windows)
(global-set-key (kbd "M-a") 'other-window)

(global-set-key (kbd "M-z") 'sql1)
(global-set-key (kbd "M-c") 'sql2)
;; (global-set-key (kbd "M-x") 'execute-extended-command)
(global-set-key (kbd "M-s") 'capitalize-word)

(global-set-key (kbd "<M-f1>") 'last-buffer)
(global-set-key (kbd "<M-f2>") 'chrome-link-open)
;; (global-set-key (kbd "<M-f3>") 'opera-this-open)
(global-set-key (kbd "<M-f3>") 'conkeror-this-open)

(global-set-key (kbd "<f8>") 'mplayer-pause)
(global-set-key (kbd "<f9>") 'mplayer-prev)
(global-set-key (kbd "<f10>") 'mplayer-next)
(global-set-key (kbd "<f11>") 'mplayer-seek-backward)
(global-set-key (kbd "<f12>") 'mplayer-seek-forward)

(global-set-key (kbd "C-`") 'yank)
(global-set-key (kbd "C-1") 'copy-region-as-kill)
(global-set-key (kbd "C-2") 'kill-region)

(global-set-key (kbd "M-`") 'w3m-search-fullscreen)
(global-set-key (kbd "M-1") 'w3m-fullscreen)
(global-set-key (kbd "M-2") 'shell)
;; (global-set-key (kbd "M-3") 'switch-to-my-current-buffer)
;; (global-set-key (kbd "M-3") 'sql-buffer)
(global-set-key (kbd "M-3") 'shell2)
;; (global-set-key (kbd "M-3") 'othercomputershell-buffer)
(global-set-key (kbd "M-4") 'buffer-menu)

(global-set-key (kbd "s-`") nil)

(defun shell2 () (interactive) (switch-to-buffer "shell2"))

(defmacro make-switch-to-buffer (name buffer)
  `(defun ,name () (interactive)
     (with-delete-other-windows (switch-to-buffer ,buffer))))

(make-switch-to-buffer last-buffer nil)
(make-switch-to-buffer scratch-buffer "*scratch*")
(make-switch-to-buffer shell-buffer "*shell*")
(make-switch-to-buffer othercomputershell-buffer 
		       "othercomputershell")
;; (make-switch-to-buffer slime-repl-buffer-x "*slime-repl nil*")
(make-switch-to-buffer sql1 "sql1")
(make-switch-to-buffer sql2 "sql2")

(defmacro make-switch-to-buffer-find-file
  (name buffer file)
  `(progn
     (find-file ,file)
     (make-switch-to-buffer ,name ,buffer)))

(make-switch-to-buffer-find-file
 utils-el-buffer "utils.el" "/home/umar/emacsfiles/utils.el")
(make-switch-to-buffer-find-file
 scratch-el-buffer "scratch.el"
 "/home/umar/emacsfiles/scratch.el")
(make-switch-to-buffer-find-file
 keybindings-el-buffer "keybindings.el"
 "/home/umar/emacsfiles/keybindings.el")
(make-switch-to-buffer-find-file
 settings-el-buffer "settings.el"
 "/home/umar/emacsfiles/settings.el")


;; (make-switch-to-buffer-find-file
;;  utils-lisp-buffer "utils.lisp" "/home/umar/lispfiles/utils.lisp")
;; (make-switch-to-buffer-find-file
;;  scratch-lisp-buffer "scratch.lisp"
;;  "/home/umar/lispfiles/scratch.lisp")
;; (make-switch-to-buffer-find-file
;;  umar-org-buffer "umar.org"
;;  "/home/umar/umarorg/umar.org")

(setq my-current-buffer)
(defun set-my-current-buffer () (interactive)
  (setq my-current-buffer (current-buffer)))
(defun switch-to-my-current-buffer () (interactive)
  (with-delete-other-windows
   (switch-to-buffer (symbol-value 'my-current-buffer))))

;; (global-set-key (kbd "s-`") 'umarurls)
;; (global-set-key (kbd "s-1") 'gotothisurl)
;; (global-set-key (kbd "s-2") 'amaniaurl)
;; (global-set-key (kbd "s-3") 'currentworking)
;; (global-set-key (kbd "s-4") 'my-speedbar-no-separate-frame)

;; (keyboard-translate ?\[ ?\()
;; (keyboard-translate ?\] ?\))
;; (keyboard-translate ?\( ?\[)
;; (keyboard-translate ?\) ?\])

;; mod-shift-return Launch terminal
;; mod-p Launch dmenu
;; mod-shift-p Launch gmrun
;; mod-shift-c Close the focused window
;; mod-space Rotate through the available layout algorithms
;; mod-shift-space Reset the layouts on the current workspace to default
;; mod-n Resize viewed windows to the correct size
;; mod-tab Move focus to the next window
;; mod-shift-tab Move focus to the previous window
;; mod-j Move focus to the next window
;; mod-k Move focus to the previous window
;; mod-m Move focus to the master window
;; mod-return Swap the focused window and the master window
;; mod-shift-j Swap the focused window with the next window
;; mod-shift-k Swap the focused window with the previous window
;; mod-h Shrink the master area
;; mod-l Expand the master area
;; mod-t Push window back into tiling
;; mod-comma Increment the number of windows in the master area
;; mod-period Deincrement the number of windows in the master area
;; mod-b Toggle the status bar gap
;; mod-shift-q Quit xmonad
;; mod-q Restart xmonad
;; mod-[1..9] Switch to workspace N
;; mod-shift-[1..9] Move client to workspace N
;; mod-{w,e,r} Switch to physical/Xinerama screens 1, 2, or 3
;; mod-shift-{w,e,r} Move client to screen 1, 2, or 3
;; mod-button1 Set the window to floating mode and move by dragging
;; mod-button2 Raise the window to the top of the stack
;; mod-button3 Set the window to floating mode and resize by dragging

(shell)
(cd "/home/umar/")

(defun set-shell-shell () (interactive) 
  (global-set-key (kbd "M-2") 'shell))
;; (defun set-shell-sql () (interactive) 
;;   (global-set-key (kbd "M-2") 'sql-buffer))

;; (make-switch-to-buffer current-ocaml-buffer 
;; 		       (symbol-value 'current-ocaml-buffer))
;; (defmacro make-switch-to-buffer (name buffer)
;;   `(defun ,name () (interactive)
;;      (with-delete-other-windows (switch-to-buffer ,buffer))))
;; (defmacro make-switch-to-buffer-find-file
;;   (name buffer file)
;;   `(progn
;;      (find-file ,file)
;;      (make-switch-to-buffer ,name ,buffer)))

(defun current-ocaml-buffer () (interactive)
  (progn
    (with-delete-other-windows (switch-to-buffer 
				(symbol-value 'current-ocaml-buffer)))
    (recenter)))

(defun set-current-ocaml-buffer () (interactive)
  (setq current-ocaml-buffer (buffer-name)))
