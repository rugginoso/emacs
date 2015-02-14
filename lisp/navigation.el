;; bye-bye Ack
(package-install-if-missing 'ag)
(setq ag-reuse-window nil)
(setq ag-reuse-buffers t)
(setq ag-highlight-search t)

;; ace-jump
(package-install-if-missing 'ace-jump-mode)

;; projectile
(package-install-if-missing 'projectile)
(package-install-if-missing 'flx-ido)
(projectile-global-mode)
(setq projectile-indexing-method 'find)
(setq projectile-switch-project-action 'projectile-dired)

;; expand region
(package-install-if-missing 'expand-region)
