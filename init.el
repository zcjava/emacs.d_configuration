(org-babel-load-file (expand-file-name "configuration.org" user-emacs-directory))
;; add yourself configuration
(let ((self_file (expand-file-name "configuration_self.org" user-emacs-directory)))
  (if (file-exists-p self_file)
      (org-babel-load-file self_file)
    )
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(projectile smart-tabs-mode hungry-delete which-key org-bullets format-all company all-the-icons-dired all-the-icons doom-modeline nyan-mode dracula-theme use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:family "Ubuntu Mono" :height:50))))
 '(mode-line-inactive ((t (:family "Ubuntu Mono" :height:50)))))
