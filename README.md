
# Table of Contents

-   [Intro](#orgb8daade)
    -   [Package Manager](#orgdb87018)
        -   [ELPA Setup](#orgb83cc84)
        -   [Use-Package Setup](#org5bb4e58)
    -   [Custom Need Constant](#org8d1255a)
        -   [Font Constant](#org2b9e2c0)
        -   [Org Agenda Constant](#org2b3561f)
        -   [Org Roam Constant](#org25b5112)
        -   [Lsp Constant](#orgd9427b9)
    -   [General Settings Setup](#org19cb6a8)
        -   [GC settings](#org0f8e4c3)
        -   [Show Startup Message](#orga9f8650)
        -   [Character Settings](#org604c048)
        -   [BackUp Settings](#org6aa6341)
        -   [Env Settings](#orge525e83)
        -   [Custom File Settings](#orga684821)
        -   [Yes/No Shorthand Settings](#orgb869d1d)
        -   [Tabs Indentation Settings](#org4871492)
        -   [Undo Settings](#org97976b2)
        -   [Recentf Settings](#org619e038)
        -   [Window Settings](#org4c06670)
    -   [UI Setup](#org2b323b2)
        -   [Menu-bar Hide](#org600729b)
        -   [Tool-bar Hide](#orgd20afeb)
        -   [Scroll-bar Hide](#org556ee70)
        -   [Theme](#orgb04e050)
        -   [Cursor](#orgfc82f28)
        -   [FillColumn](#orgca85a7f)
        -   [HighLight Line](#org52e9604)
        -   [Font](#org1c992e0)
        -   [Mode Line](#orgaa3d23f)
        -   [Icons](#orgd284264)
        -   [Tabs Setup](#org70ea519)
        -   [DashBoard Setup](#orgf6d5054)
    -   [Org Setup](#orge804061)
        -   [OrgFile AutoFormat](#org6ef1833)
        -   [Org Table Tidy Settings](#orgd8052e5)
        -   [org-superstar](#orgba3d3b9)
        -   [org ref](#org7690c7f)
        -   [Org-babel support language](#org2178a91)
        -   [Org Agenda Setup](#orgcec0149)
        -   [Org Roam Setup](#orgdd73537)
    -   [Which-Key Setup](#org4e08b40)
    -   [Delete Setup](#orgbad67e6)
        -   [Hungry-delete](#orgc7d59f5)
        -   [Delete Slection](#org284e21a)
    -   [SmartParens](#orgd93b317)
    -   [Undo-Tree Setup](#org85f55d2)
    -   [Switch-Window](#orgc695b66)
    -   [Selected Setup](#orgceb72cc)
    -   [Undo Tree Setup](#org90cd19e)
    -   [Command Completion](#org9a3d5bf)
        -   [Ivy/Counsel/Swiper Setup](#orgb6d0b31)
        -   [orderless](#org1eba464)
        -   [Helm Setup](#org7aa4db7)
    -   [Format Setup](#org51a6019)
        -   [Format Default Formatters Setup](#orgbc08f0e)
    -   [Iedit Setup](#org2a0cf2f)
    -   [Avy SetUp](#org3b79855)
    -   [Projectile Setup](#org9b3c31a)
    -   [Company Setup](#orgbabe6c5)
        -   [Company english helper](#org1ab865a)
    -   [Language Setup](#org9d6fa9e)
        -   [LSP-Mode Setup](#orgecfa17d)
        -   [JAVA Setup](#orgd97a82d)
        -   [Groovy Setup](#orgad121b5)
        -   [Web-Mode Setup](#org8e17f84)
        -   [Javascript REPL](#org9ccf950)
        -   [FlyCheck Setup](#org204f139)
        -   [Yasnippet Setup](#orgc467c17)
        -   [Magit Setup](#orgd9e88a9)
        -   [HideShow Setup](#org11c0976)
    -   [MarkDown Setup](#org7b4660d)
    -   [Nginx Setup](#org99b51fc)
    -   [HttpClient Setup](#org3cf3b09)
    -   [Youdao Translate Setup](#org2b6ecb2)
    -   [Installation](#orgc1c92b8)
        -   [Customize Your Configuration](#org4eef13e)



<a id="orgb8daade"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="orgdb87018"></a>

## Package Manager


<a id="orgb83cc84"></a>

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


<a id="org5bb4e58"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))
    
    (setq use-package-always-ensure t)

-   vc-use-package

        (unless (package-installed-p 'vc-use-package)
            (package-vc-install "https://github.com/slotThe/vc-use-package"))
        (require 'vc-use-package)


<a id="org8d1255a"></a>

## Custom Need Constant


<a id="org2b9e2c0"></a>

### Font Constant

    (defconst ctm-font-name-en "DejaVu Sans Mono")
    (defconst ctm-font-name-zh "Microsoft YaHei")
    (defconst ctm-font-size "22")


<a id="org2b3561f"></a>

### Org Agenda Constant

    (defconst ctm-org-agenda-dir (expand-file-name "~/Desktop/gtd/"))
    (defconst ctm-org-agenda-filename-input "inbox.org")
    (defconst ctm-org-agenda-filename-gtd "gtd.org")


<a id="org25b5112"></a>

### Org Roam Constant

    (defconst ctm-org-roam-directory (file-truename "~/Desktop/note/"))
    (defconst ctm-org-roam-dailies-directory "daily")


<a id="orgd9427b9"></a>

### Lsp Constant

-   Groovy Constant

        (defconst ctm-lsp-groovy-server-file (expand-file-name "lsp-server/groovy-language-server/groovy-language-server-all.jar" user-emacs-directory))
        (defconst ctm-lsp-groovy-classpath "/opt/homebrew/Cellar/groovy/4.0.15/libexec/lib/")

-   Java Constant

        (defconst ctm-java-home-path "/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/")
        (defconst ctm-lsp-java-server-install-dir (expand-file-name "lsp-server/jdtls/" user-emacs-directory))
        (defconst ctm-dap-java-test-runner (expand-file-name "eclipse.jdt.ls/test-runner/junit-platform-console-standalone.jar" ctm-lsp-java-server-install-dir))
        (defconst ctm-lombok-jar-path (expand-file-name "~/.m2/repository/org/projectlombok/lombok/1.18.26/lombok-1.18.26.jar"))
        (defconst ctm-lsp-java-configuration-maven-user-settings (expand-file-name "~/.m2/settings.xml"))
        (defconst ctm-lsp-java-import-gradle-user-home "~/.m2/repository/")


<a id="org19cb6a8"></a>

## General Settings Setup


<a id="org0f8e4c3"></a>

### GC settings

[Look at early-init.el](early-init.el)


<a id="orga9f8650"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org604c048"></a>

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


<a id="org6aa6341"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="orge525e83"></a>

### Env Settings

    (use-package exec-path-from-shell 
        :ensure t
        ;;  :config (setq exec-path (append exec-path '("/usr/local/bin")))
        )
    (when (memq window-system '(mac ns x))
        (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="orga684821"></a>

### Custom File Settings

[Look at early-init.el](early-init.el)


<a id="orgb869d1d"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org4871492"></a>

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


<a id="org97976b2"></a>

### Undo Settings

    (use-package undo-tree
        :init
        (global-undo-tree-mode)
        :ensure t
        :init (setq undo-tree-auto-save-history nil)
        )


<a id="org619e038"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
        recentf-max-saved-items 1000
        recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org4c06670"></a>

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


<a id="org2b323b2"></a>

## UI Setup


<a id="org600729b"></a>

### Menu-bar Hide

[Look at early-init.el](early-init.el)


<a id="orgd20afeb"></a>

### Tool-bar Hide

[Look at early-init.el](early-init.el)


<a id="org556ee70"></a>

### Scroll-bar Hide

[Look at early-init-el](early-init.el)


<a id="orgb04e050"></a>

### Theme

    (use-package dracula-theme
        :ensure t
        )
    (load-theme 'dracula t)


<a id="orgfc82f28"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="orgca85a7f"></a>

### FillColumn

    (setq-default fill-column 150)


<a id="org52e9604"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org1c992e0"></a>

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


<a id="orgaa3d23f"></a>

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
            `(mode-line ((t (:family ,ctm-font-name-en :height:50))))
            `(mode-line-inactive ((t (:family ,ctm-font-name-en :height:50))))
            )
        (doom-modeline-def-modeline 'ownml
            '(bar matches buffer-info remote-host buffer-position misc-info major-mode)
            '(input-method buffer-encoding process vcs check))
        ;; Add to `doom-modeline-mode-hook` or other hooks
        (defun setup-custom-doom-modeline ()
            (doom-modeline-set-modeline 'ownml 'default))
        (add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
        )


<a id="orgd284264"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
        :hook (dired-mode . all-the-icons-dired-mode)
        )


<a id="org70ea519"></a>

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


<a id="orgf6d5054"></a>

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


<a id="orge804061"></a>

## Org Setup


<a id="org6ef1833"></a>

### OrgFile AutoFormat

    ;; let source code block can be `indent-region` format
    (setq org-src-tab-acts-natively t)
    ;; org file before save invoke indent-region
    (add-hook 'org-mode-hook
        (lambda()
            (add-hook 'before-save-hook 'org-format-buffer nil t)))
    
    (defun org-format-buffer()
        (interactive)
        (save-excursion
            (indent-region (point-min) (point-max) nil)))


<a id="orgd8052e5"></a>

### Org Table Tidy Settings

    ;;org-table align  todo hook in package
    (use-package valign
        :init
        (add-hook 'org-mode-hook #'valign-mode)
        )  


<a id="orgba3d3b9"></a>

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


<a id="org7690c7f"></a>

### org ref

    (use-package org-ref)


<a id="org2178a91"></a>

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


<a id="orgcec0149"></a>

### Org Agenda Setup

-   Config

        (global-set-key (kbd "C-c a") 'org-agenda)
        (global-set-key (kbd "C-c c") 'org-capture)
        
        (setq org-default-notes-file (concat ctm-org-agenda-dir ctm-org-agenda-filename-input))
        (setq org-agenda-file-inbox (concat ctm-org-agenda-dir ctm-org-agenda-filename-input))
        (setq org-agenda-file-gtd (concat ctm-org-agenda-dir ctm-org-agenda-filename-gtd))
        ;;  (setq org-agenda-file-journal (concat org-agenda-dir "journal.org"))
        (setq org-agenda-files (list ctm-org-agenda-dir))
        (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
        (setq org-agenda-include-diary t)
        (setq org-capture-templates `(
                                         ("i" "input [inbox]" entry (file ,org-agenda-file-inbox) "* %i%?")
                                         ("c" "calendar [gtd]" entry (file+headline ,org-agenda-file-gtd "Calendar") "* TODO %i%? \nSCHEDULED: %^t")
                                         ("h" "Habit [gtd]" entry (file+headline ,org-agenda-file-gtd "Habits") "* HABI %i%? \nDEADLINE: %^t")
                                         ("p" "Projects [gtd]" entry (file+headline ,org-agenda-file-gtd "Projects") "* %i%?")
                                         ("I" "Incubate [gtd]" entry (file+headline ,org-agenda-file-gtd "Incubate") "* %i%?")
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


<a id="orgdd73537"></a>

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


<a id="org4e08b40"></a>

## Which-Key Setup

    (use-package which-key
        :ensure t
        :init (which-key-mode)
        :bind ("M-m" . which-key-show-top-level)
        )


<a id="orgbad67e6"></a>

## Delete Setup


<a id="orgc7d59f5"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
        :ensure t
        :bind (
                  ("C-c DEL" . hungry-delete-backward)
                  ("C-c d d" . hungry-delete-forward))
        )


<a id="org284e21a"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="orgd93b317"></a>

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


<a id="org85f55d2"></a>

## Undo-Tree Setup

    (use-package undo-tree
        :init (global-undo-tree-mode t)
        )


<a id="orgc695b66"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
        :ensure t
        :bind ("C-x o" . switch-window)
        :config
        (setq switch-window-shortcut-style 'qwerty)
        )


<a id="orgceb72cc"></a>

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


<a id="org90cd19e"></a>

## Undo Tree Setup

    (use-package undo-tree
        )
    (global-undo-tree-mode t)


<a id="org9a3d5bf"></a>

## Command Completion

Command Interactive Completion For Minibuffer,eg : M-x


<a id="orgb6d0b31"></a>

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


<a id="org1eba464"></a>

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


<a id="org7aa4db7"></a>

### Helm Setup

    (use-package helm
        ;;  :config (helm-mode t)
        ;;  :bind("M-x" . helm-M-x)
        )


<a id="org51a6019"></a>

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


<a id="orgbc08f0e"></a>

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


<a id="org2a0cf2f"></a>

## Iedit Setup

    (use-package iedit
        :bind("C-c e" . iedit-mode)
        )


<a id="org3b79855"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
        :bind("C-;" . avy-goto-char)
        )


<a id="org9b3c31a"></a>

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


<a id="orgbabe6c5"></a>

## Company Setup

    (use-package company
        :ensure t
        :init
        (global-company-mode)
        :bind (
                  ("s-/" . company-complete)
                  :map company-active-map
                  (("C-n"   . company-select-next)
                      ("C-p"   . company-select-previous)
                      ("C-d"   . company-show-doc-buffer)
                      ("<tab>" . company-complete)
                      )
                  )
        )
    ;;(add-to-list 'company-backends '(company-capf :with company-dabbrev))
    ;; (use-package company-box
    ;;   :hook (company-mode . company-box-mode))


<a id="org1ab865a"></a>

### Company english helper

    (use-package company-english-helper
        :vc (:fetcher github :repo manateelazycat/company-english-helper)
        )


<a id="org9d6fa9e"></a>

## Language Setup


<a id="orgecfa17d"></a>

### LSP-Mode Setup

    (use-package lsp-mode
        :ensure t
        :hook (
                  (lsp-mode . lsp-enable-which-key-integration)
                  (lsp-mode . lsp-lens-mode)
                  (java-mode . lsp-mode)
                  (web-mode . lsp-mode)
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
        :config
        (setq lsp-groovy-server-file ctm-lsp-groovy-server-file)
        (setq lsp-groovy-classpath ctm-lsp-groovy-classpath)
        (setq lsp-completion-enable-additional-text-edit nil)
        (setq lsp-intelephense-multi-root nil) ; don't scan unnecessary projects
        (with-eval-after-load 'lsp-intelephense
            (setf (lsp--client-multi-root (gethash 'iph lsp-clients)) nil))
        (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
        ;; (add-hook 'lsp-mode-hook
        ;;     (lambda()
        ;;         (add-hook 'before-save-hook 'lsp-format-buffer nil t)))
        )
    (add-hook 'prog-mode-hook (lambda()
                                  ;;(unless (derived-mode-p 'emacs-lisp-mode) (lsp-mode))
                                  (when(derived-mode-p 'java-mode) (lsp-mode t))))
    
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


<a id="orgd97a82d"></a>

### JAVA Setup

    (setenv "JAVA_HOME"  ctm-java-home-path)
    (setq my-java-path (concat ctm-java-home-path "bin/java"))
    (use-package lsp-java 
        :init
        (setq lsp-java-server-install-dir ctm-lsp-java-server-install-dir)
        (setq dap-java-test-runner ctm-dap-java-test-runner)
        ;; lsp-java-jdt-download-url 
        (setq lsp-java-java-path my-java-path)
        (setq lombok-jar-path ctm-lombok-jar-path)
        (setq lsp-java-vmargs
            `("-Xmx2G"
                 "-XX:+UseG1GC"
                 "-XX:+UseStringDeduplication"
                 ,(concat "-javaagent:" lombok-jar-path)
                 ))
        (setq lsp-java-configuration-maven-user-settings ctm-lsp-java-configuration-maven-user-settings)
        ;;        (Setq lsp-java-format-settings-url "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml" lsp-java-format-settings-profile "GoogleStyle")
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
            lsp-java-import-gradle-java-home ctm-java-home-path
            ;;          lsp-java-import-gradle-home "/opt/homebrew/Cellar/gradle/8.4/"
            lsp-java-import-gradle-user-home ctm-lsp-java-import-gradle-user-home)
        (setq lsp-java-implementations-code-lens-enabled t)
        (setq lsp-java-references-code-lens-enabled t)
        (setq lsp-java-autobuild-enabled t)
        (setq lsp-java-format-enabled t)
        (setq lsp-java-format-comments-enabled t)
        (setq lsp-java-configuration-update-build-configuration t)
        (setq lsp-java-trace-server t)
        (setq lsp-java-configuration-check-project-settings-exclusions t)
        (setq lsp-java-completion-guess-method-arguments t)
        ;;      (add-hook 'java-mode-hook 'lsp)
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


<a id="orgad121b5"></a>

### Groovy Setup

    (use-package groovy-mode
        )


<a id="org8e17f84"></a>

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
    (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.ts[x]?\\'" . web-mode))
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


<a id="org9ccf950"></a>

### Javascript REPL

-   js-comint

    javascript REPL
    
        (use-package js-comint)


<a id="org204f139"></a>

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


<a id="orgc467c17"></a>

### Yasnippet Setup

    (use-package yasnippet
        :config (yas-global-mode)
        )
    (use-package yasnippet-snippets
        :vc (:fetcher github :repo AndreaCrotti/yasnippet-snippets)
        )
    ;; (use-package yasnippet-snippets :ensure t)


<a id="orgd9e88a9"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="org11c0976"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="org7b4660d"></a>

## MarkDown Setup

    (use-package markdown-mode
        :ensure t
        :mode (("\\.md\\'" . gfm-mode)
                  ("README" . gfm-mode)
                  )
        :init (setq markdown-command "multimarkdown"))


<a id="org99b51fc"></a>

## Nginx Setup

    (use-package nginx-mode)
    (use-package company-nginx)


<a id="org3cf3b09"></a>

## HttpClient Setup

    (use-package restclient)
    (use-package ob-restclient)
    (use-package company-restclient
        :after(restclient-mode)
        )
    
    (add-to-list 'auto-mode-alist '("\\.hpct\\'" . restclient-mode))


<a id="org2b6ecb2"></a>

## Youdao Translate Setup

    (use-package youdao-dictionary
        :init
        (setq url-automatic-caching t)
        (setq youdao-dictionary-search-history-file "~/.youdaohistory")
        )
    (global-set-key (kbd "C-c y w") 'youdao-dictionary-search-at-point+)
    (global-set-key (kbd "C-c y v") 'youdao-dictionary-play-voice-at-point)
    (global-set-key (kbd "C-c y s") 'youdao-dictionary-search-from-input)


<a id="orgc1c92b8"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="org4eef13e"></a>

### Customize Your Configuration

write your configuration to ~/.emacs.d/configuration\\<sub>self.org</sub> , emacs autoload the file when emacs startup. 

