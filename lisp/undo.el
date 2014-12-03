(package-install-if-missing 'undo-tree)
(global-undo-tree-mode)

(defalias 'redo 'undo-tree-redo)
