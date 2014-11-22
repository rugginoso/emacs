;; What system is being used?
(setq is-*nix (if (string-match "linux" (symbol-name system-type)) t))
(setq is-windows (if (string-match "windows" (symbol-name system-type)) t))
(setq is-mac (if (string-match "darwin" (symbol-name system-type)) t))

;; Shell
(setq-default shell-file-name "/usr/local/bin/fish")
(add-to-list 'exec-path "/usr/local/bin")

;; Formatting
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Char coding
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Ask for 'y' or 'n', not 'yes' or 'no
(fset 'yes-or-no-p 'y-or-n-p)

;; Increase kill ring and history size
(setq kill-ring-max 100)
(setq query-replace-history-max 50)
(setq replace-string-history-max 50)
(setq replace-regex-history-max 50)
(setq find-file-history-max 1000)

;; Browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")
