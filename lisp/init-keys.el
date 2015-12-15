;;indent whole buffer
(defun indent-whole-buffer ()
  "indent the whole buffer"
  (interactive)
  (save-excursion
  (indent-region (point-min) (point-max)))
(global-set-key [f7] 'indent-whole-buffer)
