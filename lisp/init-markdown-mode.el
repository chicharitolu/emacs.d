;; init for go-mode

(setq markdown-mode-dir (expand-file-name "markdown-mode"  site-lisp-dir))
(add-to-list 'load-path markdown-mode-dir t)

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'init-markdown-mode)
