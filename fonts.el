;; (set-default-font "-adobe-helvetica-bold-r-normal--25-180-100-100-p-138-iso8859-1")

(set-default-font 
 "-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso10646-1") 
;; (invert-face 'default nil)

;; (set-default-font "-adobe-new century schoolbook-medium-r-normal--34-240-100-100-p-181-iso10646-1")

;; (set-default-font "-adobe-new century schoolbook-medium-i-normal--34-240-100-100-p-181-iso10646-1")


;; (set-default-font "-adobe-new century schoolbook-bold-i-normal--34-240-100-100-p-181-iso10646-1")


(defun switchfont-smaller ()
  (interactive)
  (set-default-font 
   "-adobe-helvetica-bold-r-normal--25-180-100-100-p-138-iso10646-1"))

(defun switchfont-larger ()
  (interactive)
  (set-default-font 
   "-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso10646-1"))

(defun switchfont-monospace-large ()
  (interactive)
  (set-default-font 
   "-adobe-courier-bold-r-normal--34-240-100-100-m-200-iso10646-1"
))
(defun switchfont-monospace-small ()
  (interactive)
  (set-default-font 
   "-adobe-courier-bold-r-normal--25-180-100-100-m-150-iso10646-1"))

;; (defun switchcolors-skyblue ()
;;   (interactive)
;;   (progn 
;;     (set-foreground-color "black")
;;     (set-background-color "SkyBlue")))

;; (defun switchcolors-black ()
;;   (interactive)
;;   (progn 
;;     (set-foreground-color "white")
;;     (set-background-color "black")))

;; (defun switchcolors-white ()
;;   (interactive)
;;   (progn 
;;     (set-foreground-color "black")
;;     (set-background-color "white")))

;; (setq umar-colors 'black)

;; (defun switch-colors () (interactive) 
;;   (if (eq umar-colors 'black)
;;       (progn (switchcolors-white) (setq umar-colors 'white))
;;     (progn (switchcolors-black) (setq umar-colors 'black))))

(color-theme-select)
;; (color-theme-goldenrod)
(color-theme-sitaramv-nt)
