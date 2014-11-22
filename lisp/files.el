;; Files
(setq backup-inhibited t)		; No standard backup files
(setq auto-save-default nil)		; disable auto save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
