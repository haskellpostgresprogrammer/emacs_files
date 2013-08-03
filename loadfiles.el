(defun my-emacs (file)
  (load-file (concat "/home/umar/emacsfiles/" file)))

(my-emacs "utils.el")
(my-emacs "fonts.el")
(my-emacs "settings.el")
(my-emacs "w3m.el")
(my-emacs "chrome.el")
(my-emacs "calendar.el")
(my-emacs "orgmode.el")
(my-emacs "mplayer.el")
;; (my-emacs "mediaplaying.el")
;; (my-emacs "appmanagement.el")
;; (my-emacs "archiving.el")
;; (my-emacs "gmail.el")
;; (my-emacs "reddit.el")
;; (my-emacs "appenginejava.el")
(my-emacs "conkerer.el")
(my-emacs "searches.el")
(my-emacs "bookmarks.el")
;; (my-emacs "systemcleansing.el")
(my-emacs "reminders.el")
;; (my-emacs "orgstuff.el")
;; (my-emacs "javascriptstuff.el")
;; (my-emacs "schemestuff.el")
;; (my-emacs "pyjamasstuff.el")
;; (my-emacs "appenginestuff.el")
(my-emacs "localserver.el")
(my-emacs "postgres.el")


;; (my-emacs "reminders.el")

(my-emacs "keybindings.el")
;; (my-emacs "android.el")

(start-process "xmonadsettings" nil "bash" 
	       "xmonadsettings")

;; (conkeror-start)
