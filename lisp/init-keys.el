;; indent whole buffer
(defun indent-whole-buffer ()
  "indent the whole buffer"
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max)))
  )

;; previous windows
(defun other-window-backward (&optional n)
  "select the previsous window"
  (interactive "P")
  (other-window (- (or 'prefix-numeric-value 1)))
  )


;; point to buttom
(defun point-to-buttom ()
  "put cursor on last visible line"
  (interactive)
  (move-to-window-line -1)
  )

;; line to top
(defun line-to-top ()
  "move current lint to top of window"
  (interactive)
  (recenter 0)
  )

;; global keys
(global-set-key [f7] 'indent-whole-buffer)
(global-set-key [f1] 'shell)
(global-set-key "\C-x\C-n" 'other-window)
(global-set-key "\C-x\C-p" 'other-window-backward)

(provide 'init-keys)
