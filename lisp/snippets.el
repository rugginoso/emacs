(package-install-if-missing 'yasnippet)
(yas-global-mode)

(package-install-if-missing 'smartparens)
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
	       (sp-local-pair "<" ">")
	       (sp-local-pair "<%" "%>"))

(setq dabbrev-check-all-buffers nil)
