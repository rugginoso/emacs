;; coffee script
(package-install-if-missing 'jade-mode)

(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
