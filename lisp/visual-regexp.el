(package-install-if-missing 'visual-regexp)

(define-key global-map (kbd "C-c r") 'vr/query-replace)
