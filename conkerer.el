(defun umarhome () (concat "/home/umar/"))
;; (defun downloadedlibraries () 
;;   (concat (umarhome) "downloadedlibraries/"))
;; (defun xulrunner-file ()
;;   (concat (downloadedlibraries) "xulrunner/xulrunner/xulrunner"))
;; (defun conkeror-ini () 
;;   (concat (downloadedlibraries) "conkeror/application.ini"))
;; (defun conkeror-start () (interactive)
;;   (start-process
;;    "conkeror" "conkeror"
;;    (xulrunner-file) (conkeror-ini) "-daemon"))
;; (defun conkeror-start () (interactive)
;;   (start-process
;;    "conkeror" "conkeror"
;;    "conkeror"))
;; (defun conkeror-stop () (interactive)
;;   (kill-process "conkeror"))

(defun conkeror-open (link)
  (start-process
   "conkeror" "conkeror"
   "conkeror" link))

;; (defun conkeror-start () (interactive)
;;   (start-process
;;    "conkeror" "conkeror"
;;    "google-chrome"))

;; (defun conkeror-stop () (interactive)
;;   (kill-process "conkeror"))

;; (defun conkeror-open (link)
;;   (start-process
;;    "conkeror" "conkeror"
;;    "google-chrome" link))

(defun conkeror-open-link (link) (interactive "s url: ")
  (conkeror-open link))

;; (defun conkeror-eval (e)
;;   (start-process
;;    "conkeroreval" "conkeroreval"
;;    (xulrunner-file) (conkeror-ini) "-e" e))
;; (defun conkeror-command (c)
;;   (start-process
;;    "conkeroreval" "conkeroreval"
;;    (xulrunner-file) (conkeror-ini) "-f" c))

;; (defun conkeror-css-important (selector attribute value) 
;;   (concat selector " "
;; 	  (braced (concat attribute ":" value " ! important"))))
;; (defun conkeror-register-stylesheet (x) 
;;   (func-apply-statement "register_user_stylesheet" x))
;; (defun conkeror-css-data-uri (css urlprefix) 
;;   (conkeror-register-stylesheet
;;    (list 
;;     (func-apply "make_css_data_uri" 
;; 		(list (bracketed (comma-sep (mapcar #'quoted 
;; 						    (map-apply 
;; 						     conkeror-css-important css)))) 
;; 		      (concat "$url_prefixes=" 
;; 			      (quoted (concat "http://" urlprefix)))))))
;;   )
;; (defun conkeror-eval-css-list-site (l u) 
;;   (conkeror-eval (conkeror-css-data-uri l u)))
;; (defun conkeror-eval-css-site (s a v site) 
;;   (conkeror-eval-css-list-site (list (list s a v)) site))
;; (defun conkeror-eval-css (s a v)
;;   (conkeror-eval-css-site s a v ""))

;; (conkeror-eval-css-site "body *" "display" "block" 
;; 			"wikipedia.org")
  
;; (defun conkeror-css-fit-width (site) 
;;   (progn
;;     (conkeror-eval-css-site "pre" "overflow" "visible" site)
;;     (sleep-for 5)
;;     (conkeror-eval-css-site "body *" "width" "100%" site)
;;     (sleep-for 5)
;;     (conkeror-eval-css-site "body *" "display" "block" site)))
;; (defun conkeror-css-hide-images (site) 
;;   (conkeror-eval-css-site "img" "display" "none" site))

(defun conkeror-help () (interactive)
  (conkeror-open (concat (downloadedlibraries) 
			 "conkeror/help/help.html")))
(defun conkeror-tutorial () (interactive)
  (conkeror-open (concat (downloadedlibraries) 
			 "conkeror/help/tutorial.html")))

(defun conkeror-this-open () (interactive)
  (progn 
    (w3m-print-current-url)
    (conkeror-open (car kill-ring-yank-pointer))))
