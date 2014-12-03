;; bye-bye Ack
(package-install-if-missing 'ag)
(setq ag-reuse-window nil)
(setq ag-reuse-buffers t)
(setq ag-highlight-search t)

;; ace-jump
(package-install-if-missing 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; projectile
(package-install-if-missing 'projectile)
(package-install-if-missing 'flx-ido)
(projectile-global-mode)
(setq projectile-indexing-method 'find)

(global-set-key "\C-x\C-g" 'projectile-find-file)
(global-set-key "\C-x\C-a" 'projectile-ag)
(global-set-key "\C-x\C-p" 'projectile-switch-project)

;; expand region
(package-install-if-missing 'expand-region)
(global-set-key (kbd "C-@") 'er/expand-region)
