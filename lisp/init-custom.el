;; default to better frame titles
(setq frame-title-format
  (concat  "%b - emacs@" (system-name)))

;; turn off menu bar
(menu-bar-mode nil)

;; turn off tool bar
(tool-bar-mode nil)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; highlight matching parentheses
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; highlight current line
(global-hl-line-mode t)

;; enable line number
(global-linum-mode t)

;; disable backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; disable erasure key prompts for a Help command
(normal-erase-is-backspace-mode 1)

;; indent using space 
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)

;; using y/n
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-custom)
