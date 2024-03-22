
# Table of Contents

-   [Intro](#org65c51e8)
    -   [Package Manager](#org1feeef9)
        -   [ELPA Setup](#org4b15c60)
        -   [Use-Package Setup](#org0b99dd1)
    -   [General Settings Setup](#orgba7cf43)
        -   [Window Settings](#orgba54387)
        -   [Character Settings](#org4a1d669)
        -   [BackUp Settings](#org9ed77f4)
        -   [Custom-file Settings](#org9fd6815)
        -   [Yes/No Shorthand Settings](#orgdf54b87)
        -   [Tabs Indentation Settings](#org0be843c)
        -   [Env Settings](#org03907ab)
        -   [Undo Settings](#org7d267f3)
        -   [Recentf Settings](#org0a6ea2b)
        -   [Show Startup Message](#org9ef550d)
        -   [GC settings](#orgd8babd8)
    -   [UI Setup](#org915c165)
        -   [Menu-bar Hide](#org7063070)
        -   [Tool-bar Hide](#orgbd07a70)
        -   [Scroll-bar Hide](#org218552b)
        -   [Theme](#org6dbe93f)
        -   [Cursor](#org4dca561)
        -   [FillColumn](#org625eae3)
        -   [HighLight Line](#org681d049)
        -   [Font](#orgeef8f15)
        -   [Mode Line](#org0591942)
        -   [Icons](#org09776cf)
        -   [Tabs Setup](#org915d5ec)
        -   [DashBoard Setup](#org75b9c00)
    -   [Which-Key Setup](#org91d507b)
    -   [Switch-Window](#org5c677ea)
    -   [Delete Setup](#org9a6db5f)
        -   [Hungry-delete](#org1818246)
        -   [Delete Slection](#org7b397ce)
    -   [SmartParens](#org077957b)
    -   [Company Setup](#orgab0d54a)
        -   [Company english helper](#org025280e)
    -   [Nginx Setup](#org7a3d724)
    -   [MarkDown Setup](#org714e34c)
    -   [Projectile Setup](#org1a3d45f)
    -   [Selected Setup](#orga734151)
    -   [Command Completion For MiniBuffer](#orgc996baf)
        -   [Ivy/Counsel/Swiper Setup](#org7cf7661)
        -   [orderless](#org531d5b3)
        -   [Helm Setup](#org8f155b7)
    -   [Iedit Setup](#orgaaaaa95)
    -   [Language Setup](#org5864284)
        -   [LSP-Mode Setup](#org3fb2582)
        -   [JAVA Setup](#orga3ad964)
        -   [Groovy Setup](#org2cd2b39)
        -   [Web-Mode Setup](#orge801e52)
        -   [Javascript REPL](#orgd120590)
        -   [FlyCheck Setup](#orgd1cf30e)
        -   [Yasnippet Setup](#org9af054b)
        -   [Magit Setup](#org5df74ff)
        -   [HideShow Setup](#orgeb4deb6)
    -   [HttpClient Setup](#orge0066a9)
    -   [Undo-Tree Setup](#org02b8a66)
    -   [Avy SetUp](#orgf237bc7)
    -   [Org Setup](#orgbcb3c37)
        -   [Org Table Tidy Settings](#org370fc59)
        -   [Pretty](#orgb83c568)
        -   [Org-babel support language](#org64fd44a)
        -   [Org Agenda Setup](#org0058183)
        -   [Org Roam Setup](#orgc2f8417)
    -   [Format Setup](#orgb4a99ca)
        -   [Format Default Formatters Setup](#org6d842e3)
    -   [Youdao Translate Setup](#org92a9a06)
    -   [Undo Tree Setup](#org683937b)
    -   [Org shortcut](#org2bd000a)
        -   [Motion in Heading](#org1bfd100)
        -   [Editing Heading Level](#org3ef07aa)
        -   [Insert Org template](#org88a436a)
        -   [Other](#orgac2daa6)
    -   [Installation](#org01b80b8)
    -   [Customize Your Configuration](#org6fd1676)



<a id="org65c51e8"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="org1feeef9"></a>

## Package Manager


<a id="org4b15c60"></a>

### ELPA Setup

set repository to tsinghua

    (require 'package)
    (if (boundp 'package-archives-spec)
        (setq package-archives package-archives-spec)
        (setq package-archives '(
                                    ("gnu" . "https://elpa.gnu.org/packages/")
                                    ("melpa" . "https://melpa.org/packages/")
                                    ;;  ("org" . "https://orgmode.org/elpa/")
                                    ;;  ("melpa-stable" . "https://stable.melpa.org/packages/")
                                    ))
        )
    (unless (
                bound-and-true-p package--initialized)
        (package-initialize))
    
    (unless package-archive-contents
        (package-refresh-contents))


<a id="org0b99dd1"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))
    
    (setq package-enable-at-startup nil)
    (setq use-package-always-ensure t)

-   vc-use-package

        (unless (package-installed-p 'vc-use-package)
            (package-vc-install "https://github.com/slotThe/vc-use-package"))
        (require 'vc-use-package)


<a id="orgba7cf43"></a>

## General Settings Setup


<a id="orgba54387"></a>

### Window Settings

-   Window Maximized

        (add-to-list 'default-frame-alist '(fullscreen . maximized))

-   Zoom

    window auto Zoom,current window Larger display
    
        (use-package zoom
            :ensure t
            :init
            (setq zoom-size '(0.718 . 0.718))
            :bind ("C-c z" . zoom)
            )


<a id="org4a1d669"></a>

### Character Settings

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
    (modify-coding-system-alist 'process "*" 'utf-8)
    
    (setq-default pathname-coding-system 'utf-8)
    (set-file-name-coding-system 'utf-8)


<a id="org9ed77f4"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="org9fd6815"></a>

### Custom-file Settings

    (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
    (when (file-exists-p custom-file)
        (load custom-file))


<a id="orgdf54b87"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org0be843c"></a>

### Tabs Indentation Settings

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


<a id="org03907ab"></a>

### Env Settings

    (use-package exec-path-from-shell 
        :ensure t
        ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
        )
    (when (memq window-system '(mac ns x))
        (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org7d267f3"></a>

### Undo Settings

    (use-package undo-tree
        :init
        (global-undo-tree-mode)
        :ensure t
        :init (setq undo-tree-auto-save-history nil)
        )


<a id="org0a6ea2b"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
        recentf-max-saved-items 1000
        recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org9ef550d"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="orgd8babd8"></a>

### GC settings

    (setq gc-cons-threshold (* 64 1024 1024))
    (setq read-process-output-max (* 32 1024 1024))


<a id="org915c165"></a>

## UI Setup


<a id="org7063070"></a>

### Menu-bar Hide

    (menu-bar-mode nil)


<a id="orgbd07a70"></a>

### Tool-bar Hide

    (tool-bar-mode nil)
    (tool-bar-mode -1)


<a id="org218552b"></a>

### Scroll-bar Hide

    (scroll-bar-mode nil)


<a id="org6dbe93f"></a>

### Theme

    (use-package dracula-theme
        :ensure t
        )
    
    (load-theme 'dracula t)


<a id="org4dca561"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org625eae3"></a>

### FillColumn

    (setq-default fill-column 150)


<a id="org681d049"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="orgeef8f15"></a>

### Font

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="org0591942"></a>

### Mode Line

    (use-package nyan-mode
        :ensure t
        :init
        (setq nyan-animate-nyancat t)
        (setq nyan-wavy-trail t)
        (setq nyan-minimum-window-width 80)
        (setq nyan-bar-length 20)
        (nyan-mode))
    
    (use-package doom-modeline
        :vc (:fetcher github :repo seagle0128/doom-modeline)
        :init (doom-modeline-mode t)
        :config
        (setq doom-modeline-height 5)
        (custom-set-faces
            '(mode-line ((t (:family "Ubuntu Mono" :height:50))))
            '(mode-line-inactive ((t (:family "Ubuntu Mono" :height:50))))
            )
        (doom-modeline-def-modeline 'ownml
            '(bar matches buffer-info remote-host buffer-position misc-info major-mode)
            '(input-method buffer-encoding process vcs check))
        ;; Add to `doom-modeline-mode-hook` or other hooks
        (defun setup-custom-doom-modeline ()
            (doom-modeline-set-modeline 'ownml 'default))
        (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
        )


<a id="org09776cf"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
        :hook (dired-mode . all-the-icons-dired-mode)
        )


<a id="org915d5ec"></a>

### Tabs Setup

-   Centaur-Tabs

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


<a id="org75b9c00"></a>

### DashBoard Setup

    (use-package dashboard
        :config
        (dashboard-setup-startup-hook)
        (dashboard-modify-heading-icons '((recents . "file-text")
                                             (boomarks . "book")
                                             ))
        (setq dashboard-banner-logo-title "Life is happy")
        (setq dashboard-startup-banner (expand-file-name "banner.png" user-emacs-directory))
        (setq dashboard-image-banner-max-height 100)
        (setq dashboard-center-content t)
        (setq dashboard-set-heading-icons t)
        (setq dashboard-set-file-icons t)
        (setq dashboard-set-navigator t)
    
        (setq dashboard-items '((recents  . 5)
                                   (bookmarks . 5)
                                   (projects . 5)
                                   (agenda . 5)
                                   ))
        (setq dashboard-projects-switch-function 'projectile-switch-project-by-name)
        (setq dashboard-page-separator "\n\f\n")
        )
    
    (use-package page-break-lines)


<a id="org91d507b"></a>

## Which-Key Setup

    (use-package which-key
        :ensure t
        :config (which-key-mode)
        :bind ("M-m" . which-key-show-top-level)
        )


<a id="org5c677ea"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :bind ("C-x o" . switch-window)
        :config
        (setq switch-window-shortcut-style 'qwerty)
        )


<a id="org9a6db5f"></a>

## Delete Setup


<a id="org1818246"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
        :ensure t
        :bind (
                  ("C-c DEL" . hungry-delete-backward)
                  ("C-c d d" . hungry-delete-forward))
        )


<a id="org7b397ce"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="org077957b"></a>

## SmartParens

auto Symbol of completion

    (use-package smartparens
        :ensure t
        :config
        (smartparens-global-mode t)
        (require 'smartparens-config)
        (sp-local-pair 'elisp-mode "'" nil :actions nil)
        (sp-local-pair 'elisp-mode "`" nil :actions nil)
        )


<a id="orgab0d54a"></a>

## Company Setup

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


<a id="org025280e"></a>

### Company english helper

    (use-package company-english-helper
        :vc (:fetcher github :repo manateelazycat/company-english-helper)
        )


<a id="org7a3d724"></a>

## Nginx Setup

    (use-package nginx-mode)
    (use-package company-nginx)


<a id="org714e34c"></a>

## MarkDown Setup

    (use-package markdown-mode
        :ensure t
        :mode (("\\.md\\'" . gfm-mode)
                  ("README" . gfm-mode)
                  )
        :init (setq markdown-command "multimarkdown"))


<a id="org1a3d45f"></a>

## Projectile Setup

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
                        ".pytest_cache"
                        "__pycache__"
                        "build"
                        "elpa"
                        "node_modules"
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


<a id="orga734151"></a>

## Selected Setup

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


<a id="orgc996baf"></a>

## Command Completion For MiniBuffer

Command Interactive Completion ,eg : M-x


<a id="org7cf7661"></a>

### Ivy/Counsel/Swiper Setup

-   Ivy Setup

    generic completion mechanism
    
    -   Ivy
    
            (use-package ivy
                :ensure t
                :config
                (setq ivy-use-virtual-buffers t
                    enable-recursive-minibuffers t
                    )
                :bind(
                         ("C-c C-r" . ivy-resume)
                         )
                )

-   Counsel Setup

    command completion use ivy
    
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
    
    -   Show History Command in Counsel-M-x Minibuffer
    
        show history command need amx package
        
            (use-package amx
                :ensure t
                )

-   Swiper Setup

    text search use ivy
    
        (use-package swiper
            :bind(
                     ("C-s" . swiper)
                     ("C-'" . swiper-isearch-thing-at-point)
                     )
            )


<a id="org531d5b3"></a>

### orderless

Unordered search  in ivy search

    ;; add disorder search
    (use-package orderless
        :ensure t
        :config
        (setq ivy-re-builders-alist '((t . orderless-ivy-re-builder)))
        :ensure t
        :custom
        (completion-styles '(orderless basic))
        (completion-category-overrides '((file (styles basic partial-completion)))))
    (add-to-list 'ivy-highlight-functions-alist '(orderless-ivy-re-builder . orderless-ivy-highlight))


<a id="org8f155b7"></a>

### Helm Setup

    (use-package helm
        ;;  :config (helm-mode t)
        ;;  :bind("M-x" . helm-M-x)
        )


<a id="orgaaaaa95"></a>

## Iedit Setup

    (use-package iedit
        :bind("C-c e" . iedit-mode)
        )


<a id="org5864284"></a>

## Language Setup


<a id="org3fb2582"></a>

### LSP-Mode Setup

    (use-package lsp-mode
        :ensure t
        :hook (
                  (lsp-mode . lsp-enable-which-key-integration)
                  (lsp-mode-hook . lsp-lens-mode)
                  ;; (prog-mode . lsp-deferred)
                  ;; (prog-mode . (lambda()
                  ;;                  (unless (derived-mode-p 'emacs-lisp-mode) 'lsp-deferred)  ;; assign some mode in prog-mode not need lsp
                  ;;                  ))
                  )
        :commands lsp
        :bind
        (:map lsp-mode-map
            (("C-M-b" . lsp-find-implementation)
                ("M-RET" . lsp-execute-code-action)))
        :init (setq
                  lsp-keymap-prefix "C-c l"              ; this is for which-key integration documentation, need to use lsp-mode-map
                  read-process-output-max (* 1024 1024)  ; 1 mb
                  lsp-completion-provider :capf
                  lsp-completion-show-detail t
                  lsp-completion-show-kind t
                  lsp-idle-delay 0.500
                  lsp-vetur-validation-template nil
                  ;;          lsp-vetur-dev-log-level "DEBUG"
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
                  lsp-log-io nil
                  ;;        lsp-inhibit-message t
                  )
        (add-hook 'prog-mode-hook (lambda()
                                      (unless (derived-mode-p 'emacs-lisp-mode) (lsp-mode t))
                                      ))
        :config
        (setq lsp-groovy-server-file (expand-file-name "lsp-server/groovy-language-server/groovy-language-server-all.jar" user-emacs-directory))
        (setq lsp-groovy-classpath "/opt/homebrew/Cellar/groovy/4.0.15/libexec/lib/")
        (setq lsp-completion-enable-additional-text-edit nil)
        (setq lsp-intelephense-multi-root nil) ; don't scan unnecessary projects
        (with-eval-after-load 'lsp-intelephense
            (setf (lsp--client-multi-root (gethash 'iph lsp-clients)) nil))
        (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
        ;; (add-hook 'lsp-mode-hook
        ;;     (lambda()
        ;;         (add-hook 'before-save-hook 'lsp-format-buffer nil t)))
        )
    
    (use-package lsp-ui                                   ;;
        :commands lsp-ui-mode                               ;;
        :config                                             ;;
        (setq lsp-ui-doc-enable t)                          ;;
        (setq lsp-ui-doc-header t)                          ;;
        (setq lsp-ui-doc-include-signature t)               ;;
        (setq lsp-ui-doc-border (face-foreground 'default)) ;;
        (setq lsp-ui-sideline-enable nil)
        (setq lsp-ui-sideline-show-code-actions nil)          ;;
        (setq lsp-ui-sideline-show-diagnostics nil)         ;;
        ;;      (setq lsp-ui-sideline-delay 0.05)                  ;;
        (setq lsp-ui-doc-frame-parameters
            '((left . -1)
                 (top . -1)
                 (no-accept-focus . t)
                 (min-width . 0)
                 (width . 0)
                 (min-height . 0)
                 (height . 0)
                 (internal-border-width . 0)
                 (vertical-scroll-bars)
                 (horizontal-scroll-bars)
                 (left-fringe . 0)
                 (right-fringe . 0)
                 (menu-bar-lines . 0)
                 (tool-bar-lines . 0)
                 (line-spacing . 0.1)
                 (unsplittable . t)
                 (undecorated . t)
                 (minibuffer . nil)
                 (visibility . nil)
                 (mouse-wheel-frame . nil)
                 (no-other-frame . t)
                 (cursor-type)
                 (no-special-glyphs . t)))
        )
    (use-package lsp-ivy
        )

-   NOTE

    -   find the class/method in third library by keyword
    
        (lsp-ivy-workspace-symbol)


<a id="orga3ad964"></a>

### JAVA Setup

    (setq JAVA_HOME_PATH "/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/")
    (setenv "JAVA_HOME"  JAVA_HOME_PATH)
    (setq my-java-path (concat JAVA_HOME_PATH "bin/java"))
    (use-package lsp-java 
        :init
        (setq lsp-java-server-install-dir (expand-file-name "lsp-server/jdtls/" user-emacs-directory))
        (setq dap-java-test-runner (expand-file-name "eclipse.jdt.ls/test-runner/junit-platform-console-standalone.jar" lsp-java-server-install-dir))
        ;; lsp-java-jdt-download-url 
        (setq lsp-java-java-path my-java-path)
        (setq lombok-jar-path
            (expand-file-name "~/.m2/repository/org/projectlombok/lombok/1.18.26/lombok-1.18.26.jar"))
        (setq lsp-java-vmargs
            `("-Xmx2G"
                 "-XX:+UseG1GC"
                 "-XX:+UseStringDeduplication"
                 ,(concat "-javaagent:" lombok-jar-path)
                 ))
        (setq lsp-java-configuration-maven-user-settings (expand-file-name "~/.m2/settings.xml"))
        ;;        (setq lsp-java-format-settings-url "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml" lsp-java-format-settings-profile "GoogleStyle")
        (setq lsp-java-format-settings-url  (lsp--path-to-uri (expand-file-name "codestyle/eclipse-java-google-style.xml" user-emacs-directory)) lsp-java-format-settings-profile "GoogleStyle")
        :config
    
        (setq lsp-java-maven-download-sources t)
        (setq lsp-java-import-maven-enabled t)
        ;; gradle project use jdtls need write "id 'eclipse" in build.gradle
        (setq
            lsp-java-import-gradle-enabled t
            lsp-java-import-gradle-wrapper-enabled t
            lsp-java-signature-help-enabled nil  ;; ignore gradle checksum signature
            ;;        lsp-java-import-gradle-version "8.4"
            lsp-java-import-gradle-java-home JAVA_HOME_PATH
            ;;          lsp-java-import-gradle-home "/opt/homebrew/Cellar/gradle/8.4/"
            lsp-java-import-gradle-user-home "~/.m2/repository/")
        (setq lsp-java-implementations-code-lens-enabled t)
        (setq lsp-java-references-code-lens-enabled t)
        (setq lsp-java-autobuild-enabled t)
        (setq lsp-java-format-enabled t)
        (setq lsp-java-format-comments-enabled t)
        (setq lsp-java-configuration-update-build-configuration t)
        (setq lsp-java-trace-server t)
        (setq lsp-java-configuration-check-project-settings-exclusions t)
        (setq lsp-java-completion-guess-method-arguments t)
        (add-hook 'java-mode-hook 'lsp)
        ;; 只在java-mode save的时候 调用lsp-java-origanize-imports
        ;; (add-hook 'java-mode-hook
        ;;     (lambda()
        ;;         (add-hook 'before-save-hook 'lsp-java-organize-imports nil t)
        ;;         ))
    
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
    ;; https://github.com/m0smith/maven-pom-mode.git
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

-   Hot Deployment

    use spring-devtools , gradle no autocompile classes, so command: \`gradle bootJar -t\` or \`gradle -t classes processResources\` when \`gradle bootRun\`;


<a id="org2cd2b39"></a>

### Groovy Setup

    (use-package groovy-mode
        )


<a id="orge801e52"></a>

### Web-Mode Setup

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
    
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.ts[x]?\\'" . web-mode))
    (use-package js2-mode
        )
    (use-package json-mode
        )
    (use-package prettier-js
        :ensure t
        ;; :config
        ;; (setq prettier-js-args '(
        ;;                          "--print-width" "200"  ;;一行代码的最大字符数,默认是80
        ;;                          "--trailing-comma" "all"  ;; 尾部逗号处理
        ;;                          "--bracket-spacing" "false" ;; > 是否另起一行
        ;;                          ))
        )

react configuration reference: [configuration<sub>react</sub><sub>jsx</sub>](http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html#emacs_configuration_for_eslint_and_jsx)


<a id="orgd120590"></a>

### Javascript REPL

-   js-comint

    javascript REPL
    
        (use-package js-comint)


<a id="orgd1cf30e"></a>

### FlyCheck Setup

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


<a id="org9af054b"></a>

### Yasnippet Setup

    (use-package yasnippet
        :config (yas-global-mode)
        )
    (use-package yasnippet-snippets
        :vc (:fetcher github :repo AndreaCrotti/yasnippet-snippets)
        )
    ;; (use-package yasnippet-snippets :ensure t)


<a id="org5df74ff"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="orgeb4deb6"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="orge0066a9"></a>

## HttpClient Setup

    (use-package restclient
        :config
        (add-to-list 'company-backends 'company-restclient)
        )
    (use-package company-restclient
        :after(restclient-mode)
        )
    (use-package ob-restclient)
    (add-to-list 'auto-mode-alist '("\\.hpct\\'" . restclient-mode))


<a id="org02b8a66"></a>

## Undo-Tree Setup

    (use-package undo-tree
        :init (global-undo-tree-mode t)
        )


<a id="orgf237bc7"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
        :bind("C-;" . avy-goto-char)
        )


<a id="orgbcb3c37"></a>

## Org Setup


<a id="org370fc59"></a>

### Org Table Tidy Settings

    (with-eval-after-load 'org
        (defun org-buffer-face-mode-variable ()
            (interactive)
            (make-face 'width-font-face)
            (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
            (setq buffer-face-mode-face 'width-font-face)
            (buffer-face-mode))
        (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))


<a id="orgb83c568"></a>

### Pretty

    (use-package org-bullets
        :ensure t
        :hook((org-mode . org-bullets-mode)
                 (org-mode . org-indent-mode))
        )
    
    (set-face-attribute 'org-block nil :background
        (color-darken-name
            (face-attribute 'default :background) 3))


<a id="org64fd44a"></a>

### Org-babel support language

    (require 'ob-js)
    (org-babel-do-load-languages 'org-babel-load-languages
        '((js . t)
             (restclient . t))
        )
    (add-to-list 'org-babel-tangle-lang-exts '("js" . "js"))
    (defun ob-js-insert-session-header-arg (session)
        "Insert ob-js `SESSION' header argument.
    - `js-comint'
    - `skewer-mode'
    - `Indium'
    "
        (interactive (list (completing-read "ob-js session: "
                               '("js-comint" "skewer-mode" "indium"))))
        (org-babel-insert-header-arg
            "session"
            (pcase session
                ("js-comint" "\"*Javascript REPL*\"")
                ("skewer-mode" "\"*skewer-repl*\"")
                ("indium" "\"*JS REPL*\""))))
    (define-key org-babel-map (kbd "J") 'ob-js-insert-session-header-arg)


<a id="org0058183"></a>

### Org Agenda Setup

-   Config

        (global-set-key (kbd "C-c a") 'org-agenda)
        (global-set-key (kbd "C-c c") 'org-capture)
        (setq org-agenda-dir (expand-file-name "~/Desktop/gtd/"))
        (setq org-default-notes-file (concat org-agenda-dir "inbox.org"))
        (setq org-agenda-file-inbox (concat org-agenda-dir "inbox.org"))
        (setq org-agenda-file-gtd (concat org-agenda-dir "task.org"))
        (setq org-agenda-file-journal (concat org-agenda-dir "journal.org"))
        (setq org-agenda-files (list org-agenda-dir))
        (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
        (setq org-agenda-include-diary t)
        (setq org-capture-templates `(
                                         ("i" "input [inbox]" entry (file ,org-agenda-file-inbox) "* %i%?")
                                         ("c" "calendar [gtd]" entry (file+headline ,org-agenda-file-gtd "Calendar") "* TODO %i%? \nSCHEDULED: %^t")
                                         ("h" "Habit [gtd]" entry (file+headline ,org-agenda-file-gtd "Habits") "* HABI %i%? \nDEADLINE: %^t")
                                         ("p" "Projects [gtd]" entry (file+headline ,org-agenda-file-gtd "Projects") "* %i%?")
                                         ("I" "Incubate [gtd]" entry (file+headline ,org-agenda-file-gtd "Incubate") "* %i%?")
                                         ("j" "Journal [journal]" entry (file+datetree ,org-agenda-file-journal) "* %i%? \n%a")
                                         ))
        (setq org-todo-keywords
            '((sequence "TODO(t)" "STED(s)" "|" "DONE(d!/!)")
                 (sequence "WAIT(w@/!)" "INCU(i)" "HABI(h)" "|" "CNCL(c@/!)")
                 (sequence "BUGT(b!)" "|" "FIXT(f@/!)")))
        (setq org-todo-keyword-faces
            '(("TODO" . org-warning) ("STED" . "yellow")
                 ("WAIT" . "white") ("INCU" . "blue") ("HABI" . "green") ("CNCL" . (:foreground "blue" :weight bold))
                 ("BUGT" . "red") ("FIXT" . "orange")
                 ))
        (setq org-enforce-todo-dependencies t)
        (setq org-modules
            '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
        
        (setq org-highest-priority 1) 
        (setq org-default-priority 5)
        (setq org-lowest-priority 9)
        
        (use-package org-super-agenda
            :ensure t
            )
        
        (org-super-agenda-mode t)
        
        (use-package org-superstar
            :ensure t
            :after org
            :hook (org-mode . org-superstar-mode)
            :config
            (setq org-superstar-special-todo-items t))
        
        (defun add-property-with-date-captured ()
            "Add DATE_CAPTURED property to the current item."
            (interactive)
            (org-set-property "CREATE_DATE" (format-time-string "[%F %a %R]"))
            )
        
        (add-hook 'org-capture-before-finalize-hook 'add-property-with-date-captured)
        
        (defun process-gtd-action()
            (interactive)
            (find-file org-agenda-file-gtd)
            )
        (defun process-gtd-inbox()
            (interactive)
            (find-file org-agenda-file-inbox)
            )
        
        (defun process-gtd-journal()
            (interactive)
            (find-file org-agenda-file-journal)
            )
        
        (global-set-key (kbd "C-c d p") 'process-gtd-inbox)
        (global-set-key (kbd "C-c d a") 'process-gtd-action)
        (global-set-key (kbd "C-c d j") 'process-gtd-journal)
        
        ;; Change task state to STARTED when clocking in
        (setq org-clock-in-switch-to-state "STED")
        ;; Save clock data and notes in the LOGBOOK drawer
        (setq org-clock-into-drawer t)
        (setq org-clock-out-remove-zero-time-clocks t)
        (use-package org-pomodoro)
        (setq org-log-done 'time)
        (setq org-log-into-drawer t)
        (setq org-clock-persist 'history)
        (org-clock-persistence-insinuate)

-   Tag

        (setq org-tag-alist '(("@work" . ?w) ("@home" . ?h)
                                 ("@study" . ?s) ("@habit" . ?b)))
    
        ;; automatically DONE when all children are DONE
        (defun org-summary-todo (n-done n-not-done)
            "Switch entry to DONE when all subentries are done, to TODO otherwise."
            (let (org-log-done org-log-states)   ; turn off logging
                (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
        (add-hook 'org-after-todo-statistics-hook #'org-summary-todo)

-   note

    -   org-todo and record
    
        C-u C-c C-t :Prompt for a note and record a the time of the TODO state change


<a id="orgc2f8417"></a>

### Org Roam Setup

    (use-package org-roam
        :custom
        (org-roam-directory (file-truename "~/Desktop/note/"))
        (org-roam-dailies-directory "daily/")
        :bind (("C-c n l" . org-roam-buffer-toggle)
                  ("C-c n f" . org-roam-node-find)
                  ("C-c n g" . org-roam-graph)
                  ("C-c n i" . org-roam-node-insert)
                  ("C-c n c" . org-roam-capture)
                  ;; Dailies
                  ("C-c n j" . org-roam-dailies-capture-today)
                  )
        :bind-keymap
        ("C-c n d" . org-roam-dailies-map)
        :config
        ;; If you're using a vertical completion framework, you might want a more informative completion interface
        (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
        (org-roam-db-autosync-mode)
        (require 'org-roam-dailies)
        ;; If using org-roam-protocol
        (require 'org-roam-protocol)
        )
    
    (use-package org-roam-ui
        :vc (:fetcher "github" :repo "org-roam/org-roam-ui")
        :after org-roam
        :custom
        (org-roam-ui-sync-theme t)
        (org-roam-ui-follow t)
        (org-roam-ui-update-on-save t)
        )


<a id="orgb4a99ca"></a>

## Format Setup

    (setq +format-with-lsp nil)
    (use-package format-all
        :ensure t
        :hook ((elixir-mode . format-all-mode)
                  ;;              (prog-mode . format-all-mode)
                  )
        ;;      :init
        ;;      (setq formatters '((lsp-mode . "lsp-format-buffer")))
        :config
        (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
    
        ;;        (add-hook 'before-save-hook 'format-all-buffer)
    
        )
    
    (add-hook 'prog-mode-hook
        (lambda ()
            (unless (derived-mode-p 'lsp-mode)
                (add-hook 'before-save-hook 'format-all-buffer t t)
                )
            ))


<a id="org6d842e3"></a>

### Format Default Formatters Setup

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
                  ("_Angular" prettier)
                  ("_Flow" prettier)
                  ("_Gleam" gleam)
                  ("_Ledger" ledger-mode)
                  ("_Nginx" nginxfmt)
                  ("_Snakemake" snakefmt)))
        )


<a id="org92a9a06"></a>

## Youdao Translate Setup

    (use-package youdao-dictionary
        :init
        (setq url-automatic-caching t)
        (setq youdao-dictionary-search-history-file "~/.youdaohistory")
        )
    (global-set-key (kbd "C-c y w") 'youdao-dictionary-search-at-point+)
    (global-set-key (kbd "C-c y v") 'youdao-dictionary-play-voice-at-point)
    (global-set-key (kbd "C-c y s") 'youdao-dictionary-search-from-input)


<a id="org683937b"></a>

## Undo Tree Setup

    (use-package undo-tree
        )
    (global-undo-tree-mode t)


<a id="org2bd000a"></a>

## Org shortcut


<a id="org1bfd100"></a>

### Motion in Heading

-   Next Heading

    C-c C-n (org-next-visible-heading)

-   Previous Heading

    C-c C-p (org-next-visible-heading)

-   Next Same Level

    C-c C-f (org-forward-heading-same-level)

-   Previous Same Heading

    C-c C-b (org-backward-heading-same-level)

-   Previous Higher Heading

    C-c C-u (outline-up-heading)


<a id="org3ef07aa"></a>

### Editing Heading Level

-   Insert Previous Same Level Heading

    M-RET (org-meta-return)

-   Insert Next Same Level Heading

    C-RET (org-insert-heading-respect-contents)

-   Move Previous Heading

    M-UP (org-move-subtree-up)

-   Move Next Heading

    M-DOWN (org-move-subtree-down)

-   Promote Heading

    M-LEFT (org-do-promote)

-   Demote Heading

    M-RIGHT (org-do-demote)

-   Promote Heading and subtree

    M-S-LEFT (org-promote-subtree)

-   Demote Heading and subtree

    M-S-RIGHT (org-demote-subtree)


<a id="org88a436a"></a>

### Insert Org template

C-c C-, (org-insert-structure-template)

-   Insert Source Code Block

    Key "s in (org-insert-structure-template) list


<a id="orgac2daa6"></a>

### Other

-   StrikeThrough/DeleteLine

    command: (org-emphasize) ,next input character (+)

-   Insert Date and Time

    C-u C-c .

-   Disable Source Code

    C-c ; (org-toggle-comment)

-   Edit Source Code In New Buffer

    C-c ' (org-edit-special)

-   Org Export to Markdown

    (org-md-export-to-markdown)

-   Org Config File Reload

    (org-babel-load-file )


<a id="org01b80b8"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="org6fd1676"></a>

## Customize Your Configuration

write your configuration to ~/.emacs.d/configuration\\<sub>self.org</sub> , emacs autoload the file when emacs startup. 

