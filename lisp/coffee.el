;; coffee script
(package-install-if-missing 'coffee-mode)

(package-install-if-missing 'highlight-indentation)
(add-hook 'coffee-mode-hook
	  (lambda () (highlight-indentation-mode)))
