
# Table of Contents

-   [Intro](#org32616b2)
    -   [Package Manager](#org00407a1)
        -   [ELPA Setup](#orgbf9c2d6)
        -   [Use-Package Setup](#org4858b62)
    -   [General Settings Setup](#orgb92f93a)
        -   [Window Settings](#orgd815d59)
        -   [Character Settings](#orgebd9ca8)
        -   [BackUp Settings](#org5af45fd)
        -   [Custom-file Settings](#orgb4df2d1)
        -   [Yes/No Shorthand Settings](#orgaa57cdd)
        -   [Tabs Indentation Settings](#org2811d21)
        -   [Env Settings](#org5b11129)
        -   [Undo Settings](#org428757c)
        -   [Show Startup Message](#org98892d2)
    -   [UI Setup](#org0d9af62)
        -   [Theme](#org9000aaa)
        -   [Cursor](#org41ea2c8)
        -   [Show Current line HighLight](#org6c9d0f5)
        -   [Font](#orgc50f862)
        -   [Mode Line](#orgf37b83a)
        -   [Icons](#org3923d90)
    -   [Which-Key Setup](#orgf5e369b)
    -   [Switch-Window](#org9c22f13)
    -   [Delete Setup](#org10215fd)
        -   [Hungry-delete](#org1462453)
        -   [Delete Slection](#orgf2955b3)
    -   [SmartParens](#org4b4080e)
    -   [Company Setup](#orgf20f350)
    -   [MarkDown Setup](#org2c6c7d0)
    -   [Projectile Setup](#orge758dc4)
    -   [Language Setup](#org02f86d4)
        -   [Web-Mode Setup](#org7397987)
    -   [Format Setup](#org7b1149a)
    -   [Selected Setup](#orgb7b030f)
    -   [Command Completion For MiniBuffer](#org389806b)
        -   [Ivy/Counsel/Swiper Setup](#org9921030)
    -   [Iedit Setup](#orgd81f1c5)
    -   [Org Setup](#org1a2298e)
        -   [Org Table Tidy Settings](#org968ab68)
        -   [Pretty](#orgf7ff92d)
    -   [Org shortcut](#org43270e7)
        -   [Motion in Heading](#org92b0ea7)
        -   [Editing Heading Level](#org4e46d91)
        -   [Insert Org template](#orgbdd86ed)
        -   [Other](#orgf9d9936)
    -   [Installation](#orgf503bf5)



<a id="org32616b2"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="org00407a1"></a>

## Package Manager


<a id="orgbf9c2d6"></a>

### ELPA Setup

set repository to tsinghua

    (require 'package)
    (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                             ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                             ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                             ;;("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
    ;;                         ("melpa-stable" . "http://elpa.emacs-china.org/stable-melpa/")
                             ))
    (unless (bound-and-true-p package--initialized)
      (package-initialize)) 
    
    (unless package-archive-contents
      (package-refresh-contents))


<a id="org4858b62"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    
    (setq package-enable-at-startup nil)
    (setq use-package-always-ensure t)


<a id="orgb92f93a"></a>

## General Settings Setup


<a id="orgd815d59"></a>

### Window Settings

-   Window Maximized

        (add-to-list 'default-frame-alist '(fullscreen . maximized))

-   Menu-bar Hide

        (menu-bar-mode nil)

-   Tool-bar Hide

        (tool-bar-mode nil)
        (tool-bar-mode -1)

-   Scroll-bar Hide

        (scroll-bar-mode nil)

-   Zoom

    window auto Zoom,current window Larger display
    
        (use-package zoom
          :ensure t
          :init
          (setq zoom-size '(0.718 . 0.718))
          )
        (global-set-key (kbd "C-c z") 'zoom)


<a id="orgebd9ca8"></a>

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


<a id="org5af45fd"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="orgb4df2d1"></a>

### Custom-file Settings

    (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
    (when (file-exists-p custom-file)
      (load custom-file))


<a id="orgaa57cdd"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org2811d21"></a>

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


<a id="org5b11129"></a>

### Env Settings

    (use-package exec-path-from-shell
      :ensure t
      ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
      )
    (when (memq window-system '(mac ns x))
      (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org428757c"></a>

### Undo Settings

    (use-package undo-tree
      :ensure t
      :init (setq undo-tree-auto-save-history nil)
      )
    (global-undo-tree-mode t)


<a id="org98892d2"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org0d9af62"></a>

## UI Setup


<a id="org9000aaa"></a>

### Theme

    (use-package dracula-theme
      :ensure t
      )
    
    (load-theme 'dracula t)


<a id="org41ea2c8"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org6c9d0f5"></a>

### Show Current line HighLight

    (global-hl-line-mode t)


<a id="orgc50f862"></a>

### Font

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="orgf37b83a"></a>

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


<a id="org3923d90"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired)


<a id="orgf5e369b"></a>

## Which-Key Setup

    (use-package which-key
      :ensure t  
      :bind ("M-m" . which-key-show-top-level) 
    )
    (which-key-mode)


<a id="org9c22f13"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :config
        (setq switch-window-shortcut-style 'qwerty)
      )
    (global-set-key (kbd "C-x o") 'switch-window)


<a id="org10215fd"></a>

## Delete Setup


<a id="org1462453"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :ensure t
      :bind (
               ("C-c DEL" . hungry-delete-backward)
               ("C-c d" . hungry-delete-forward))
    )


<a id="orgf2955b3"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="org4b4080e"></a>

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


<a id="orgf20f350"></a>

## Company Setup

    (use-package company
      :ensure t
      :bind (
             :map company-active-map
             (("C-n"   . company-select-next)
              ("C-p"   . company-select-previous)
              ("C-d"   . company-show-doc-buffer)
              ("<tab>" . company-complete))
             )
      )


<a id="org2c6c7d0"></a>

## MarkDown Setup

    (use-package markdown-mode
      :ensure t
      :mode (("\\.md\\'" . gfm-mode)
             ("README" . gfm-mode)
             )
      :init (setq markdown-command "multimarkdown"))


<a id="orge758dc4"></a>

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


<a id="org02f86d4"></a>

## Language Setup


<a id="org7397987"></a>

### Web-Mode Setup

    (use-package web-mode
      :ensure t
    
      )


<a id="org7b1149a"></a>

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


<a id="orgb7b030f"></a>

## Selected Setup

    (use-package expand-region
      )
    (global-set-key (kbd "C-=") 'er/expand-region)


<a id="org389806b"></a>

## Command Completion For MiniBuffer

Command Interactive Completion ,eg : M-x 


<a id="org9921030"></a>

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


<a id="orgd81f1c5"></a>

## Iedit Setup

    (use-package iedit)


<a id="org1a2298e"></a>

## Org Setup


<a id="org968ab68"></a>

### Org Table Tidy Settings

    (with-eval-after-load 'org
      (defun org-buffer-face-mode-variable ()
        (interactive)
        (make-face 'width-font-face)
        (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
        (setq buffer-face-mode-face 'width-font-face)
        (buffer-face-mode))
      (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))


<a id="orgf7ff92d"></a>

### Pretty

    (use-package org-bullets
     :ensure t
     :hook((org-mode . org-bullets-mode)
     (org-mode . org-indent-mode))
    ;;  (add-hook 'org-mode-hook #'org-bullets-mode)
    ;;  (add-hook 'org-mode-hook #'org-indent-mode)
      )


<a id="org43270e7"></a>

## Org shortcut


<a id="org92b0ea7"></a>

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


<a id="org4e46d91"></a>

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


<a id="orgbdd86ed"></a>

### Insert Org template

C-c C-, (org-insert-structure-template)

-   Insert Source Code Block

    Key "s in (org-insert-structure-template) list


<a id="orgf9d9936"></a>

### Other

-   StrikeThrough/DeleteLine

    command: (org-emphasize) ,next input character (+)

-   Disable Source Code

    C-c ; (org-toggle-comment)

-   Edit Source Code In New Buffer

    C-c ' (org-edit-special)


<a id="orgf503bf5"></a>

## Installation

    git clone <this repo url> ~/.emacs.d

