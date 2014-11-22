(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(setq url-http-attempt-keepalives nil)

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available 
(when (not package-archive-contents)
  (package-refresh-contents))

;; install package only if missing, then require
(defun package-install-if-missing (package)
  (when (not (package-installed-p package))
    (package-install package))
  (require package)
)
