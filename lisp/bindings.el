;; Rules for "copy&paste stacks": emacs kill ring, emacs region, X11 clipboard and X11 selection
(setq mouse-drag-copy-region nil)     ; don't inject selection with mouse to the kill ring
(setq x-select-enable-primary nil)    ; don't sync kill ring with primary X11 selection
(setq x-select-enable-clipboard t)    ; sync kill ring to X11 clipboard
(setq select-active-regions t)        ; sync active region with primary X11 selection
(global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.

(setq yank-pop-change-selection t)    ; make rotating the kill ring change the X11 clipboard.


(global-set-key "\C-xk" 'kill-this-buffer) ; don't ask, just kill
(global-set-key "\C-x\C-k" 'kill-all-buffers)

(global-set-key "\C-cw" 'whitespace-cleanup)
(global-set-key "\C-xc" 'find-local-config)

(global-set-key (kbd "<s-return>") 'empty-line)
(global-set-key (kbd "C-<return>") 'cua-rectangle-mark-mode)
(global-set-key "\C-k" 'kill-whole-line)
(global-set-key "\C-a" 'back-to-indentation)

;; Ctrl+Tab to switch buffer (F6 for terminals)
(global-set-key (kbd "<C-tab>") 'bury-buffer)
(global-set-key (kbd "<C-S-iso-lefttab>") 'unbury-buffer)
(global-set-key [f6] 'bury-buffer)
(global-set-key [(shift f6)] 'unbury-buffer)

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Window resize
(global-set-key (kbd "S-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-s-<down>") 'shrink-window)
(global-set-key (kbd "S-s-<up>") 'enlarge-window)

;; Undo / Redo
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'redo)

;; Move Text with SHIFT-ALT-UP/DOWN
(package-install-if-missing 'move-text)
(global-set-key [S-M-up] 'move-text-up)
(global-set-key [S-M-down] 'move-text-down)

;; Navigate between windows using Alt-left, Alt-up, Alt-right
;; Must be after move-text bindings
(windmove-default-keybindings 'meta)

(global-set-key (kbd "<backtab>") 'indent-rigidly)

;; Compile
(global-set-key "\C-cc" 'mode-compile)
(global-set-key "\C-ck" 'mode-compile-kill)

;; Ace jump
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Expand region
(global-set-key (kbd "C-@") 'er/expand-region)

;; Visual regexp
(define-key global-map (kbd "C-c r") 'vr/query-replace)

;; Magit
(global-set-key "\C-xg" 'magit-status)
