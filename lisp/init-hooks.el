(def read-only-if-symlink ()
     (if (file-symlink-p buffer-file-name)
         (pron
          (setq buffer-read-only t)
          (message "File is a symlink")))
     )
