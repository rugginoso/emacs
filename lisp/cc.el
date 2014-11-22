;; C/C++ mode
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))

(defun my-c-mode-hook ()
  (setq c-basic-offset 4
        c-indentation-style "k&r"))
(add-hook 'c-mode-hook 'my-c-mode-hook)
