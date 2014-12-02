;; this file bootstraps the configuration for GNU Emacs 23.1.1  and later

(add-to-list 'load-path user-emacs-directory)
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))

;; load configs for specific features and modes
(require 'init-go-mode)


;; custom config
(require 'init-custom)
(require 'init-locales)

;; startup as server for emacsc-lient
(require 'server)
(unless (server-running-p)
  (server-start))

;; end
