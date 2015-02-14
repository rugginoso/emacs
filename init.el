(defun load-local (file)
  (load (concat user-emacs-directory file)))

;; My configs
(load-local "lisp/defuns")
(load-local "lisp/packages")
(load-local "lisp/global")
(load-local "lisp/ido")
(load-local "lisp/ui")
(load-local "lisp/linum")
(load-local "lisp/files")
(load-local "lisp/snippets")
(load-local "lisp/navigation")
(load-local "lisp/undo")
(load-local "lisp/git-gutter")
(load-local "lisp/magit")
(load-local "lisp/visual-regexp")
(load-local "lisp/tab")
(load-local "lisp/whitespace")
(load-local "lisp/powerline")

;; My modes
(load-local "lisp/ruby")
(load-local "lisp/rbenv")
(load-local "lisp/coffee")
(load-local "lisp/sass")
(load-local "lisp/slim")
(load-local "lisp/yaml")
(load-local "lisp/markdown")
(load-local "lisp/javascript")
(load-local "lisp/jade")
(load-local "lisp/go")

;; Bindings
(load-local "lisp/bindings")
