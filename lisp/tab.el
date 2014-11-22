;; Auto complete settings / tab settings
;; http://emacsblog.org/2007/03/12/tab-completion-everywhere/ <-- in the comments
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
   the minibuffer. Else, if mark is active, indents region. Else if
   point is at the end of a symbol, indents and expands it. Else indents the
   current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (progn (indent-for-tab-command)
             (if (looking-at "\\_>")
                 (let ((yas/fallback-behavior nil))
                   (unless (yas/expand)
                     (dabbrev-expand nil)))
               (indent-for-tab-command))))))

(global-set-key [(tab)] 'smart-tab)
