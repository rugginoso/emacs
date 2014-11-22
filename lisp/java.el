;; JSP
(setq auto-mode-alist (cons '("\\.jsp" . nxml-mode) auto-mode-alist))

(add-hook 'java-mode-hook
          (lambda ()
            (setq compile-command "ant -emacs -find")
            (setq compilation-read-command t) ))
