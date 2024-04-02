;; GC settings
(setq gc-cons-threshold most-positive-fixnum)
(setq read-process-output-max (* 32 1024 1024))
(add-hook 'after-init-hook #'(lambda () (setq gc-cons-threshold 800000)))

;; Menu-bar
(menu-bar-mode -1)

;; Tool-bar
(tool-bar-mode -1)

;; scroll-bar
(scroll-bar-mode -1)
