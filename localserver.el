(defun localserver-start () (interactive)
  (start-process "localserver" "localserver" 
		 "python2.6" "/home/umar/pythonfiles/localserver.py"))

(defun localserver-stop () (interactive)
  (kill-process "localserver"))

(defun localserver-open () (interactive)
  (conkeror-open-link "http://localhost:8080"))

(defun localserver-restart () (interactive)
  (progn
    (localserver-stop)
    (localserver-start)))
