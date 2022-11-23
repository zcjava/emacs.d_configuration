
# Table of Contents

-   [Intro](#org95db8a9)
    -   [Package Manager](#orgce1727f)
        -   [ELPA Setup](#orge84a828)
        -   [Use-Package Setup](#orgff26c1f)
    -   [General Settings Setup](#org6693cdf)
        -   [Window Settings](#org557341c)
        -   [Character Settings](#org9e283b3)
        -   [BackUp Settings](#org15e242e)
        -   [Custom-file Settings](#org0b5bdfb)
        -   [Yes/No Shorthand Settings](#orgd81a3d5)
        -   [Tabs Indentation Settings](#org9c078df)
        -   [Env Settings](#orgcd40651)
        -   [Undo Settings](#org54c3578)
        -   [Recentf Settings](#org5300d44)
        -   [Show Startup Message](#org3e85525)
    -   [UI Setup](#org69e9097)
        -   [Menu-bar Hide](#orgbf16ff5)
        -   [Tool-bar Hide](#org9a5895e)
        -   [Scroll-bar Hide](#org4fa386d)
        -   [Theme](#orgef1292d)
        -   [Cursor](#orgeb44b77)
        -   [HighLight Line](#org92baee6)
        -   [Font](#org58a981b)
        -   [Mode Line](#org6989f51)
        -   [Icons](#org14a39bd)
        -   [Tabs Setup](#org756b78f)
        -   [DashBoard Setup](#org860e14e)
    -   [Which-Key Setup](#org148e634)
    -   [Switch-Window](#org17f9790)
    -   [Delete Setup](#org502926e)
        -   [Hungry-delete](#org40a2fe1)
        -   [Delete Slection](#org1b773c8)
    -   [SmartParens](#orgda83d34)
    -   [Company Setup](#org8c85f94)
    -   [MarkDown Setup](#org9dab728)
    -   [Projectile Setup](#org5b75d2c)
    -   [Format Setup](#org7035099)
    -   [Selected Setup](#orgfdebe46)
    -   [Command Completion For MiniBuffer](#org6d3e583)
        -   [Ivy/Counsel/Swiper Setup](#org1d75a96)
    -   [Iedit Setup](#org29fc8f3)
    -   [Language Setup](#orgc40360b)
        -   [Web-Mode Setup](#org0a58ad6)
        -   [FlyCheck Setup](#orge7f5735)
        -   [Yasnippet Setup](#org9dce617)
        -   [Magit Setup](#org1ddf39d)
        -   [HideShow Setup](#org791c31f)
    -   [Undo-Tree Setup](#orge34b56e)
    -   [Avy SetUp](#org4ec6c0a)
    -   [Org Setup](#orge676958)
        -   [Org Table Tidy Settings](#orgfc71149)
        -   [Pretty](#org8184118)
    -   [Org shortcut](#orgfdc8170)
        -   [Motion in Heading](#org9f87189)
        -   [Editing Heading Level](#org085bf2d)
        -   [Insert Org template](#org58e8c2f)
        -   [Other](#org0f0700e)
    -   [Installation](#org22fa50d)
    -   [Customize Your Configuration](#org0f10f5a)



<a id="org95db8a9"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="orgce1727f"></a>

## Package Manager


<a id="orge84a828"></a>

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


<a id="orgff26c1f"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    
    (setq package-enable-at-startup nil)
    (setq use-package-always-ensure t)


<a id="org6693cdf"></a>

## General Settings Setup


<a id="org557341c"></a>

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


<a id="org9e283b3"></a>

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


<a id="org15e242e"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="org0b5bdfb"></a>

### Custom-file Settings

    (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
    (when (file-exists-p custom-file)
      (load custom-file))


<a id="orgd81a3d5"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org9c078df"></a>

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


<a id="orgcd40651"></a>

### Env Settings

    (use-package exec-path-from-shell
      :ensure t
      ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
      )
    (when (memq window-system '(mac ns x))
      (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org54c3578"></a>

### Undo Settings

    (use-package undo-tree
      :ensure t
      :init (setq undo-tree-auto-save-history nil)
      )
    (global-undo-tree-mode t)


<a id="org5300d44"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
     recentf-max-saved-items 1000
     recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org3e85525"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org69e9097"></a>

## UI Setup


<a id="orgbf16ff5"></a>

### Menu-bar Hide

    (menu-bar-mode nil)


<a id="org9a5895e"></a>

### Tool-bar Hide

    (tool-bar-mode nil)
    (tool-bar-mode -1)


<a id="org4fa386d"></a>

### Scroll-bar Hide

    (scroll-bar-mode nil)


<a id="orgef1292d"></a>

### Theme

    (use-package dracula-theme
      :ensure t
      )
    
    (load-theme 'dracula t)


<a id="orgeb44b77"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org92baee6"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org58a981b"></a>

### Font

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="org6989f51"></a>

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


<a id="org14a39bd"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
      :hook (dired-mode . all-the-icons-dired-mode)
      )


<a id="org756b78f"></a>

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


<a id="org860e14e"></a>

### DashBoard Setup

    (use-package dashboard
      :config
      (dashboard-setup-startup-hook)
      (dashboard-modify-heading-icons '((recents . "file-text")
                                        (boomarks . "book")
                                        ))
      (setq dashboard-banner-logo-title "Life is happy")
      (setq dashboard-startup-banner (expand-file-name "banner.png" user-emacs-directory))
      (setq dashboard-image-banner-max-height 200)
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


<a id="org148e634"></a>

## Which-Key Setup

    (use-package which-key
      :ensure t
      :config (which-key-mode)
      :bind ("M-m" . which-key-show-top-level) 
    )


<a id="org17f9790"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :config
        (setq switch-window-shortcut-style 'qwerty)
      )
    (global-set-key (kbd "C-x o") 'switch-window)


<a id="org502926e"></a>

## Delete Setup


<a id="org40a2fe1"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :ensure t
      :bind (
               ("C-c DEL" . hungry-delete-backward)
               ("C-c d" . hungry-delete-forward))
    )


<a id="org1b773c8"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="orgda83d34"></a>

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


<a id="org8c85f94"></a>

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


<a id="org9dab728"></a>

## MarkDown Setup

    (use-package markdown-mode
      :ensure t
      :mode (("\\.md\\'" . gfm-mode)
             ("README" . gfm-mode)
             )
      :init (setq markdown-command "multimarkdown"))


<a id="org5b75d2c"></a>

## Projectile Setup

    (use-package projectile
      :bind(
            ("C-x p f" . projectile-find-file)
            ("C-x p p" . projectile-switch-project)
            )
      :config
      (projectile-global-mode)
      (setq
       projectile-indexing-method 'alien
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


<a id="org7035099"></a>

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


<a id="orgfdebe46"></a>

## Selected Setup

    (use-package expand-region
      )
    (global-set-key (kbd "C-=") 'er/expand-region)


<a id="org6d3e583"></a>

## Command Completion For MiniBuffer

Command Interactive Completion ,eg : M-x 


<a id="org1d75a96"></a>

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


<a id="org29fc8f3"></a>

## Iedit Setup

    (use-package iedit
      :bind("C-c e" . iedit-mode)
      )


<a id="orgc40360b"></a>

## Language Setup


<a id="org0a58ad6"></a>

### Web-Mode Setup

    (use-package web-mode
      :ensure t
    
      )


<a id="orge7f5735"></a>

### FlyCheck Setup

    (use-package flycheck
      :init (global-flycheck-mode)
      :config
      (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
      )


<a id="org9dce617"></a>

### Yasnippet Setup

    (use-package yasnippet
      :config (yas-global-mode)
      )
    (use-package yasnippet-snippets :ensure t)


<a id="org1ddf39d"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="org791c31f"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="orge34b56e"></a>

## Undo-Tree Setup

    (use-package undo-tree
      :init (global-undo-tree-mode t)
      )


<a id="org4ec6c0a"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
      :bind("C-;" . avy-goto-char)
    )


<a id="orge676958"></a>

## Org Setup


<a id="orgfc71149"></a>

### Org Table Tidy Settings

    (with-eval-after-load 'org
      (defun org-buffer-face-mode-variable ()
        (interactive)
        (make-face 'width-font-face)
        (set-face-attribute 'width-font-face nil :font "Ubuntu Mono 20")
        (setq buffer-face-mode-face 'width-font-face)
        (buffer-face-mode))
      (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))


<a id="org8184118"></a>

### Pretty

    (use-package org-bullets
     :ensure t
     :hook((org-mode . org-bullets-mode)
     (org-mode . org-indent-mode))
    ;;  (add-hook 'org-mode-hook #'org-bullets-mode)
    ;;  (add-hook 'org-mode-hook #'org-indent-mode)
      )


<a id="orgfdc8170"></a>

## Org shortcut


<a id="org9f87189"></a>

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


<a id="org085bf2d"></a>

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


<a id="org58e8c2f"></a>

### Insert Org template

C-c C-, (org-insert-structure-template)

-   Insert Source Code Block

    Key "s in (org-insert-structure-template) list


<a id="org0f0700e"></a>

### Other

-   StrikeThrough/DeleteLine

    command: (org-emphasize) ,next input character (+)

-   Disable Source Code

    C-c ; (org-toggle-comment)

-   Edit Source Code In New Buffer

    C-c ' (org-edit-special)


<a id="org22fa50d"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="org0f10f5a"></a>

## Customize Your Configuration

write your configuration to ~/.emacs.d/configuration<sub>self.org</sub> . emacs autoload the file when emacs startup

