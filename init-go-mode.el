;; init for go-mode
(setq go-mode-dir (expand-file-name "go-mode"  site-lisp-dir))
(add-to-list 'load-path go-mode-dir t)
(require 'go-mode-load)

(provide 'init-go-mode)
