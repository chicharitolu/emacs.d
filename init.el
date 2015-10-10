;; this file bootstraps the configuration for GNU Emacs 23.1.1 and later

(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))
(setq lisp-dir (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path lisp-dir)


;; load configs for specific features and modes
(require 'init-go-mode)
(require 'init-yaml-mode)
(require 'init-markdown-mode)

;; custom config
(require 'init-custom)
(require 'init-locales)

;; startup as server for emacsc-lient
(require 'server)
(unless (server-running-p)
  (server-start))

;; end
