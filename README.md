
# Table of Contents

-   [Intro](#orgf0b1032)
    -   [Package Manager](#orgd450919)
        -   [ELPA Setup](#org0ce6baf)
        -   [Use-Package Setup](#org388ed76)
    -   [General Settings Setup](#org77b5789)
        -   [Window Settings](#org578d5d8)
        -   [Character Settings](#org6f95636)
        -   [BackUp Settings](#org4d83cc5)
        -   [Custom-file Settings](#org654e9b8)
        -   [Yes/No Shorthand Settings](#org545fc2e)
        -   [Tabs Indentation Settings](#orgec8c9b6)
        -   [Env Settings](#org83381bd)
        -   [Undo Settings](#org01a8d6f)
        -   [Recentf Settings](#org92b607a)
        -   [Show Startup Message](#org033fbbe)
    -   [UI Setup](#orgf62e459)
        -   [Menu-bar Hide](#org71b6fb3)
        -   [Tool-bar Hide](#org30824cb)
        -   [Scroll-bar Hide](#orgf2fa6ec)
        -   [Theme](#org72ba6ee)
        -   [Cursor](#orga69c356)
        -   [FillColumn](#org34247dc)
        -   [HighLight Line](#orgb2d8f51)
        -   [Font](#org5898531)
        -   [Mode Line](#org5929c2e)
        -   [Icons](#org0c753ec)
        -   [Tabs Setup](#orge09a7e4)
        -   [DashBoard Setup](#orgd08a198)
    -   [Which-Key Setup](#org92713bf)
    -   [Switch-Window](#orgfe20d9e)
    -   [Delete Setup](#orge05f217)
        -   [Hungry-delete](#orgb224d9d)
        -   [Delete Slection](#orgbd46ec5)
    -   [SmartParens](#org89e4448)
    -   [Company Setup](#org2d8a03c)
    -   [Nginx Setup](#org97a7d86)
    -   [MarkDown Setup](#org8f518cd)
    -   [Projectile Setup](#org0855097)
    -   [Selected Setup](#org080e15c)
    -   [Command Completion For MiniBuffer](#orgcf3b07d)
        -   [Ivy/Counsel/Swiper Setup](#org6ab6e8f)
    -   [Iedit Setup](#orga268cc8)
    -   [Language Setup](#org5d2862b)
        -   [LSP-Mode Setup](#org782a88e)
        -   [Web-Mode Setup](#org7aeff0e)
        -   [Javascript REPL](#org050b5f2)
        -   [FlyCheck Setup](#orgd01787c)
        -   [Yasnippet Setup](#org94483ae)
        -   [Magit Setup](#org11c1403)
        -   [HideShow Setup](#org37a519a)
    -   [Undo-Tree Setup](#orgaa9c2b8)
    -   [Avy SetUp](#org21d563a)
    -   [Org Setup](#orgdcf0417)
        -   [Org Table Tidy Settings](#org9399ad2)
        -   [Pretty](#orgecaae07)
        -   [Org-babel support language](#org7f51539)
    -   [Format Setup](#org3bb979a)
        -   [Format Default Formatters Setup](#orgc2fc0ef)
    -   [Org shortcut](#org6df1132)
        -   [Motion in Heading](#org7b4e05a)
        -   [Editing Heading Level](#org80d0188)
        -   [Insert Org template](#orgb815ae1)
        -   [Other](#org8373792)
    -   [Installation](#org00dbd9c)
    -   [Customize Your Configuration](#org1dfa657)



<a id="orgf0b1032"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="orgd450919"></a>

## Package Manager


<a id="org0ce6baf"></a>

### ELPA Setup

set repository to tsinghua

        (require 'package)
        (if (boundp 'package-archives-spec)
      (setq package-archives package-archives-spec)
      (setq package-archives '(
          ("gnu" . "https://elpa.gnu.org/packages/")
          ("melpa" . "https://melpa.org/packages/")
          ("org" . "https://orgmode.org/elpa/")
        ;;  ("melpa-stable" . "https://stable.melpa.org/packages/")
        ))
      )
        (unless (
      bound-and-true-p package--initialized)
    (package-initialize))
    
        (unless package-archive-contents
    (package-refresh-contents))


<a id="org388ed76"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    
    (setq package-enable-at-startup nil)
    (setq use-package-always-ensure t)


<a id="org77b5789"></a>

## General Settings Setup


<a id="org578d5d8"></a>

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


<a id="org6f95636"></a>

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


<a id="org4d83cc5"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="org654e9b8"></a>

### Custom-file Settings

    (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
    (when (file-exists-p custom-file)
      (load custom-file))


<a id="org545fc2e"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="orgec8c9b6"></a>

### Tabs Indentation Settings

    ;;  (use-package smart-tabs-mode)
      (setq tab-width 2)
      (setq-default tab-width 2)
      (setq-default indent-line-function 2)
      (setq-default lisp-indent-offset 2)
      (setq-default sgml-basic-offset 2)
      ;;  (smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby 'nxml)
      (setq c-basic-offset 2)
      ;; (setq tab-always-indent)
      (setq-default indent-tabs-mode nil)
      ;; nxml-mode
      (setq
        nxml-child-indent 2
        nxml-attribute-indent 2
        nxml-slash-auto-complete-flag t)


<a id="org83381bd"></a>

### Env Settings

    (use-package exec-path-from-shell 
      :ensure t
      ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
      )
     (when (memq window-system '(mac ns x))
       (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org01a8d6f"></a>

### Undo Settings

    (use-package undo-tree
      :init
      (global-undo-tree-mode)
      :ensure t
      :init (setq undo-tree-auto-save-history nil)
      )


<a id="org92b607a"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
      recentf-max-saved-items 1000
      recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org033fbbe"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="orgf62e459"></a>

## UI Setup


<a id="org71b6fb3"></a>

### Menu-bar Hide

    (menu-bar-mode nil)


<a id="org30824cb"></a>

### Tool-bar Hide

    (tool-bar-mode nil)
    (tool-bar-mode -1)


<a id="orgf2fa6ec"></a>

### Scroll-bar Hide

    (scroll-bar-mode nil)


<a id="org72ba6ee"></a>

### Theme

    (use-package dracula-theme
      :ensure t
      )
    
    (load-theme 'dracula t)


<a id="orga69c356"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org34247dc"></a>

### FillColumn

    (setq-default fill-column 150)


<a id="orgb2d8f51"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org5898531"></a>

### Font

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="org5929c2e"></a>

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
      ;; Add to `doom-modeline-mode-hook` or other hooks
      (defun setup-custom-doom-modeline ()
        (doom-modeline-set-modeline 'ownml 'default))
      (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
      )


<a id="org0c753ec"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
      :hook (dired-mode . all-the-icons-dired-mode)
      )


<a id="orge09a7e4"></a>

### Tabs Setup

-   Centaur-Tabs

        (use-package centaur-tabs
          :demand
          :hook
          (dired-mode . centaur-tabs-local-mode)
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


<a id="orgd08a198"></a>

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


<a id="org92713bf"></a>

## Which-Key Setup

    (use-package which-key
      :ensure t
      :config (which-key-mode)
      :bind ("M-m" . which-key-show-top-level)
      )


<a id="orgfe20d9e"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
      :ensure t
      :bind ("C-x o" . switch-window)
      :config
      (setq switch-window-shortcut-style 'qwerty)
      )


<a id="orge05f217"></a>

## Delete Setup


<a id="orgb224d9d"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :ensure t
      :bind (
              ("C-c DEL" . hungry-delete-backward)
              ("C-c d" . hungry-delete-forward))
      )


<a id="orgbd46ec5"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="org89e4448"></a>

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


<a id="org2d8a03c"></a>

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
    ;; (use-package company-box
    ;;   :hook (company-mode . company-box-mode))


<a id="org97a7d86"></a>

## Nginx Setup

    (use-package nginx-mode)
    (use-package company-nginx)


<a id="org8f518cd"></a>

## MarkDown Setup

    (use-package markdown-mode
      :ensure t
      :mode (("\\.md\\'" . gfm-mode)
              ("README" . gfm-mode)
              )
      :init (setq markdown-command "multimarkdown"))


<a id="org0855097"></a>

## Projectile Setup

    (use-package projectile
      :init
      (projectile-global-mode)
      :bind(
             ("C-x p f" . projectile-find-file)
             ("C-x p p" . projectile-switch-project)
             )
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


<a id="org080e15c"></a>

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


<a id="orgcf3b07d"></a>

## Command Completion For MiniBuffer

Command Interactive Completion ,eg : M-x


<a id="org6ab6e8f"></a>

### Ivy/Counsel/Swiper Setup

-   Ivy Setup

    generic completion mechanism
    
    -   Ivy
    
            (use-package ivy
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


<a id="orga268cc8"></a>

## Iedit Setup

    (use-package iedit
      :bind("C-c e" . iedit-mode)
      )


<a id="org5d2862b"></a>

## Language Setup


<a id="org782a88e"></a>

### LSP-Mode Setup

    (use-package lsp-mode
      :ensure t
      :hook (
              (lsp-mode . lsp-enable-which-key-integration)
              (lsp-mode-hook . lsp-lens-mode)
              (prog-mode . lsp-deferred)
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
    
              )
      :config
      (setq lsp-completion-enable-additional-text-edit nil)
      (setq lsp-intelephense-multi-root nil) ; don't scan unnecessary projects
      (with-eval-after-load 'lsp-intelephense
        (setf (lsp--client-multi-root (gethash 'iph lsp-clients)) nil))
      (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
      ;; (add-hook 'lsp-mode-hook
      ;;           (lambda()
      ;;             (add-hook 'before-save-hook 'lsp-format-buffer nil t)))
      )
    
    (use-package lsp-ui
      :commands lsp-ui-mode
      :config
      (setq lsp-ui-doc-enable nil)
      (setq lsp-ui-doc-header t)
      (setq lsp-ui-doc-include-signature t)
      (setq lsp-ui-doc-border (face-foreground 'default))
      (setq lsp-ui-sideline-show-code-actions t)
      (setq lsp-ui-sideline-delay 0.05))


<a id="org7aeff0e"></a>

### Web-Mode Setup

    (use-package web-mode
      :config
      (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
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


<a id="org050b5f2"></a>

### Javascript REPL

-   js-comint

    javascript REPL
    
        (use-package js-comint)

-   skewer

    live web REPL ,support javascript/css/html
    
        (use-package simple-httpd)
        (use-package skewer-mode)

-   indium

    javascript developer environment for emacs
    
        (use-package indium)


<a id="orgd01787c"></a>

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


<a id="org94483ae"></a>

### Yasnippet Setup

    (use-package yasnippet
      :config (yas-global-mode)
      )
    (use-package yasnippet-snippets :ensure t)


<a id="org11c1403"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="org37a519a"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="orgaa9c2b8"></a>

## Undo-Tree Setup

    (use-package undo-tree
      :init (global-undo-tree-mode t)
      )


<a id="org21d563a"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
      :bind("C-;" . avy-goto-char)
      )


<a id="orgdcf0417"></a>

## Org Setup


<a id="org9399ad2"></a>

### Org Table Tidy Settings

    (with-eval-after-load 'org
      (defun org-buffer-face-mode-variable ()
        (interactive)
        (make-face 'width-font-face)
        (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
        (setq buffer-face-mode-face 'width-font-face)
        (buffer-face-mode))
      (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))


<a id="orgecaae07"></a>

### Pretty

    (use-package org-bullets
      :ensure t
      :hook((org-mode . org-bullets-mode)
             (org-mode . org-indent-mode))
      ;;  (add-hook 'org-mode-hook #'org-bullets-mode)
      ;;  (add-hook 'org-mode-hook #'org-indent-mode)
      )


<a id="org7f51539"></a>

### Org-babel support language

    (require 'ob-js)
    (add-to-list 'org-babel-load-languages '(js . t))
    (org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)
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


<a id="org3bb979a"></a>

## Format Setup

    (use-package format-all
      :ensure t
      :hook ((elixir-mode . format-all-mode)
              (prog-mode . format-all-mode))
      ;; :init
      ;;  (setq formatters '((lsp-mode . "lsp-format-buffer")))
      :config
      (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
      (add-hook 'before-save-hook 'format-all-buffer)
      )


<a id="orgc2fc0ef"></a>

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


<a id="org6df1132"></a>

## Org shortcut


<a id="org7b4e05a"></a>

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


<a id="org80d0188"></a>

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


<a id="orgb815ae1"></a>

### Insert Org template

C-c C-, (org-insert-structure-template)

-   Insert Source Code Block

    Key "s in (org-insert-structure-template) list


<a id="org8373792"></a>

### Other

-   StrikeThrough/DeleteLine

    command: (org-emphasize) ,next input character (+)

-   Disable Source Code

    C-c ; (org-toggle-comment)

-   Edit Source Code In New Buffer

    C-c ' (org-edit-special)


<a id="org00dbd9c"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="org1dfa657"></a>

## Customize Your Configuration

write your configuration to ~/.emacs.d/configuration<sub>self.org</sub> . emacs autoload the file when emacs startup

