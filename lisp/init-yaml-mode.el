;;init for yaml-mode

(setq yaml-mode-dir (expand-file-name "yaml-mode" site-lisp-dir))
(add-to-list 'load-path yaml-mode-dir t)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist (cons "\\.yaml$" 'yaml-mode))

(add-hook 'yaml-mode-hook
	  '(lambda ()
		  (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(provide 'init-yaml-mode)
