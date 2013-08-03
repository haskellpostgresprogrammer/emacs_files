(defun chrome-link-open () (interactive)
  (start-process "w3m-link-to-chrome" 
		 "w3m-link-to-chrome" 
		 "google-chrome" (w3m-anchor)))
(defun chrome-this-open () (interactive)
  (progn 
    (w3m-print-current-url)
    (start-process  "w3m-to-chrome"
		    "w3m-to-chrome" 
		    "google-chrome" (car kill-ring-yank-pointer))))
(defun opera-this-open () (interactive)
  (progn 
    (w3m-print-current-url)
    (start-process  "w3m-to-opera"
		    nil 
		    "opera" "-newpage" (car kill-ring-yank-pointer))))

;; (defun youtubesearch (query)
;;   (interactive "M query:")
;;   (start-process (concat "youtubesearch" query) nil 
;; 		 "google-chrome"
;; 		 (concat 
;; 		  "http://www.youtube.com/results?search_query=" 
;; 		  query "&aq=f")))
