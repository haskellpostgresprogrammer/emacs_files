(setq w3m-use-tab nil)
(setq w3m-use-header-line nil)
(w3m)

(defun w3m-fullscreen () (interactive)
  (with-delete-other-windows (w3m) (cd "/home/umar/")))
(defun w3m-search-fullscreen (query)
  (interactive "M query:")
  (with-delete-other-windows 
   (w3m-goto-url
    (concat "http://www.google.com/search?q=" query))
   (cd "/home/umar/")))

(setq browse-url-browser-function 'w3m-browse-url)
(setq browse-url-generic-program "google-chrome")

;; (defun gotothisurl () (interactive) 
;;   (progn 
;;     (beginning-of-line) 
;;     (kill-line)
;;     (yank)
;;     (w3m-goto-url (car kill-ring-yank-pointer))
;;     (delete-other-windows)))

;; (defun w3mfullwindow () (interactive)
;;   (progn (w3m) (delete-other-windows)))

;; (defun w3m-search-new-tab (query)
;;   (interactive "M query:")
;;   (with-delete-other-windows
;;    (w3m-goto-url-new-session 
;;     (concat "http://www.google.com/search?q=" query))))
