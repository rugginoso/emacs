(package-install-if-missing 'magit)
(setq magit-restore-window-configuration t)

(package-install-if-missing 'fullframe)
(fullframe magit-status magit-mode-quit-window)
