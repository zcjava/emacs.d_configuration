;; add yourself configuration
(let ((self_file (expand-file-name "configuration_self.org" user-emacs-directory)))
  (if (file-exists-p self_file)
      (org-babel-load-file self_file)
    )
  )
(org-babel-load-file (expand-file-name "configuration.org" user-emacs-directory))
