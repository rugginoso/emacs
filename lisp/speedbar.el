(package-install-if-missing 'sr-speedbar)

;; speedbar prefs
(setq sr-speedbar-right-side nil) ; speedbar on left pane
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq sr-speedbar-auto-refresh nil)

;; key bindings
(global-set-key [f11] 'sr-speedbar-toggle)
