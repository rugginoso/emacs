;; Use FLX IDO
(package-install-if-missing 'flx-ido)
(ido-mode t)
(ido-everywhere t)
(flx-ido-mode t)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

;; Display ido results vertically, rather than horizontally
(defvar ido-vertical-decorations
  '("\n-> "                             ; left bracket around prospect list
    ""                                  ; right bracket around prospect list
    "\n   "                             ; separator between prospects, depends on `ido-separator`
    "\n   ..."                          ; inserted at the end of a truncated list of prospects
    "["                                 ; left bracket around common match string
    "]"                                 ; right bracket around common match string
    " [No match]"
    " [Matched]"
    " [Not readable]"
    " [Too big]"
    " [Confirm]"
    "\n-> "                             ; left bracket around the sole remaining completion
    ""                                  ; right bracket around the sole remaining completion
    ))
(setq ido-decorations ido-vertical-decorations)

;; up/down is more intuitive in vertical layout
(defun ido-define-keys ()
  (define-key ido-completion-map (kbd "<down>") 'ido-next-match)
  (define-key ido-completion-map (kbd "<up>") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)
