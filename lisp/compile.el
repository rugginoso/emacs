;; Compilation pref
(setq compilation-ask-about-save nil)
(setq compilation-read-command nil)     ; no prompt for compile command

; mode-compile
(autoload 'mode-compile "mode-compile"
   "Command to compile current buffer file based on the major mode" t)

(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
