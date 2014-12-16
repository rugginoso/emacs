;; Line numbers on left side
(setq linum-format "%3d ")
(global-linum-mode)

(setq linum-disabled-modes '("Info" "dired" "eshell" "magit-status" "calendar"))

(dolist (mode linum-disabled-modes)
  (add-hook (intern (concat mode "-mode-hook")) (lambda () (linum-mode 0))))
