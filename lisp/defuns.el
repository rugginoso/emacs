;; Additional functions
(defun kill-all-buffers ()
  "kill all buffers"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
	  (buffer-list))
  (delete-other-windows))

(defun find-local-config ()
  (interactive)
  (find-file
   (concat "~/.emacs.d/lisp/"
	   (ido-completing-read "Config file: "
				(directory-files "~/.emacs.d/lisp/"
						 nil
						 "^[^.]")))))

(defun empty-line ()
  "Creates an empty line below the cursor"
  (interactive)
  (move-end-of-line nil)
  (newline)
  )
