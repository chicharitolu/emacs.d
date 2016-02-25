;; init for lua-mode

(setq lua-mode-dir (expand-file-name "lua-mode"  site-lisp-dir))
(add-to-list 'load-path lua-mode-dir t)

(require 'lua-mode)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(provide 'init-lua-mode)
