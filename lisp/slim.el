;; slim lang
(package-install-if-missing 'slim-mode)

(package-install-if-missing 'highlight-indentation)
(add-hook 'slim-mode-hook
	  (lambda () (highlight-indentation-mode)))
