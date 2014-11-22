;; sass and scss
(package-install-if-missing 'sass-mode)

(package-install-if-missing 'highlight-indentation)
(add-hook 'sass-mode-hook
	  (lambda () (highlight-indentation-mode)))

(setq auto-mode-alist (cons '("\\.scss$" . css-mode) auto-mode-alist))
