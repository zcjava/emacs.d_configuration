
# Table of Contents



(require 'package)
(if (boundp 'package-archives-spec)
    (setq package-archives package-archives-spec)
    (setq package-archives '(
	("gnu" . "<https://elpa.gnu.org/packages/>")
	("melpa" . "<https://melpa.org/packages/>")
	("org" . "<https://orgmode.org/elpa/>")
      ;;  ("melpa-stable" . "<https://stable.melpa.org/packages/>")
      ))
    )
(unless (
    bound-and-true-p package&#x2013;initialized)
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq package-enable-at-startup nil)
(setq use-package-always-ensure t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(use-package zoom
  :ensure t
  :init
  (setq zoom-size '(0.718 . 0.718))
  :bind ("C-c z" . zoom)
  )

(set-language-environment "UTF-8")
;; (setq locale-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(set-buffer-file-coding-system 'utf-8)
(set-default buffer-file-coding-system 'utf8)
(set-default-coding-systems 'utf-8)

(set-clipboard-coding-system 'utf-8)

(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(modify-coding-system-alist 'process "\*" 'utf-8)

(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)

(setq auto-save-default nil)
;;(setq make-backup-files nil)
(setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(fset 'yes-or-no-p 'y-or-n-p)

;;  (use-package smart-tabs-mode)
  (setq tab-width 4)
  (setq-default tab-width 4)
  (setq-default indent-line-function 4)
  (setq-default lisp-indent-offset 4)
  (setq-default sgml-basic-offset 4)
  ;;  (smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby 'nxml)
  (setq c-basic-offset 4)
  ;; (setq tab-always-indent)
  (setq-default indent-tabs-mode nil)
  ;; nxml-mode
  (setq
    nxml-child-indent 4
    nxml-attribute-indent 4
    nxml-slash-auto-complete-flag t)

(use-package exec-path-from-shell 
  :ensure t
  ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
  )
 (when (memq window-system '(mac ns x))
   (exec-path-from-shell-initialize))
(setq exec-path-from-shell-check-startup-files nil)

(use-package undo-tree
  :init
  (global-undo-tree-mode)
  :ensure t
  :init (setq undo-tree-auto-save-history nil)
  )

(setq recentf-max-menu-items 50)
(setq-default
  recentf-max-saved-items 1000
  recentf-exclude \`("*tmp*" "*ssh:" ,(concat package-user-dir "*.\*-autoloads\\\\.el\\\\'")))
(recentf-mode t)

(setq inhibit-startup-message t)

(menu-bar-mode nil)

(tool-bar-mode nil)
(tool-bar-mode -1)

(scroll-bar-mode nil)

(use-package dracula-theme
  :ensure t
  )

(load-theme 'dracula t)

(setq-default cursor-type 'bar)
(set-cursor-color "green")
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(add-hook 'minibuffer-setup-hook 'subword-mode)

(setq-default fill-column 150)

(global-hl-line-mode t)

(set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
(global-font-lock-mode t)
(setq font-lock-maximum-size 5000000)

(use-package nyan-mode
  :ensure t
  :init
  (setq nyan-animate-nyancat t)
  (setq nyan-wavy-trail t)
  (setq nyan-minimum-window-width 80)
  (setq nyan-bar-length 20)
  (nyan-mode))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode t)
  :config
  (setq doom-modeline-height 5)
  (custom-set-faces
    '(mode-line ((t (:family "Ubuntu Mono" :height:50))))
    '(mode-line-inactive ((t (:family "Ubuntu Mono" :height:50))))
    )
  (doom-modeline-def-modeline 'ownml
    '(bar matches buffer-info remote-host buffer-position misc-info major-mode)
    '(input-method buffer-encoding process vcs checker))
  ;; Add to \`doom-modeline-mode-hook\` or other hooks
  (defun setup-custom-doom-modeline ()
    (doom-modeline-set-modeline 'ownml 'default))
  (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
  )

(use-package all-the-icons)
(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode)
  )

(use-package centaur-tabs
  :demand
  :hook
;;  (dired-mode . centaur-tabs-local-mode)
  (dashboard-mode . centaur-tabs-local-mode)
  (term-mode . centaur-tabs-local-mode)
  (calendar-mode . centaur-tabs-local-mode)
  (org-agenda-mode . centaur-tabs-local-mode)
  (helpful-mode . centaur-tabs-local-mode)
  :config
  (setq
    centaur-tabs-style "bar"
    centaur-tabs-height 32
    centaur-tabs-set-icons t
    centaur-tabs-set-bar 'under
    x-underline-at-descent-line t
    centaur-tabs-show-count t
    centaur-tabs-set-close-button nil
    centaur-tabs-set-modified-marker t
    centaur-tabs-show-navigation-buttons t)
  (centaur-tabs-headline-match)
  (centaur-tabs-group-by-projectile-project)
  (centaur-tabs-mode t)

:bind(
       ("s-1" . centaur-tabs-select-visible-tab)
       ("s-2" . centaur-tabs-select-visible-tab)
       ("s-3" . centaur-tabs-select-visible-tab)
       ("s-4" . centaur-tabs-select-visible-tab)
       ("s-5" . centaur-tabs-select-visible-tab)
       ("s-6" . centaur-tabs-select-visible-tab)
       ("s-7" . centaur-tabs-select-visible-tab)
       ("s-8" . centaur-tabs-select-visible-tab)
       ("s-9" . centaur-tabs-select-visible-tab)
       ("s-0" . centaur-tabs-select-visible-tab)

("C-c t s" . centaur-tabs-counsel-switch-group)
("C-c t p" . centaur-tabs-group-by-projectile-project)
("C-c t g" . centaur-tabs-group-buffer-groups)
)

)

(use-package which-key
  :ensure t
  :config (which-key-mode)
  :bind ("M-m" . which-key-show-top-level)
  )

(use-package switch-window
  :ensure t
  :bind ("C-x o" . switch-window)
  :config
  (setq switch-window-shortcut-style 'qwerty)
  )

(use-package hungry-delete
  :ensure t
  :bind (
          ("C-c DEL" . hungry-delete-backward)
          ("C-c d" . hungry-delete-forward))
  )

(delete-selection-mode t)

(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode t)
  (require 'smartparens-config)
  (sp-local-pair 'elisp-mode "'" nil :actions nil)
  (sp-local-pair 'elisp-mode "\`" nil :actions nil)
  )

(use-package company
    :ensure t
    :init
    (global-company-mode)
     :bind (
             :map company-active-map
             (("C-n"   . company-select-next)
               ("C-p"   . company-select-previous)
               ("C-d"   . company-show-doc-buffer)
               ("<tab>" . company-complete))
             )
    )
;;(add-to-list 'company-backends '(company-capf :with company-dabbrev))
  ;; (use-package company-box
  ;;   :hook (company-mode . company-box-mode))

(use-package nginx-mode)
(use-package company-nginx)

(use-package markdown-mode
  :ensure t
  :mode (("\\\\.md\\\\'" . gfm-mode)
          ("README" . gfm-mode)
          )
  :init (setq markdown-command "multimarkdown"))

(use-package projectile
    :init
    (projectile-global-mode)
    ;; :bind(
    ;;        ("C-x p f" . projectile-find-file)
    ;;        ("C-x p p" . projectile-switch-project)
    ;;        )
    :config
    (setq
        projectile-indexing-method 'hybrid
        ;;hybird, load .projectile and .gitignore ignorefile,Priority load .projectile
        ;;indexing default 'alien ,only load .gitignore
        ;;indexing 'native only load .projectile
        ;;.projectile rule: ignore: -/xxx ; exclude ignore: !/xxx ;

    ;;   projectile-sort-order 'recentf-active
    projectile-enable-caching t)
(setq projectile-globally-ignored-directories
    (append (list
                ".pytest<sub>cache</sub>"
                "<span class="underline"><span class="underline">pycache</span></span>"
                "build"
                "elpa"
                "node<sub>modules</sub>"
                "output"
                "reveal.js"
                "semanticdb"
                "target"
                "venv"
                )
        projectile-globally-ignored-directories))
)

(use-package treemacs-projectile
    :after (treemacs projectile)
    )

(use-package treemacs
    :config
    (setq
        treemacs-deferred-git-apply-delay 0.5
        treemacs-file-follow-delay 0.2
        treemacs-indentation 2
        treemacs-indentation-string " "
        treemacs-show-hidden-files  nil
        treemacs-hide-gitignored-files-mode t
        treemacs-hide-dot-git-directory t
        treemacs-follow-mode t
        treemacs-filewatch-mode t
        treemacs-fringe-indicator-mode 'always
        )
    )

(use-package treemacs-icons-dired
    :hook (dired-mode . treemacs-icons-dired-enable-once)
    :ensure t)

(use-package treemacs-magit
    :after (treemacs magit)
    :ensure t)

(use-package treemacs-persp ;;treemacs-perspective if you use perspective.el vs. persp-mode
    :after (treemacs persp-mode) ;;or perspective vs. persp-mode
    :ensure t
    :config (treemacs-set-scope-type 'Perspectives))

(use-package treemacs-tab-bar ;;treemacs-tab-bar if you use tab-bar-mode
    :after (treemacs)
    :ensure t
    :config (treemacs-set-scope-type 'Tabs))

(use-package expand-region
  :bind ("C-=" . er/expand-region)
  :config
  (defun er/add-html-mode-expansions ()
    (make-variable-buffer-local 'er/try-expand-list)
    "Adds HTML-specific expansions for buffers in html-mode"
    (setq er/try-expand-list (append
                               er/try-expand-list
                               '(er/mark-html-attribute
                                  er/mark-inner-tag
                                  er/mark-outer-tag))))
  (add-hook 'web-mode-hook 'er/add-html-mode-expansions)
  (er/enable-mode-expansions 'web-mode 'er/add-html-mode-expansions)
  ;;:commands (er/expand-region er/enable-mode-expansions)
  )

(use-package ivy
  :config
  (setq ivy-use-virtual-buffers t
    enable-recursive-minibuffers t
    )
  :bind(
         ("C-c C-r" . ivy-resume)
         )
  )

(use-package counsel
    :bind(
           ("M-x" . counsel-M-x)
           ("C-."   . 'counsel-imenu)
           ("C-c o"   . 'counsel-outline)
           ("C-x C-f" . counsel-find-file)
           ("C-c k" . counsel-ag)
           ("C-c g" . counsel-rg)
           ("C-h f" . 'counsel-describe-function)
           ("C-h v" . 'counsel-describe-variable)
           ("C-x b" . 'counsel-switch-buffer)
           ("C-c h" . 'counsel-recentf)
           )
    :hook (after-init . ivy-mode)
    )
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
(use-package counsel-projectile
  :bind
  ("C-c p f" . 'counsel-projectile-find-file)
  ("C-c p g" . 'counsel-projectile-rg)
  ("C-c p p" . 'counsel-projectile-switch-project)
  ("C-c p b" . 'counsel-projectile-switch-to-buffer)
  )
  ;; counsel-locate find system file quicky

(use-package amx
  :ensure t
  )

(use-package swiper
  :bind(
         ("C-s" . swiper)
         ("C-'" . swiper-isearch-thing-at-point)
         )
  )

(use-package helm
;;  :config (helm-mode t)
;;  :bind("M-x" . helm-M-x)
  )

(use-package iedit
  :bind("C-c e" . iedit-mode)
  )

(use-package lsp-mode
  :ensure t
  :hook (
          (lsp-mode . lsp-enable-which-key-integration)
          (lsp-mode-hook . lsp-lens-mode)
          (prog-mode . (lambda()
                           (unless (derived-mode-p 'emacs-lisp-mode) 'lsp-deferred)  ;; assign some mode in prog-mode not need lsp
                           ))
          )
  :commands lsp
  :bind
  (:map lsp-mode-map
    (("C-M-b" . lsp-find-implementation)
      ("M-RET" . lsp-execute-code-action)))
  :init (setq
          lsp-keymap-prefix "C-c l"              ; this is for which-key integration documentation, need to use lsp-mode-map
          read-process-output-max (\* 1024 1024)  ; 1 mb
          lsp-completion-provider :capf
          lsp-completion-show-detail t
          lsp-completion-show-kind t
          lsp-idle-delay 0.500
          lsp-vetur-validation-template nil
          lsp-vetur-dev-log-level "DEBUG"
          lsp-vetur-format-default-formatter-css "none"
          lsp-vetur-format-default-formatter-html "none"
          lsp-vetur-format-default-formatter-js "none"
          lsp-enable-symbol-highlighting t
          lsp-lens-enable t
          lsp-headerline-breadcrumb-enable t
          lsp-modeline-code-actions-enable t
          lsp-modeline-diagnostics-enable t
          lsp-diagnostics-provider :flycheck
          lsp-eldoc-enable-hover t
          lsp-eldoc-enable-hover t
          lsp-signature-auto-activate t
          lsp-signature-render-documentation t
          lsp-inhibit-message t
          )
  :config
  (setq lsp-groovy-server-file (expand-file-name "lsp-server/groovy-language-server/groovy-language-server-all.jar" user-emacs-directory))
  (setq lsp-groovy-classpath "*opt/homebrew/Cellar/groovy/4.0.15/libexec*")
  (setq lsp-completion-enable-additional-text-edit nil)
  (setq lsp-intelephense-multi-root nil) ; don't scan unnecessary projects
  (with-eval-after-load 'lsp-intelephense
    (setf (lsp&#x2013;client-multi-root (gethash 'iph lsp-clients)) nil))
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (add-hook 'lsp-mode-hook
                (lambda()
                  (add-hook 'before-save-hook 'lsp-format-buffer nil t)))
  )

;; 
(use-package lsp-ui
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-header t)
  (setq lsp-ui-doc-include-signature t)
  (setq lsp-ui-doc-border (face-foreground 'default))
  (setq lsp-ui-sideline-show-code-actions t)
  (setq lsp-ui-sideline-delay 0.05))
(use-package lsp-ivy
    )

(setq JAVA<sub>HOME</sub><sub>PATH</sub> "*Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home*")
(setenv "JAVA<sub>HOME</sub>"  JAVA<sub>HOME</sub><sub>PATH</sub>)
(setq my-java-path (concat JAVA<sub>HOME</sub><sub>PATH</sub> "bin/java"))
(use-package lsp-java 
    :init
    (setq lsp-java-server-install-dir (expand-file-name "lsp-server/jdtls/" user-emacs-directory))
    (setq dap-java-test-runner (expand-file-name "eclipse.jdt.ls/test-runner/junit-platform-console-standalone.jar" lsp-java-server-install-dir))
    ;; lsp-java-jdt-download-url 
    (setq lsp-java-java-path my-java-path)
    (setq lombok-jar-path
        (expand-file-name "~/.m2/repository/org/projectlombok/lombok/1.18.26/lombok-1.18.26.jar"))
    (setq lsp-java-vmargs
        \`("-Xmx1G"
             "-XX:+UseG1GC"
             "-XX:+UseStringDeduplication"
             ,(concat "-javaagent:" lombok-jar-path)
             ))
    (setq lsp-java-configuration-maven-user-settings (expand-file-name "~/.m2/settings.xml"))
    (setq lsp-java-format-settings-url "<https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml>" lsp-java-format-settings-profile "GoogleStyle")
    ;;      (setq lsp-java-format-settings-url  (lsp&#x2013;path-to-uri (expand-file-name "codestyle/idea-java-style.xml" user-emacs-directory)) lsp-java-format-settings-profile "IdeaStyle")
    :config

(setq lsp-java-maven-download-sources t)
(setq lsp-java-import-maven-enabled t)
(setq
    lsp-java-import-gradle-enabled t
    lsp-java-import-gradle-wrapper-enabled nil
    lsp-java-import-gradle-version "8.3"
    lsp-java-import-gradle-java-home JAVA<sub>HOME</sub><sub>PATH</sub>
    lsp-java-import-gradle-home "*opt/homebrew/Cellar/gradle/8.3*"
    java-import-gradle-home "*opt/homebrew/Cellar/gradle/8.3*"
    lsp-java-import-gradle-user-home "~/.m2/repository")

(setq lsp-java-implementations-code-lens-enabled t)
(setq lsp-java-references-code-lens-enabled t)
(setq lsp-java-autobuild-enabled t)
(setq lsp-java-format-enabled t)
(setq lsp-java-format-comments-enabled t)
(setq lsp-java-configuration-update-build-configuration t)
(setq lsp-java-configuration-check-project-settings-exclusions t)
(setq lsp-java-completion-guess-method-arguments t)
(add-hook 'java-mode-hook 'lsp)
;; 只在java-mode save的时候 调用lsp-java-origanize-imports
(add-hook 'java-mode-hook
    (lambda()
        (add-hook 'before-save-hook 'lsp-java-organize-imports nil t)
        ))

    ;; 只在某些mode下，生效参数配置
;;     (add-hook 'java-mode-hook                                        
;;                (lambda()                                              
;;                  (make-local-variable 'company-minimum-prefix-length) 
;;                  (setq company-minimum-prefix-length 0)               
;;                    )
;;         )

;;     (require 'lsp-java-boot)
;;     ;; to enable the lenses
;;     (add-hook 'lsp-mode-hook #'lsp-lens-mode)
;;     (add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)
     )

(use-package dap-java
   :ensure nil
   :config
   (dap-register-debug-template
       "localhost:5005"
       (list :type "java"
           :request "attach"
           :hostName "localhost"
           :port 5005))
   (dap-register-debug-template
       "lxd"
       (list :type "java"
           :request "attach"
           :hostName "127.0.0.1"
           :port 5005))
   ;; :config
   ;; (global-set-key (kbd "<f7>") 'dap-step-in)
   ;; (global-set-key (kbd "<f8>") 'dap-next)
   ;; (global-set-key (kbd "<f9>") 'dap-continue)
   )

;;==========java end==========

;;========== maven pom==========
;; <https://github.com/m0smith/maven-pom-mode.git>
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'load-path  (expand-file-name "site-lisp/maven-pom-mode" user-emacs-directory)) ;;
;; (add-to-list 'auto-mode-alist '("pom.xml" . maven-pom-mode))                                 ;;
;; (load "maven-pom-mode")                                                                      ;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;==========maven pom end==========

(use-package mvn
    :ensure t
    )

(defun mvn-install ()
    (interactive)
    (mvn "install"))

(use-package groovy-mode
  )

(use-package web-mode
  :config
  (setq web-mode-markup-indent-offset 4
    web-mode-css-indent-offset 4
    web-mode-code-indent-offset 4
    )
  )

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))

(add-to-list 'auto-mode-alist '("\\\\.html?\\\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\\\.js[x]?\\\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\\\.css?\\\\'" . web-mode))

(use-package js2-mode
  )
(use-package json-mode
  )
(use-package prettier-js
  :ensure t
  ;; :config
  ;; (setq prettier-js-args '(
  ;;                          "&#x2013;print-width" "200"  ;; each line max input character num,default 80
  ;;                          "&#x2013;trailing-comma" "all"  ;; line end auto add ","
  ;;                          "&#x2013;bracket-spacing" "false" ;; 
  ;;                          ))
  )

(use-package js-comint)

(use-package flycheck
  :init (global-flycheck-mode)
  :config
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  )

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))
;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

(use-package yasnippet
  :config (yas-global-mode)
  )
(use-package yasnippet-snippets :ensure t)

(use-package magit)

(add-hook 'prog-mode-hook 'hs-minor-mode)

(use-package restclient
  :config
  (add-to-list 'company-backends 'company-restclient)
  )
(use-package company-restclient
  :after(restclient-mode)
  )
(use-package ob-restclient)
(add-to-list 'auto-mode-alist '("\\\\.hpct\\\\'" . restclient-mode))

(use-package undo-tree
  :init (global-undo-tree-mode t)
  )

(use-package avy
  :bind("C-;" . avy-goto-char)
  )

(with-eval-after-load 'org
  (defun org-buffer-face-mode-variable ()
    (interactive)
    (make-face 'width-font-face)
    (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
    (setq buffer-face-mode-face 'width-font-face)
    (buffer-face-mode))
    (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))

(use-package org-bullets
   :ensure t
   :hook((org-mode . org-bullets-mode)
          (org-mode . org-indent-mode))
   ;;  (add-hook 'org-mode-hook #'org-bullets-mode)
   ;;  (add-hook 'org-mode-hook #'org-indent-mode)
   )

(set-face-attribute 'org-block nil :background
                  (color-darken-name
                   (face-attribute 'default :background) 3))

(require 'ob-js)
(org-babel-do-load-languages 'org-babel-load-languages
    '((js . t)
      (restclient . t))
    )
(add-to-list 'org-babel-tangle-lang-exts '("js" . "js"))
(defun ob-js-insert-session-header-arg (session)
  "Insert ob-js \`SESSION' header argument.

-   \`js-comint'
-   \`skewer-mode'
-   \`Indium'

"
  (interactive (list (completing-read "ob-js session: "
                       '("js-comint" "skewer-mode" "indium"))))
  (org-babel-insert-header-arg
    "session"
    (pcase session
      ("js-comint" "\\"**Javascript REPL**\\"")
      ("skewer-mode" "\\"**skewer-repl**\\"")
      ("indium" "\\"**JS REPL**\\""))))
(define-key org-babel-map (kbd "J") 'ob-js-insert-session-header-arg)

(setq +format-with-lsp nil)
(use-package format-all
  :ensure t
  :hook ((elixir-mode . format-all-mode)
          ;;              (prog-mode . format-all-mode)
          )
  ;; :init
  ;;  (setq formatters '((lsp-mode . "lsp-format-buffer")))
  :config
  (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
  (add-hook 'prog-mode-hook
    (lambda ()
      (unless (derived-mode-p 'lsp-mode)
        (add-hook 'before-save-hook
          'format-all-buffer t t))))
  ;;        (add-hook 'before-save-hook 'format-all-buffer)

)

(custom-set-variables
  '(format-all-default-formatters
     '(("Assembly" asmfmt)
        ("ATS" atsfmt)
        ("Bazel" buildifier)
        ("BibTeX" emacs-bibtex)
        ("C" clang-format)
        ("C#" clang-format)
        ("C++" clang-format)
        ("Cabal Config" cabal-fmt)
        ("Clojure" zprint)
        ("CMake" cmake-format)
        ("Crystal" crystal)
        ("CSS" prettier)
        ("Cuda" clang-format)
        ("D" dfmt)
        ("Dart" dart-format)
        ("Dhall" dhall)
        ("Dockerfile" dockfmt)
        ("Elixir" mix-format)
        ("Elm" elm-format)
        ("Emacs Lisp" emacs-lisp)
        ("Erlang" efmt)
        ("F#" fantomas)
        ("Fish" fish-indent)
        ("Fortran Free Form" fprettify)
        ("GLSL" clang-format)
        ("Go" gofmt)
        ("GraphQL" prettier)
        ("Haskell" brittany)
        ("HTML" prettier)
        ("HTML+EEX" mix-format)
        ("HTML+ERB" erb-format)
        ("Java" clang-format)
        ("JavaScript" prettier)
        ("JSON" prettier)
        ("JSON5" prettier)
        ("Jsonnet" jsonnetfmt)
        ("JSX" prettier)
        ("Kotlin" ktlint)
        ("LaTeX" latexindent)
        ("Less" prettier)
        ("Literate Haskell" brittany)
        ("Lua" lua-fmt)
        ("Markdown" prettier)
        ("Nix" nixpkgs-fmt)
        ("Objective-C" clang-format)
        ("OCaml" ocp-indent)
        ("Perl" perltidy)
        ("PHP" prettier)
        ("Protocol Buffer" clang-format)
        ("PureScript" purty)
        ("Python" black)
        ("R" styler)
        ("Reason" bsrefmt)
        ("ReScript" rescript)
        ("Ruby" rufo)
        ("Rust" rustfmt)
        ("Scala" scalafmt)
        ("SCSS" prettier)
        ("Shell" shfmt)
        ("Solidity" prettier)
        ("SQL" sqlformat)
        ("Svelte" prettier)
        ("Swift" swiftformat)
        ("Terraform" terraform-fmt)
        ("TOML" prettier)
        ("TSX" prettier)
        ("TypeScript" prettier)
        ("V" v-fmt)
        ("Verilog" istyle-verilog)
        ("Vue" prettier)
        ("XML" html-tidy)
        ("YAML" prettier)
        ("Zig" zig)
        ("<sub>Angular</sub>" prettier)
        ("<sub>Flow</sub>" prettier)
        ("<sub>Gleam</sub>" gleam)
        ("<sub>Ledger</sub>" ledger-mode)
        ("<sub>Nginx</sub>" nginxfmt)
        ("<sub>Snakemake</sub>" snakefmt)))
  )

