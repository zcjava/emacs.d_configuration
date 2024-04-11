;; GC settings
(setq gc-cons-threshold most-positive-fixnum)
(setq read-process-output-max (* 32 1024 1024))
(add-hook 'emacs-startup-hook
	  (lambda ()
	      (setq gc-cons-threshold (* 2 1000 1000))))

;; disable package load elpa
(setq package-enable-at-startup nil)

;; Menu-bar
(menu-bar-mode -1)

;; Tool-bar
(tool-bar-mode -1)

;; scroll-bar
(scroll-bar-mode -1)

;; custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
    (load custom-file))

(provide 'early-init)
