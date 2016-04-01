;;  set read only if symlink file
(add-hook 'find-file-hooks  '(lambda ()
     (if (file-symlink-p buffer-file-name)
         (progn
          (setq buffer-read-only t)
          (message "File is a symlink"))))
          )

(defun visit-target-instead
    (interactive)
  (if buffer-file-name
      (let ((target (file-symlink-p buffer-file-name)))
        (if target
            (find-alternate-file target)
          (error "Not visting a file")))
          (error "Not visiting a file"))
  )
          
    



;;

