(package-install-if-missing 'ruby-tools)
(package-install-if-missing 'ruby-hash-syntax)
(package-install-if-missing 'highlight-indentation)
(package-install-if-missing 'rspec-mode)

(setq rspec-use-rake-when-possible nil)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

(add-hook 'rspec-compilation-mode-hook
          (lambda ()
            (setq truncate-lines nil)
            ))
