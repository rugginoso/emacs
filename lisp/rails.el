;; rinari
(package-install-if-missing 'rinari)
(setq rinari-tags-file-name "TAGS")
(add-hook 'rinari-minor-mode-hook
          (lambda ()
            (define-key rinari-minor-mode-map (kbd "C-f C-;") 'rinari-find-by-context)
            (define-key rinari-minor-mode-map (kbd "C-f C-c") 'rinari-find-controller)
            (define-key rinari-minor-mode-map (kbd "C-f C-e") 'rinari-find-environment)
            (define-key rinari-minor-mode-map (kbd "C-f C-h") 'rinari-find-helper)
            (define-key rinari-minor-mode-map (kbd "C-f C-i") 'rinari-find-migration)
            (define-key rinari-minor-mode-map (kbd "C-f C-l") 'rinari-find-plugin)
            (define-key rinari-minor-mode-map (kbd "C-f C-m") 'rinari-find-model)
            (define-key rinari-minor-mode-map (kbd "C-f C-n") 'rinari-find-configuration)
            (define-key rinari-minor-mode-map (kbd "C-f C-o") 'rinari-find-log)
            (define-key rinari-minor-mode-map (kbd "C-f C-p") 'rinari-find-public)
            (define-key rinari-minor-mode-map (kbd "C-f C-r") 'rinari-find-rspec)
            (define-key rinari-minor-mode-map (kbd "C-f C-v") 'rinari-find-view)
            (define-key rinari-minor-mode-map (kbd "C-f C-w") 'rinari-find-worker)
            (define-key rinari-minor-mode-map (kbd "C-f C-x") 'rinari-find-rspec-fixture)
            (define-key rinari-minor-mode-map (kbd "C-f C-s") 'rinari-find-stylesheet)
            (define-key rinari-minor-mode-map (kbd "C-f C-j") 'rinari-find-javascript)

            (define-key rinari-minor-mode-map [f5] 'rinari-web-server-restart)
            (define-key rinari-minor-mode-map (kbd "C-c C-t") 'rinari-test)
            ))

;; Launch rinari for every file in a rails app https://blog.cvigano.de/2013/09/launch-rinari-for-every-file-in-an-rails-application
(defun enable-rinari-hook()
  (if (and (locate-dominating-file default-directory "config/application.rb")
           (locate-dominating-file default-directory "Gemfile")
           (locate-dominating-file default-directory "Rakefile")
           (locate-dominating-file default-directory "db")
           (locate-dominating-file default-directory "app"))
      (rinari-launch)))

(add-hook 'find-file-hook 'enable-rinari-hook)

; erb views
(setq auto-mode-alist (cons '("\\.erb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js.erb$" . js2-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js.erb$" . js2-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.coffee.erb$" . coffee-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html.erb$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.css.erb$" . css-mode) auto-mode-alist))
