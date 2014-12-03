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

;; https://gist.github.com/haksior/1992394
(defadvice split-window (after move-point-to-new-window activate)
  "Moves the point to the newly created window after splitting."
  (if (> (window-height (next-window)) 2)
      (other-window 1)))
