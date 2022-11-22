
# Table of Contents

-   [Intro](#orgae97915)
    -   [Package Manager](#org9955364)
        -   [ELPA Setup](#orge288806)
        -   [Use-Package Setup](#org76c9a15)
    -   [General Settings Setup](#org7c642b7)
        -   [Window Settings](#org8c82a14)
        -   [Character Settings](#orgfbc351f)
        -   [BackUp Settings](#org501b1f9)
        -   [Custom-file Settings](#orga81600a)
        -   [Yes/No Shorthand Settings](#org0cb0bb6)
        -   [Tabs Indentation Settings](#orgb49d286)
        -   [Env Settings](#org5424fe0)
        -   [Undo Settings](#org9f89f98)
        -   [Show Startup Message](#org477db66)
    -   [UI Setup](#org15cf1a4)
        -   [Menu-bar Hide](#orge8302c6)
        -   [Tool-bar Hide](#org095c8d4)
        -   [Scroll-bar Hide](#org8588a59)
        -   [Theme](#orgb3de413)
        -   [Cursor](#orgf203f5b)
        -   [HighLight Line](#org9f9abe0)
        -   [Font](#org4c04c6a)
        -   [Mode Line](#org6d6e9db)
        -   [Icons](#orgbaa44a2)
        -   [Tabs Setup](#org2a04815)
    -   [Which-Key Setup](#orged61169)
    -   [Switch-Window](#org22c3c6d)
    -   [Delete Setup](#org9fdac07)
        -   [Hungry-delete](#orgcaa66b5)
        -   [Delete Slection](#orgff618ba)
    -   [SmartParens](#orgfcedf44)
    -   [Company Setup](#org701c682)
    -   [MarkDown Setup](#org002b6e3)
    -   [Projectile Setup](#org4e519eb)
    -   [Format Setup](#org5c454d7)
    -   [Selected Setup](#org70e6240)
    -   [Command Completion For MiniBuffer](#orgf432ffe)
        -   [Ivy/Counsel/Swiper Setup](#org8d3c8f5)
    -   [Iedit Setup](#org53cd169)
    -   [Language Setup](#org54dbd4d)
        -   [Web-Mode Setup](#orga47ee04)
    -   [Org Setup](#orgf3c1f5e)
        -   [Org Table Tidy Settings](#orgdbaeac2)
        -   [Pretty](#org80b424c)
    -   [Org shortcut](#orgd970d91)
        -   [Motion in Heading](#orge9baa1f)
        -   [Editing Heading Level](#org6d29dff)
        -   [Insert Org template](#org0500e65)
        -   [Other](#org8dd76cb)
    -   [Installation](#orgfd5be3b)



<a id="orgae97915"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="org9955364"></a>

## Package Manager


<a id="orge288806"></a>

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


<a id="org76c9a15"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    
    (setq package-enable-at-startup nil)
    (setq use-package-always-ensure t)


<a id="org7c642b7"></a>

## General Settings Setup


<a id="org8c82a14"></a>

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


<a id="orgfbc351f"></a>

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


<a id="org501b1f9"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="orga81600a"></a>

### Custom-file Settings

    (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
    (when (file-exists-p custom-file)
      (load custom-file))


<a id="org0cb0bb6"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="orgb49d286"></a>

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


<a id="org5424fe0"></a>

### Env Settings

    (use-package exec-path-from-shell
      :ensure t
      ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
      )
    (when (memq window-system '(mac ns x))
      (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org9f89f98"></a>

### Undo Settings

    (use-package undo-tree
      :ensure t
      :init (setq undo-tree-auto-save-history nil)
      )
    (global-undo-tree-mode t)


<a id="org477db66"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org15cf1a4"></a>

## UI Setup


<a id="orge8302c6"></a>

### Menu-bar Hide

    (menu-bar-mode nil)


<a id="org095c8d4"></a>

### Tool-bar Hide

    (tool-bar-mode nil)
    (tool-bar-mode -1)


<a id="org8588a59"></a>

### Scroll-bar Hide

    (scroll-bar-mode nil)


<a id="orgb3de413"></a>

### Theme

    (use-package dracula-theme
      :ensure t
      )
    
    (load-theme 'dracula t)


<a id="orgf203f5b"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org9f9abe0"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org4c04c6a"></a>

### Font

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="org6d6e9db"></a>

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


<a id="orgbaa44a2"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
      :hook (dired-mode . all-the-icons-dired-mode)
      )


<a id="org2a04815"></a>

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
                )
          )


<a id="orged61169"></a>

## Which-Key Setup

    (use-package which-key
      :ensure t  
      :bind ("M-m" . which-key-show-top-level) 
    )
    (which-key-mode)


<a id="org22c3c6d"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :config
        (setq switch-window-shortcut-style 'qwerty)
      )
    (global-set-key (kbd "C-x o") 'switch-window)


<a id="org9fdac07"></a>

## Delete Setup


<a id="orgcaa66b5"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :ensure t
      :bind (
               ("C-c DEL" . hungry-delete-backward)
               ("C-c d" . hungry-delete-forward))
    )


<a id="orgff618ba"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="orgfcedf44"></a>

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


<a id="org701c682"></a>

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


<a id="org002b6e3"></a>

## MarkDown Setup

    (use-package markdown-mode
      :ensure t
      :mode (("\\.md\\'" . gfm-mode)
             ("README" . gfm-mode)
             )
      :init (setq markdown-command "multimarkdown"))


<a id="org4e519eb"></a>

## Projectile Setup

    (use-package projectile
      :config
      (projectile-global-mode)
      (setq projectile-indexing-method 'native)
      (setq projectile-enable-caching t)
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


<a id="org5c454d7"></a>

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


<a id="org70e6240"></a>

## Selected Setup

    (use-package expand-region
      )
    (global-set-key (kbd "C-=") 'er/expand-region)


<a id="orgf432ffe"></a>

## Command Completion For MiniBuffer

Command Interactive Completion ,eg : M-x 


<a id="org8d3c8f5"></a>

### Ivy/Counsel/Swiper Setup

-   Ivy Setup

    generic completion mechanism
    
    -   Ivy
    
            (use-package ivy
              :config
              (setq ivy-use-virtual-buffers t
                    enable-recursive-minibuffers t)
              :bind(
                    ("C-c C-r" . ivy-resume)
                    )
              )
    
    -   Ivy-Rich
    
        display more infomation in ivy buffer
        
            (use-package ivy-rich
              :init
              (ivy-rich-mode 1))

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


<a id="org53cd169"></a>

## Iedit Setup

    (use-package iedit)


<a id="org54dbd4d"></a>

## Language Setup


<a id="orga47ee04"></a>

### Web-Mode Setup

    (use-package web-mode
      :ensure t
    
      )


<a id="orgf3c1f5e"></a>

## Org Setup


<a id="orgdbaeac2"></a>

### Org Table Tidy Settings

    (with-eval-after-load 'org
      (defun org-buffer-face-mode-variable ()
        (interactive)
        (make-face 'width-font-face)
        (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
        (setq buffer-face-mode-face 'width-font-face)
        (buffer-face-mode))
      (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))


<a id="org80b424c"></a>

### Pretty

    (use-package org-bullets
     :ensure t
     :hook((org-mode . org-bullets-mode)
     (org-mode . org-indent-mode))
    ;;  (add-hook 'org-mode-hook #'org-bullets-mode)
    ;;  (add-hook 'org-mode-hook #'org-indent-mode)
      )


<a id="orgd970d91"></a>

## Org shortcut


<a id="orge9baa1f"></a>

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


<a id="org6d29dff"></a>

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


<a id="org0500e65"></a>

### Insert Org template

C-c C-, (org-insert-structure-template)

-   Insert Source Code Block

    Key "s in (org-insert-structure-template) list


<a id="org8dd76cb"></a>

### Other

-   StrikeThrough/DeleteLine

    command: (org-emphasize) ,next input character (+)

-   Disable Source Code

    C-c ; (org-toggle-comment)

-   Edit Source Code In New Buffer

    C-c ' (org-edit-special)


<a id="orgfd5be3b"></a>

## Installation

    git clone <this repo url> ~/.emacs.d

