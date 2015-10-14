(autoload 'rfc2047-decode-string "rfc2047")
(autoload 'rfc2047-decode-region "rfc2047")
(setq rmail-message-filter
      (lambda ()
        (save-excursion
          (when (search-forward "\n\n" nil t)
            (rfc2047-decode-region
             (point-min) (match-beginning 0)))))
      rmail-summary-line-decoder
      (function rfc2047-decode-string))
