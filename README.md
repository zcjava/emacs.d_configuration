
# Table of Contents

-   [Intro](#org4124be7)
    -   [Package Manager](#org661fe69)
        -   [ELPA Setup](#orgc4ad16e)
        -   [Use-Package Setup](#orgeff9541)
    -   [General Settings Setup](#org34c224c)
        -   [Window Settings](#org5722563)
        -   [Character Settings](#org3ab268b)
        -   [BackUp Settings](#org3575b1e)
        -   [Custom-file Settings](#orgb147dcf)
        -   [Yes/No Shorthand Settings](#orgc7355aa)
        -   [Tabs Indentation Settings](#orgda83344)
        -   [Env Settings](#org5a5a221)
        -   [Undo Settings](#org48fe018)
        -   [Recentf Settings](#org02cabd6)
        -   [Show Startup Message](#orgbd5516a)
    -   [UI Setup](#org281dfc7)
        -   [Menu-bar Hide](#org2438d87)
        -   [Tool-bar Hide](#orged6e508)
        -   [Scroll-bar Hide](#org8b738ca)
        -   [Theme](#orgee97c84)
        -   [Cursor](#orgf5bd0ca)
        -   [HighLight Line](#orgb6f3a8f)
        -   [Font](#org43aab96)
        -   [Mode Line](#org6039775)
        -   [Icons](#orgc3bc6c7)
        -   [Tabs Setup](#org04950cf)
        -   [DashBoard Setup](#orgdefb217)
    -   [Which-Key Setup](#orgf6494cd)
    -   [Switch-Window](#org053d25a)
    -   [Delete Setup](#org952089d)
        -   [Hungry-delete](#org56811ee)
        -   [Delete Slection](#org707aefa)
    -   [SmartParens](#org420db6e)
    -   [Company Setup](#org855a4cb)
    -   [MarkDown Setup](#orge757a98)
    -   [Projectile Setup](#org56412f2)
    -   [Format Setup](#orgcc627c2)
    -   [Selected Setup](#org2520b9c)
    -   [Command Completion For MiniBuffer](#orgff20c72)
        -   [Ivy/Counsel/Swiper Setup](#org0cdf210)
    -   [Iedit Setup](#org42cc94c)
    -   [Language Setup](#org21aee85)
        -   [LSP-Mode Setup](#orgecaf2ab)
        -   [Web-Mode Setup](#org37108b5)
        -   [FlyCheck Setup](#org3699e06)
        -   [Yasnippet Setup](#orgbce8662)
        -   [Magit Setup](#org630de55)
        -   [HideShow Setup](#orgcfae75f)
    -   [Undo-Tree Setup](#org93da14c)
    -   [Avy SetUp](#org2205206)
    -   [Org Setup](#org462b3d4)
        -   [Org Table Tidy Settings](#orgb4a5bcb)
        -   [Pretty](#org1e3e5f0)
    -   [Org shortcut](#org70935c5)
        -   [Motion in Heading](#orge5304b0)
        -   [Editing Heading Level](#org2b1768a)
        -   [Insert Org template](#org5507c21)
        -   [Other](#orgc68464b)
    -   [Installation](#org148f43d)
    -   [Customize Your Configuration](#orga188125)



<a id="org4124be7"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="org661fe69"></a>

## Package Manager


<a id="orgc4ad16e"></a>

### ELPA Setup

set repository to tsinghua

    (require 'package)
    (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                             ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                             ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                             ;;("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
                             ;;("melpa-stable" . "http://elpa.emacs-china.org/stable-melpa/")
                             ))
    (unless (bound-and-true-p package--initialized)
      (package-initialize)) 
    
    (unless package-archive-contents
      (package-refresh-contents))


<a id="orgeff9541"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    
    (setq package-enable-at-startup nil)
    (setq use-package-always-ensure t)


<a id="org34c224c"></a>

## General Settings Setup


<a id="org5722563"></a>

### Window Settings

-   Window Maximized

        (add-to-list 'default-frame-alist '(fullscreen . maximized))

-   Zoom

    window auto Zoom,current window Larger display
    
        (use-package zoom
          :ensure t
          :init
          (setq zoom-size '(0.718 . 0.718))
          )
        (global-set-key (kbd "C-c z") 'zoom)


<a id="org3ab268b"></a>

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


<a id="org3575b1e"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="orgb147dcf"></a>

### Custom-file Settings

    (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
    (when (file-exists-p custom-file)
      (load custom-file))


<a id="orgc7355aa"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="orgda83344"></a>

### Tabs Indentation Settings

    (use-package smart-tabs-mode)
    (setq tab-width 4)
    (setq-default tab-width 4)
    (smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby 'nxml)
    (setq c-basic-offset 4)
    ;; (setq tab-always-indent)
    (setq-default indent-tabs-mode nil)
    ;; nxml-mode
    (setq
     nxml-child-indent 4
     nxml-attribute-indent 4
     nxml-slash-auto-complete-flag t)


<a id="org5a5a221"></a>

### Env Settings

    (use-package exec-path-from-shell
      :ensure t
      ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
      )
    (when (memq window-system '(mac ns x))
      (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org48fe018"></a>

### Undo Settings

    (use-package undo-tree
      :ensure t
      :init (setq undo-tree-auto-save-history nil)
      )
    (global-undo-tree-mode t)


<a id="org02cabd6"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
     recentf-max-saved-items 1000
     recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="orgbd5516a"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org281dfc7"></a>

## UI Setup


<a id="org2438d87"></a>

### Menu-bar Hide

    (menu-bar-mode nil)


<a id="orged6e508"></a>

### Tool-bar Hide

    (tool-bar-mode nil)
    (tool-bar-mode -1)


<a id="org8b738ca"></a>

### Scroll-bar Hide

    (scroll-bar-mode nil)


<a id="orgee97c84"></a>

### Theme

    (use-package dracula-theme
      :ensure t
      )
    
    (load-theme 'dracula t)


<a id="orgf5bd0ca"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="orgb6f3a8f"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org43aab96"></a>

### Font

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="org6039775"></a>

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


<a id="orgc3bc6c7"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
      :hook (dired-mode . all-the-icons-dired-mode)
      )


<a id="org04950cf"></a>

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


<a id="orgdefb217"></a>

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
      (setq dashboard-projects-switch-function 'counsel-projectile-switch-project-by-name)
      (setq dashboard-page-separator "\n\f\n")
      )
    
    (use-package page-break-lines)


<a id="orgf6494cd"></a>

## Which-Key Setup

    (use-package which-key
      :ensure t
      :config (which-key-mode)
      :bind ("M-m" . which-key-show-top-level) 
    )


<a id="org053d25a"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :config
        (setq switch-window-shortcut-style 'qwerty)
      )
    (global-set-key (kbd "C-x o") 'switch-window)


<a id="org952089d"></a>

## Delete Setup


<a id="org56811ee"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :ensure t
      :bind (
               ("C-c DEL" . hungry-delete-backward)
               ("C-c d" . hungry-delete-forward))
    )


<a id="org707aefa"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="org420db6e"></a>

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


<a id="org855a4cb"></a>

## Company Setup

    (use-package company
      :ensure t
      :config
      (company-mode t)
      :bind (
             :map company-active-map
             (("C-n"   . company-select-next)
              ("C-p"   . company-select-previous)
              ("C-d"   . company-show-doc-buffer)
              ("<tab>" . company-complete))
             )
      )


<a id="orge757a98"></a>

## MarkDown Setup

    (use-package markdown-mode
      :ensure t
      :mode (("\\.md\\'" . gfm-mode)
             ("README" . gfm-mode)
             )
      :init (setq markdown-command "multimarkdown"))


<a id="org56412f2"></a>

## Projectile Setup

    (use-package projectile
      :bind(
            ("C-x p f" . projectile-find-file)
            ("C-x p p" . projectile-switch-project)
            )
      :config
      (projectile-global-mode)
      (setq
       projectile-indexing-method 'hybrid
       ;;hybird, load .projectile and .gitignore ignorefile,Priority load .projectile
       ;;indexing default 'alien ,only load .gitignore
       ;;indexing 'native only load .projectile
       ;;.projectile rule: ignore: -/xxx ; exclude ignore: !/xxx ;
    
       projectile-sort-order 'recentf-active
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


<a id="orgcc627c2"></a>

## Format Setup

    (use-package format-all                                                                                                        
    :ensure t
    :hook ((elixir-mode . format-all-mode)
    (prog-mode . format-all-mode))
    :init
    (setq formatters '((lsp-mode . "lsp-format-buffer")))
    :config
    (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
    )


<a id="org2520b9c"></a>

## Selected Setup

    (use-package expand-region
      )
    (global-set-key (kbd "C-=") 'er/expand-region)


<a id="orgff20c72"></a>

## Command Completion For MiniBuffer

Command Interactive Completion ,eg : M-x 


<a id="org0cdf210"></a>

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


<a id="org42cc94c"></a>

## Iedit Setup

    (use-package iedit
      :bind("C-c e" . iedit-mode)
      )


<a id="org21aee85"></a>

## Language Setup


<a id="orgecaf2ab"></a>

### LSP-Mode Setup

    (use-package lsp-mode
      :ensure t
      :hook (
             (lsp-mode . lsp-enable-which-key-integration)
             (nxml-mode . lsp)     
             (web-mode . lsp)
             (lsp-mode-hook . lsp-lens-mode)
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
             lsp-idle-delay 0.500
             lsp-vetur-validation-template nil
             lsp-vetur-dev-log-level "DEBUG"
             lsp-vetur-format-default-formatter-css "none"
             lsp-vetur-format-default-formatter-html "none"
             lsp-vetur-format-default-formatter-js "none"
             lsp-headerline-breadcrumb-enable nil
             )
      :config
      (setq lsp-completion-enable-additional-text-edit nil)
      (setq lsp-intelephense-multi-root nil) ; don't scan unnecessary projects
      (with-eval-after-load 'lsp-intelephense
        (setf (lsp--client-multi-root (gethash 'iph lsp-clients)) nil))
      (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
      (add-hook 'lsp-mode-hook
                (lambda()
                  (add-hook 'before-save-hook 'lsp-format-buffer nil t)))
      )


<a id="org37108b5"></a>

### Web-Mode Setup

    (use-package web-mode
      :ensure t
    
      )


<a id="org3699e06"></a>

### FlyCheck Setup

    (use-package flycheck
      :init (global-flycheck-mode)
      :config
      (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
      )


<a id="orgbce8662"></a>

### Yasnippet Setup

    (use-package yasnippet
      :config (yas-global-mode)
      )
    (use-package yasnippet-snippets :ensure t)


<a id="org630de55"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="orgcfae75f"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="org93da14c"></a>

## Undo-Tree Setup

    (use-package undo-tree
      :init (global-undo-tree-mode t)
      )


<a id="org2205206"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
      :bind("C-;" . avy-goto-char)
    )


<a id="org462b3d4"></a>

## Org Setup


<a id="orgb4a5bcb"></a>

### Org Table Tidy Settings

    (with-eval-after-load 'org
      (defun org-buffer-face-mode-variable ()
        (interactive)
        (make-face 'width-font-face)
        (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
        (setq buffer-face-mode-face 'width-font-face)
        (buffer-face-mode))
      (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))


<a id="org1e3e5f0"></a>

### Pretty

    (use-package org-bullets
     :ensure t
     :hook((org-mode . org-bullets-mode)
     (org-mode . org-indent-mode))
    ;;  (add-hook 'org-mode-hook #'org-bullets-mode)
    ;;  (add-hook 'org-mode-hook #'org-indent-mode)
      )


<a id="org70935c5"></a>

## Org shortcut


<a id="orge5304b0"></a>

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


<a id="org2b1768a"></a>

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


<a id="org5507c21"></a>

### Insert Org template

C-c C-, (org-insert-structure-template)

-   Insert Source Code Block

    Key "s in (org-insert-structure-template) list


<a id="orgc68464b"></a>

### Other

-   StrikeThrough/DeleteLine

    command: (org-emphasize) ,next input character (+)

-   Disable Source Code

    C-c ; (org-toggle-comment)

-   Edit Source Code In New Buffer

    C-c ' (org-edit-special)


<a id="org148f43d"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="orga188125"></a>

## Customize Your Configuration

write your configuration to ~/.emacs.d/configuration<sub>self.org</sub> . emacs autoload the file when emacs startup

