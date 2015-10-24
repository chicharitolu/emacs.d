;;init for org-mode

(add-hook 'yaml-mode-hook
	  '(lambda ()
       (setq truncate-lines nil)))

(provide 'init-org-mode)
