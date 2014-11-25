(package-install-if-missing 'git-gutter)

;; Enable git gutter globally
(global-git-gutter-mode t)

;; Make it work with linum-mode
(git-gutter:linum-setup)
