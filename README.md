
# Table of Contents

-   [Intro](#org33abc40)
    -   [Package Manager](#orgd2e1571)
        -   [ELPA Setup](#orgb7b77c3)
        -   [Use-Package Setup](#orgc6dd790)
    -   [Custom Need Constant](#org0670b04)
        -   [Font Constant](#org45b4711)
        -   [Org Agenda Constant](#orgde397f9)
        -   [Org Roam Constant](#orgc163280)
        -   [Lsp Constant](#org45bde44)
    -   [General Settings Setup](#orgabf36ea)
        -   [GC settings](#orgff8fb3e)
        -   [Show Startup Message](#org423e098)
        -   [Character Settings](#org2f7eca6)
        -   [BackUp Settings](#org477e018)
        -   [Env Settings](#org08b162a)
        -   [Custom File Settings](#org83233c7)
        -   [Yes/No Shorthand Settings](#org8c80e94)
        -   [Tabs Indentation Settings](#org0d4d67d)
        -   [Undo Settings](#orgc3474e0)
        -   [Recentf Settings](#org994dd6a)
        -   [Window Settings](#org87e96dc)
    -   [UI Setup](#org241adeb)
        -   [Menu-bar Hide](#org76481bb)
        -   [Tool-bar Hide](#org67c8aa6)
        -   [Scroll-bar Hide](#org9b61ff0)
        -   [Theme](#orgcdab999)
        -   [Cursor](#orgadfd3fa)
        -   [FillColumn](#org22aeeb7)
        -   [HighLight Line](#org6fc6a19)
        -   [Font](#org2cb1a9f)
        -   [Mode Line](#org1597aa3)
        -   [Icons](#org4e3e55e)
        -   [DashBoard Setup](#org1b0c9ae)
        -   [Tabs Setup](#orga706a3c)
        -   [Delimiters Highlights Setup](#org9340a42)
    -   [Org Setup](#org2831ee8)
        -   [OrgFile AutoFormat](#orgd163771)
        -   [Org Table Tidy Settings](#org731bf30)
        -   [org-superstar](#org6832915)
        -   [org ref](#orgb64e688)
        -   [Org-babel support language](#org53b77b9)
        -   [Org Agenda Setup](#org4fe5aae)
        -   [Org Roam Setup](#org5696d45)
    -   [Which-Key Setup](#org72197b7)
    -   [Delete Setup](#orgc77d957)
        -   [Hungry-delete](#org81bfb58)
        -   [Delete Slection](#orga4dd1c2)
    -   [SmartParens](#org298e898)
    -   [Undo-Tree Setup](#org145133b)
    -   [Switch-Window](#orgb59da4c)
    -   [Selected Setup](#org435c75f)
    -   [Undo Tree Setup](#orgf18c401)
    -   [Command Completion](#orgeb1bf7b)
        -   [Ivy/Counsel/Swiper Setup](#org4a268bd)
        -   [orderless](#orgc949f4a)
        -   [Helm Setup](#org7dcb92f)
    -   [Format Setup](#orgc38f5b5)
        -   [Format Default Formatters Setup](#org83c43b1)
    -   [Iedit Setup](#orgf0b3ab4)
    -   [Avy SetUp](#orgf5707cc)
    -   [Projectile Setup](#orgd14a079)
    -   [Code Completion Setup](#org781e4d3)
        -   [Corfu](#orgb8fd946)
        -   [Cape](#org58ab559)
        -   [Corfu English Helper](#orgf9df84a)
    -   [Treesit](#orgcd4e007)
    -   [Language Setup](#org89bd60d)
        -   [Eglot Setup](#org9264a20)
        -   [JAVA Setup](#org8f44716)
        -   [Groovy Setup](#org860410f)
        -   [Maven Setup](#org9466ad7)
        -   [Web-Mode Setup](#org216ade4)
        -   [Javascript REPL](#org2916f9f)
        -   [FlyCheck Setup](#org6131c86)
        -   [Yasnippet Setup](#org1a105a4)
        -   [Magit Setup](#orgce4c2f3)
        -   [HideShow Setup](#orgc0f8702)
    -   [MarkDown Setup](#org349795c)
    -   [Nginx Setup](#org08b5772)
    -   [HttpClient Setup](#org6ca1da3)
    -   [Ediff Setup](#org704b0bd)
    -   [Installation](#org7c68768)
        -   [Customize Your Configuration](#org1a9335b)



<a id="org33abc40"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="orgd2e1571"></a>

## Package Manager


<a id="orgb7b77c3"></a>

### ELPA Setup

    
    (require 'package)
    (if (boundp 'package-archives-spec)
        (setq package-archives package-archives-spec)
        (setq package-archives '(
                                    ("gnu" . "https://elpa.gnu.org/packages/")
                                    ("melpa" . "https://melpa.org/packages/")
                                    ("gnu-devel" . "https://elpa.gnu.org/devel/")
                                    ;;  ("org" . "https://orgmode.org/elpa/")
                                    ;;  ("melpa-stable" . "https://stable.melpa.org/packages/")
                                    ))
        )
    (unless (bound-and-true-p package--initialized)
        (package-initialize))
    
    (unless package-archive-contents
        (package-refresh-contents))


<a id="orgc6dd790"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))
    
    (setq use-package-always-ensure t)

-   vc-use-package

        (unless (package-installed-p 'vc-use-package)
            (package-vc-install "https://github.com/slotThe/vc-use-package"))
        (require 'vc-use-package)


<a id="org0670b04"></a>

## Custom Need Constant


<a id="org45b4711"></a>

### Font Constant

    (defconst ctm-font-name-en "DejaVu Sans Mono")
    (defconst ctm-font-name-zh "Microsoft YaHei")
    (defconst ctm-font-size "22")


<a id="orgde397f9"></a>

### Org Agenda Constant

    (defconst ctm-org-agenda-dir (expand-file-name "~/Desktop/gtd/"))
    (defconst ctm-org-agenda-filename-input "inbox.org")
    (defconst ctm-org-agenda-filename-task "task.org")


<a id="orgc163280"></a>

### Org Roam Constant

    (defconst ctm-org-roam-directory (file-truename "~/Desktop/note/"))
    (defconst ctm-org-roam-dailies-directory "daily")


<a id="org45bde44"></a>

### Lsp Constant

-   Groovy Constant

        (defconst ctm-lsp-groovy-server-file (expand-file-name "lsp-server/groovy-language-server/groovy-language-server-all.jar" user-emacs-directory))
        (defconst ctm-lsp-groovy-classpath "/opt/homebrew/Cellar/groovy/4.0.15/libexec/lib/")

-   Java Constant

        (defconst ctm-java-home-path (getenv "JAVA_HOME"))
        (defconst ctm-lsp-java-server-install-dir (expand-file-name "lsp-server/jdtls/" user-emacs-directory))
        (defconst ctm-dap-java-test-runner (expand-file-name "eclipse.jdt.ls/test-runner/junit-platform-console-standalone.jar" ctm-lsp-java-server-install-dir))
        (defconst ctm-lombok-jar-path (expand-file-name "~/.m2/repository/org/projectlombok/lombok/1.18.30/lombok-1.18.30.jar"))
        (defconst ctm-lsp-java-configuration-maven-user-settings (expand-file-name "~/.m2/settings.xml"))
        (defconst ctm-lsp-java-import-gradle-user-home "~/.m2/repository/")


<a id="orgabf36ea"></a>

## General Settings Setup


<a id="orgff8fb3e"></a>

### GC settings

[Look at early-init.el](early-init.el)


<a id="org423e098"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org2f7eca6"></a>

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


<a id="org477e018"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="org08b162a"></a>

### Env Settings

    (use-package exec-path-from-shell 
        :ensure t
        ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
        )
    (dolist (var '("JAVA_HOME" "GRADLE_USER_HOME"))
        (add-to-list 'exec-path-from-shell-variables var))
    (when (memq window-system '(mac ns x))
        (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="org83233c7"></a>

### Custom File Settings

[Look at early-init.el](early-init.el)


<a id="org8c80e94"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org0d4d67d"></a>

### Tabs Indentation Settings

    (setq tab-width 4)
    (setq-default tab-width 4)
    (setq-default indent-line-function 4)
    (setq-default lisp-indent-offset 4)
    (setq-default sgml-basic-offset 4)
    (setq c-basic-offset 4)
    ;; (setq tab-always-indent)
    (setq-default indent-tabs-mode nil)
    
    (setq-default electric-indent-inhibit t)
    
    ;; nxml-mode
    (setq
        nxml-child-indent 4
        nxml-attribute-indent 4
        nxml-slash-auto-complete-flag t)
    
    ;; js ts indent-tab 2 spaces
    (setq js-indent-level 2)


<a id="orgc3474e0"></a>

### Undo Settings

    (use-package undo-tree
        :init
        (global-undo-tree-mode)
        :ensure t
        :init (setq undo-tree-auto-save-history nil)
        )


<a id="org994dd6a"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
        recentf-max-saved-items 1000
        recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org87e96dc"></a>

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


<a id="org241adeb"></a>

## UI Setup


<a id="org76481bb"></a>

### Menu-bar Hide

[Look at early-init.el](early-init.el)


<a id="org67c8aa6"></a>

### Tool-bar Hide

[Look at early-init.el](early-init.el)


<a id="org9b61ff0"></a>

### Scroll-bar Hide

[Look at early-init-el](early-init.el)


<a id="orgcdab999"></a>

### Theme

    (use-package dracula-theme
        :ensure t
        )
    (load-theme 'dracula t)


<a id="orgadfd3fa"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org22aeeb7"></a>

### FillColumn

    (setq-default fill-column 150)


<a id="org6fc6a19"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org2cb1a9f"></a>

### Font

    ;;  (set-face-attribute 'default nil :font "Microsoft Yahei-22")  
    ;;  (set-face-attribute 'default nil :font "PingFang SC-22")
    ;; english font use Dejavu sans mono; chinese font use microsoft yahei
    (progn
        (set-face-attribute 'default nil :font (concat ctm-font-name-en "-" ctm-font-size))
        (setq face-font-rescale-alist `((,ctm-font-name-zh . 0.9)))
        (dolist (charset '(kana han symbol cjk-misc bopomofo))
            (set-fontset-font (frame-parameter nil 'font)
                charset
                (font-spec :family ctm-font-name-zh)
                )))
    (global-font-lock-mode t)
    (setq font-lock-maximum-size 5000000)


<a id="org1597aa3"></a>

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
        :init
        (doom-modeline-mode t)
        :config
        (setq doom-modeline-height 5)
        (custom-set-faces
            `(mode-line ((t (:family ,ctm-font-name-en :height:50))))
            `(mode-line-inactive ((t (:family ,ctm-font-name-en :height:50))))
            )
        (doom-modeline-def-modeline 'ownml
            '(bar matches buffer-info remote-host buffer-position misc-info major-mode)
            '(buffer-encoding process vcs check))
        ;; Add to `doom-modeline-mode-hook` or other hooks
        (defun setup-custom-doom-modeline ()
            (doom-modeline-set-modeline 'ownml 'default))
        (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
        )


<a id="org4e3e55e"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
        :hook (dired-mode . all-the-icons-dired-mode)
        )


<a id="org1b0c9ae"></a>

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


<a id="orga706a3c"></a>

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


<a id="org9340a42"></a>

### Delimiters Highlights Setup

replaced by treesit

    (use-package rainbow-delimiters
        :hook
        (prog-mode . rainbow-delimiters-mode)
        )


<a id="org2831ee8"></a>

## Org Setup


<a id="orgd163771"></a>

### OrgFile AutoFormat

    ;; let source code block can be `indent-region` format
    (setq org-src-tab-acts-natively t)
    (setq org-src-fontify-natively t)
    
    (setq org-src-preserve-indentation t)
    (setq org-src--preserve-indentation t)
    (setq org-edit-src-content-indentation 0)
    (setq org-src--content-indentation 0)
    
    ;; org file before save invoke indent-region
    (add-hook 'org-mode-hook
        (lambda()
            (add-hook 'before-save-hook 'org-format-buffer nil t)))
    
    (defun org-format-buffer()
        (interactive)
        (save-excursion
            (indent-region (point-min) (point-max) nil)))


<a id="org731bf30"></a>

### Org Table Tidy Settings

    ;;org-table align  todo hook in package
    (use-package valign
        :init
        (add-hook 'org-mode-hook #'valign-mode)
        )  


<a id="org6832915"></a>

### org-superstar

    (use-package org-superstar
        :ensure t
        :after org
        :hook ((org-mode . org-superstar-mode)
                  (org-mode . org-indent-mode))
        :config
        (setq org-superstar-special-todo-items t))
    
    (set-face-attribute 'org-block nil :background
        (color-darken-name
            (face-attribute 'default :background) 3))


<a id="orgb64e688"></a>

### org ref

    (use-package org-ref)


<a id="org53b77b9"></a>

### Org-babel support language

    (require 'ob-js)
    ;; (org-babel-do-load-languages 'org-babel-load-languages
    ;;     '((js . t)
    ;;          (restclient . t))
    ;;     )
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


<a id="org4fe5aae"></a>

### Org Agenda Setup

-   Config

        (global-set-key (kbd "C-c a") 'org-agenda)
        (global-set-key (kbd "C-c c") 'org-capture)
        
        (setq org-default-notes-file (concat ctm-org-agenda-dir ctm-org-agenda-filename-input))
        (setq org-agenda-file-inbox (concat ctm-org-agenda-dir ctm-org-agenda-filename-input))
        (setq org-agenda-file-gtd (concat ctm-org-agenda-dir ctm-org-agenda-filename-task))
        ;;  (setq org-agenda-file-journal (concat org-agenda-dir "journal.org"))
        (setq org-agenda-files (list ctm-org-agenda-dir))
        (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
        (setq org-agenda-include-diary t)
        (setq org-capture-templates `(
                                         ("i" "input [inbox]" entry (file ,org-agenda-file-inbox) "* %i%?")
                                         ("c" "calendar [task]" entry (file+headline ,org-agenda-file-gtd "Calendar") "* TODO %i%? \nSCHEDULED: %^t")
                                         ("h" "Habit [task]" entry (file+headline ,org-agenda-file-gtd "Habits") "* HABI %i%? \nDEADLINE: %^t")
                                         ("p" "Projects [task]" entry (file+headline ,org-agenda-file-gtd "Projects") "* %i%?")
                                         ("I" "Incubate [task]" entry (file+headline ,org-agenda-file-gtd "Incubate") "* %i%?")
                                         ;;("j" "Journal [journal]" entry (file+datetree ,org-agenda-file-journal) "* %i%? \n%a")
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
            :after org
            )
        ;;  (org-super-agenda-mode t)
        
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


<a id="org5696d45"></a>

### Org Roam Setup

    (use-package org-roam
        :custom
        (org-roam-directory ctm-org-roam-directory)
        (org-roam-dailies-directory ctm-org-roam-dailies-directory)
        :bind (("C-c n l" . org-roam-buffer-toggle)
                  ("C-c n f" . org-roam-node-find)
                  ("C-c n g" . org-roam-graph)
                  ("C-c n i" . org-roam-node-insert)
                  ("C-c n c" . org-roam-capture)
                  ("C-c n t" . org-roam-tag-add)
                  ("C-c M-s" . org-store-link)
                  ;; Dailies
                  ("C-c n j" . org-roam-dailies-capture-today)
                  )
        :bind-keymap
        ("C-c n d" . org-roam-dailies-map)
        :config
        ;; If you're using a vertical completion framework, you might want a more informative completion interface
        (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:20}" 'face 'org-tag)))
        (setq org-roam-completion-everywhere t)
        (org-roam-db-autosync-mode)
        (require 'org-roam-dailies)
        ;; If using org-roam-protocol
        (require 'org-roam-protocol)
        )

-   Org Roam UI SetUp

        (use-package org-roam-ui
            :vc (:fetcher "github" :repo "org-roam/org-roam-ui")
            :after org-roam
            :custom
            (org-roam-ui-sync-theme nil)
            (org-roam-ui-follow t)
            (org-roam-ui-update-on-save t)
            (org-roam-ui-open-on-start t)
            )


<a id="org72197b7"></a>

## Which-Key Setup

    (use-package which-key
        :ensure t
        :init (which-key-mode)
        :bind ("M-m" . which-key-show-top-level)
        )


<a id="orgc77d957"></a>

## Delete Setup


<a id="org81bfb58"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
        :ensure t
        :bind (
                  ("C-c DEL" . hungry-delete-backward)
                  ("C-c d d" . hungry-delete-forward))
        )


<a id="orga4dd1c2"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="org298e898"></a>

## SmartParens

auto Symbol of completion

    (use-package smartparens
        :ensure t
        :config
        (smartparens-global-mode t)
        (show-smartparens-global-mode t)
        (require 'smartparens-config)
        (sp-local-pair 'elisp-mode "'" nil :actions nil)
        (sp-local-pair 'elisp-mode "`" nil :actions nil)
        :bind(("C-c 9" . sp-beginning-of-sexp)
                 ("C-c 0" . sp-end-of-sexp)
                 )
        )


<a id="org145133b"></a>

## Undo-Tree Setup

    (use-package undo-tree
        :init (global-undo-tree-mode t)
        )


<a id="orgb59da4c"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :bind ("C-x o" . switch-window)
        :config
        (setq switch-window-shortcut-style 'qwerty)
        )


<a id="org435c75f"></a>

## Selected Setup

    (use-package expand-region
        :bind (("C-=" . er/expand-region)
                  ("C--" . er/contract-region))
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


<a id="orgf18c401"></a>

## Undo Tree Setup

    (use-package undo-tree)
    (global-undo-tree-mode t)


<a id="orgeb1bf7b"></a>

## Command Completion

Command Interactive Completion For Minibuffer,eg : M-x


<a id="org4a268bd"></a>

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
        
            (use-package amx)

-   Swiper Setup

    text search use ivy
    
        ;; bind-key conflict, unbind
        (define-key org-mode-map (kbd "C-'") nil)
        (use-package swiper
            :bind(
                     ("C-s" . swiper)
                     ("C-'" . swiper-isearch-thing-at-point)
                     )
            )


<a id="orgc949f4a"></a>

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


<a id="org7dcb92f"></a>

### Helm Setup

    (use-package helm
        ;;  :config (helm-mode t)
        ;;  :bind("M-x" . helm-M-x)
        )


<a id="orgc38f5b5"></a>

## Format Setup

    (setq +format-with-lsp nil)
    (use-package format-all
        :ensure t
        :hook ((elixir-mode . format-all-mode)
                  ;;(prog-mode . format-all-mode)
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


<a id="org83c43b1"></a>

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


<a id="orgf0b3ab4"></a>

## Iedit Setup

    (use-package iedit
        :bind("C-c e" . iedit-mode)
        )


<a id="orgf5707cc"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
        :bind("C-;" . avy-goto-char)
        )


<a id="orgd14a079"></a>

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


<a id="org781e4d3"></a>

## Code Completion Setup


<a id="orgb8fd946"></a>

### Corfu

    ;; Auto completion example
    (use-package corfu
        :custom
        (corfu-auto t)          ;; Enable auto completion
        ;; (corfu-separator ?_) ;; Set to orderless separator, if not using space
        :bind
        ;; Another key binding can be used, such as S-SPC.
        ;; (:map corfu-map ("M-SPC" . corfu-insert-separator))
        :init
        (global-corfu-mode))


<a id="org58ab559"></a>

### Cape

    (use-package cape
        :init
        ;; Add to the global default value of `completion-at-point-functions' which is
        ;; used by `completion-at-point'.  The order of the functions matters, the
        ;; first function returning a result wins.  Note that the list of buffer-local
        ;; completion functions takes precedence over the global list.
        (add-to-list 'completion-at-point-functions #'cape-dabbrev)
        (add-to-list 'completion-at-point-functions #'cape-file)
        (add-to-list 'completion-at-point-functions #'cape-elisp-block)
        ;;(add-to-list 'completion-at-point-functions #'cape-history)
        ;;(add-to-list 'completion-at-point-functions #'cape-keyword)
        ;;(add-to-list 'completion-at-point-functions #'cape-tex)
        ;;(add-to-list 'completion-at-point-functions #'cape-sgml)
        ;;(add-to-list 'completion-at-point-functions #'cape-rfc1345)
        ;;(add-to-list 'completion-at-point-functions #'cape-abbrev)
        ;;(add-to-list 'completion-at-point-functions #'cape-dict)
        ;;(add-to-list 'completion-at-point-functions #'cape-elisp-symbol)
        ;;(add-to-list 'completion-at-point-functions #'cape-line)
        :config
        (setq dabbrev-check-other-buffers nil
            dabbrev-check-all-buffers nil
            cape-dabbrev-min-length 3)
        (cape-wrap-prefix-length #'cape-dabbrev 3)
        )


<a id="orgf9df84a"></a>

### Corfu English Helper

    (use-package corfu-english-helper
        :vc (:fetcher github :repo manateelazycat/corfu-english-helper)
        )


<a id="orgcd4e007"></a>

## Treesit

    (use-package treesit-auto
        :init
        (setq tressit-font-lock-level 4)
        :config
        (global-treesit-auto-mode)
        )


<a id="org89bd60d"></a>

## Language Setup


<a id="org9264a20"></a>

### Eglot Setup

    (use-package eglot
        :ensure nil
        :hook (prog-mode . (lambda()
                               (unless (derived-mode-p 'emacs-lisp-mode) 'eglot-ensure) 
                               )) 
        :custom
        (eglot-autoshutdown t)
        (eglot-events-buffer-size 0)
        (eglot-extend-to-xref nil)
        (eglot -ignored-server-capabilities
            '(:hoverProvider
                 :documentHighlightProvider
                 :documentFormattingProvider
                 :documentRangeFormattingProvider
                 :documentOnTypeFormattingProvider
                 :colorProvider
                 :foldingRangeProvider))
        )


<a id="org8f44716"></a>

### JAVA Setup

-   Eglot-java

        (with-eval-after-load 'eglot
            (add-to-list 'eglot-server-programs
                `((java-mode java-ts-mode) ,(concat ctm-lsp-java-server-install-dir "bin/jdtls")
                     "-configuration" ,(concat ctm-lsp-java-server-install-dir "config_mac")
                     "-data" ,(expand-file-name ".cache/workspace" user-emacs-directory)
                     ,(concat "--jvm-arg=-javaagent:" ctm-lombok-jar-path)))
            )
        
        (use-package jarchive
            :ensure t
            :after eglot
            :config
            (jarchive-setup))

-   Hot Deployment

    use spring-devtools , gradle no autocompile classes, so command: \`gradle bootJar -t\` or \`gradle -t classes processResources\` when \`gradle bootRun\`;


<a id="org860410f"></a>

### Groovy Setup

    (use-package groovy-mode
        )


<a id="org9466ad7"></a>

### Maven Setup

    (use-package mvn
        :ensure t
        )
    
    (defun mvn-install ()
        (interactive)
        (mvn "install"))


<a id="org216ade4"></a>

### Web-Mode Setup

    (use-package web-mode
        :config
        (setq web-mode-markup-indent-offset 2
            web-mode-css-indent-offset 2
            web-mode-code-indent-offset 2
            web-mode-comment-style 2
            web-mode-enable-auto-pairing t
            web-mode-enable-css-colorization t
            web-mode-enable-current-element-highlight t
            web-mode-enable-current-column-highlight t
            )
        )
    
    (defadvice web-mode-highlight-part (around tweak-jsx activate)
        (if (equal web-mode-content-type "jsx")
            (let ((web-mode-enable-part-face nil)) ad-do-it)
            ad-do-it))
    
    (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
    
    ;;  (use-package js2-mode
    ;;      )
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
    (add-hook 'js2-mode-hook 'prettier-js-mode)
    (add-hook 'web-mode-hook 'prettier-js-mode)

react configuration reference: [configuration<sub>react</sub><sub>jsx</sub>](http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html#emacs_configuration_for_eslint_and_jsx)

-   React JSX

        (use-package rjsx-mode
            )
        
        (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . rjsx-mode))
        (add-to-list 'auto-mode-alist '("\\.ts[x]?\\'" . rjsx-mode))


<a id="org2916f9f"></a>

### Javascript REPL

-   js-comint

    javascript REPL
    
        (use-package js-comint)


<a id="org6131c86"></a>

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


<a id="org1a105a4"></a>

### Yasnippet Setup

    (use-package yasnippet
        :config (yas-global-mode)
        )
    (use-package yasnippet-snippets
        :vc (:fetcher github :repo AndreaCrotti/yasnippet-snippets)
        )
    ;; (use-package yasnippet-snippets :ensure t)


<a id="orgce4c2f3"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="orgc0f8702"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="org349795c"></a>

## MarkDown Setup

    (use-package markdown-mode
        :ensure t
        :mode (("\\.md\\'" . gfm-mode)
                  ("README" . gfm-mode)
                  )
        :init (setq markdown-command "multimarkdown"))


<a id="org08b5772"></a>

## Nginx Setup

    (use-package nginx-mode)
    ;;  (use-package company-nginx)


<a id="org6ca1da3"></a>

## HttpClient Setup

    (use-package restclient)
    (use-package ob-restclient)
    ;;  (use-package company-restclient
    ;;      :after(restclient-mode)
    ;;      )
    
    ;;  (add-to-list 'auto-mode-alist '("\\.hpct\\'" . restclient-mode))


<a id="org704b0bd"></a>

## Ediff Setup

    (use-package ediff
        :config
        (setq ediff-keep-variants nil)
        (setq ediff-split-window-function 'split-window-horizontally)
        (setq ediff-window-setup-function #'ediff-setup-windows-plain))


<a id="org7c68768"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="org1a9335b"></a>

### Customize Your Configuration

write your configuration to ~/.emacs.d/configuration\\<sub>self.org</sub> , emacs autoload the file when emacs startup. 

