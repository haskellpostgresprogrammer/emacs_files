(defun mplayer-start (file) (interactive "f file:")
  (start-process "mplayerprocess" "mplayerbuffer" 
		 "mplayer" "-shuffle" "-quiet" "-slave" "-vo" "null" 
		 "-playlist" file))

(defun mplayer-next () (interactive)
  (process-send-string "mplayerprocess" "pt_step 1\n"))

(defun mplayer-prev () (interactive)
  (process-send-string "mplayerprocess" "pt_step -1\n"))

(defun mplayer-pause () (interactive)
  (process-send-string "mplayerprocess" "pause\n"))

(defun mplayer-quit () (interactive)
  (delete-process "mplayerprocess"))

(defun mplayer-seek-forward () (interactive)
  (process-send-string "mplayerprocess" "seek 20\n"))
(defun mplayer-seek-backward () (interactive)
  (process-send-string "mplayerprocess" "seek -20n"))

(defun play () (interactive)
  (progn 
    (remove-backup-files "/home/umar/myplaylists")
    (setq file 
	  (replace-regexp-in-string "^~" "/home/umar"
	   (read-file-name "playlist: " "~/myplaylists/"
			   "/home/umar/myplaylists/soft")))
    (if (process-status "mplayerprocess")
	(progn (mplayer-quit) (mplayer-start file))
      (mplayer-start file))))

(defun playquit () (interactive) (mplayer-quit))

(defun mplayer-video (file) (interactive "f file:")
  (start-process "mplayervideo" nil
		 "mplayer" "-fs" "-zoom" file))

(defun mplayer-audio (file) (interactive "f file:")
  (start-process "mplayerprocess" "mplayerbuffer" 
		 "mplayer" "-quiet" "-slave"
		 file))
