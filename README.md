
# Table of Contents

-   [Intro](#org938ef09)
    -   [Package Manager](#orgf44d22c)
        -   [ELPA Setup](#org359e1e2)
        -   [Use-Package Setup](#orgd1aba05)
    -   [Custom Need Constant](#org092dfdb)
        -   [Font Constant](#org481c7ff)
        -   [Org Agenda Constant](#org8f4bb25)
        -   [Org Roam Constant](#org627f983)
        -   [Lsp Constant](#org8e46431)
    -   [General Settings Setup](#orgb159194)
        -   [GC settings](#org4a29da9)
        -   [Show Startup Message](#org526db0d)
        -   [Character Settings](#org3b1d7d9)
        -   [BackUp Settings](#org4f8f06b)
        -   [Env Settings](#orgc934cd0)
        -   [Custom File Settings](#org6d4922b)
        -   [Yes/No Shorthand Settings](#orgbdac6b6)
        -   [Tabs Indentation Settings](#org785fc21)
        -   [Undo Settings](#orgc8bc6b3)
        -   [Recentf Settings](#org87bbd72)
        -   [Window Settings](#org6fbf7dd)
    -   [UI Setup](#orgcdabec5)
        -   [Menu-bar Hide](#orga1442b1)
        -   [Tool-bar Hide](#orgba72186)
        -   [Scroll-bar Hide](#orgb37560c)
        -   [Theme](#orgba52f69)
        -   [Cursor](#org4d7364a)
        -   [FillColumn](#org6a56970)
        -   [HighLight Line](#orgae4c92e)
        -   [Font](#org53ea460)
        -   [Mode Line](#org0c28cdb)
        -   [Icons](#orga3cb7e7)
        -   [DashBoard Setup](#orgeb9dd8e)
        -   [Tabs Setup](#org124b284)
        -   [Delimiters Highlights Setup](#org8279561)
    -   [Org Setup](#org18b0766)
        -   [OrgFile AutoFormat](#orga308f81)
        -   [Org Table Tidy Settings](#org7243e92)
        -   [org-superstar](#org08e6adf)
        -   [org ref](#orgb7faf4d)
        -   [Org-babel support language](#orgf941c39)
        -   [Org Agenda Setup](#orgd02b935)
        -   [Org Roam Setup](#org59dc813)
    -   [Which-Key Setup](#org3335bd2)
    -   [Delete Setup](#orgaa32ed1)
        -   [Hungry-delete](#org3f27129)
        -   [Delete Slection](#org924e2dc)
    -   [SmartParens](#orgdeb2136)
    -   [Undo-Tree Setup](#org3b93f27)
    -   [Switch-Window](#org4e10639)
    -   [Selected Setup](#org558b095)
    -   [Undo Tree Setup](#org108ab2d)
    -   [Command Completion](#org343d9a1)
        -   [Ivy/Counsel/Swiper Setup](#orgf944aef)
        -   [orderless](#org1cb5b3a)
        -   [Helm Setup](#orgb1d7899)
    -   [Format Setup](#org7bd6395)
        -   [Format Default Formatters Setup](#org8a7e90e)
    -   [Iedit Setup](#org496be91)
    -   [Avy SetUp](#org49209e1)
    -   [Projectile Setup](#org60c0c93)
    -   [Code Completion Setup](#org9107bb9)
        -   [Corfu](#org7be1c8b)
        -   [Cape](#org5d10927)
        -   [Corfu English Helper](#org2aa57f7)
    -   [Treesit](#org1b44f6b)
    -   [Language Setup](#org00cf600)
        -   [Eglot Setup](#org558d6ef)
        -   [JAVA Setup](#org885b974)
        -   [Groovy Setup](#org37db99a)
        -   [Maven Setup](#orgd924279)
        -   [Web-Mode Setup](#orgc87133f)
        -   [Javascript REPL](#org23e619b)
        -   [FlyCheck Setup](#orga82397e)
        -   [Yasnippet Setup](#org3c56e04)
        -   [Magit Setup](#org64ee961)
        -   [HideShow Setup](#orgb07b548)
    -   [MarkDown Setup](#org80abe2d)
    -   [Nginx Setup](#org9928d34)
    -   [HttpClient Setup](#orgf5e57a4)
    -   [Ediff Setup](#org92ac179)
    -   [Installation](#orgb190455)
        -   [Customize Your Configuration](#orgdda6fbe)



<a id="org938ef09"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="orgf44d22c"></a>

## Package Manager


<a id="org359e1e2"></a>

### ELPA Setup

    
    (require 'package)
    (if (boundp 'package-archives-spec)
        (setq package-archives package-archives-spec)
      (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
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


<a id="orgd1aba05"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    
    (setq use-package-always-ensure t)

-   vc-use-package

        (unless (package-installed-p 'vc-use-package)
          (package-vc-install "https://github.com/slotThe/vc-use-package"))
        (require 'vc-use-package)


<a id="org092dfdb"></a>

## Custom Need Constant


<a id="org481c7ff"></a>

### Font Constant

    (defconst ctm-font-name-en "DejaVu Sans Mono")
    (defconst ctm-font-name-zh "Microsoft YaHei")
    (defconst ctm-font-size "22")


<a id="org8f4bb25"></a>

### Org Agenda Constant

    (defconst ctm-org-agenda-dir (expand-file-name "~/Desktop/gtd/"))
    (defconst ctm-org-agenda-filename-input "inbox.org")
    (defconst ctm-org-agenda-filename-task "task.org")


<a id="org627f983"></a>

### Org Roam Constant

    (defconst ctm-org-roam-directory (file-truename "~/Desktop/note/"))
    (defconst ctm-org-roam-dailies-directory "daily")


<a id="org8e46431"></a>

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


<a id="orgb159194"></a>

## General Settings Setup


<a id="org4a29da9"></a>

### GC settings

[Look at early-init.el](early-init.el)


<a id="org526db0d"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="org3b1d7d9"></a>

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


<a id="org4f8f06b"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    ;;(setq make-backup-files nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))
    ;;(setq backup-directory-alist (expand-file-name ".backups" user-emacs-directory))


<a id="orgc934cd0"></a>

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


<a id="org6d4922b"></a>

### Custom File Settings

[Look at early-init.el](early-init.el)


<a id="orgbdac6b6"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org785fc21"></a>

### Tabs Indentation Settings

    (setq tab-width 4)
    (setq-default tab-width 4)
    (setq-default indent-line-function 4)
    ;;(setq-default lisp-indent-offset 4)
    (setq-default sgml-basic-offset 4)
    (setq c-basic-offset 4)
    ;; (setq tab-always-indent)
    (setq-default indent-tabs-mode nil)
    
    (setq-default electric-indent-inhibit t)
    
    ;; nxml-mode
    (setq nxml-child-indent 4
          nxml-attribute-indent 4
          nxml-slash-auto-complete-flag t)
    
    ;; js ts indent-tab 2 spaces
    (setq js-indent-level 2)


<a id="orgc8bc6b3"></a>

### Undo Settings

    (use-package undo-tree
      :init
      (global-undo-tree-mode)
      :ensure t
      :init (setq undo-tree-auto-save-history nil)
      )


<a id="org87bbd72"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
     recentf-max-saved-items 1000
     recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org6fbf7dd"></a>

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


<a id="orgcdabec5"></a>

## UI Setup


<a id="orga1442b1"></a>

### Menu-bar Hide

[Look at early-init.el](early-init.el)


<a id="orgba72186"></a>

### Tool-bar Hide

[Look at early-init.el](early-init.el)


<a id="orgb37560c"></a>

### Scroll-bar Hide

[Look at early-init-el](early-init.el)


<a id="orgba52f69"></a>

### Theme

    (use-package dracula-theme
      :ensure t
      )
    (load-theme 'dracula t)


<a id="org4d7364a"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org6a56970"></a>

### FillColumn

    (setq-default fill-column 150)


<a id="orgae4c92e"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="org53ea460"></a>

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


<a id="org0c28cdb"></a>

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


<a id="orga3cb7e7"></a>

### Icons

    (use-package all-the-icons)
    (use-package all-the-icons-dired
      :hook (dired-mode . all-the-icons-dired-mode)
      )


<a id="orgeb9dd8e"></a>

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


<a id="org124b284"></a>

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


<a id="org8279561"></a>

### Delimiters Highlights Setup

replaced by treesit

    (use-package rainbow-delimiters
      :hook
      (prog-mode . rainbow-delimiters-mode)
      )


<a id="org18b0766"></a>

## Org Setup


<a id="orga308f81"></a>

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


<a id="org7243e92"></a>

### Org Table Tidy Settings

    ;;org-table align  todo hook in package
    (use-package valign
      :init
      (add-hook 'org-mode-hook #'valign-mode)
      )  


<a id="org08e6adf"></a>

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


<a id="orgb7faf4d"></a>

### org ref

    (use-package org-ref)


<a id="orgf941c39"></a>

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


<a id="orgd02b935"></a>

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


<a id="org59dc813"></a>

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


<a id="org3335bd2"></a>

## Which-Key Setup

    (use-package which-key
      :ensure t
      :init (which-key-mode)
      :bind ("M-m" . which-key-show-top-level)
      )


<a id="orgaa32ed1"></a>

## Delete Setup


<a id="org3f27129"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :ensure t
      :bind (("C-c DEL" . hungry-delete-backward)
             ("C-c d d" . hungry-delete-forward))
      )


<a id="org924e2dc"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="orgdeb2136"></a>

## SmartParens

auto Symbol of completion

    (use-package smartparens
      :ensure t
      :config
      (smartparens-global-mode t)
      (require 'smartparens-config)
      (sp-local-pair 'elisp-mode "'" nil :actions nil)
      (sp-local-pair 'elisp-mode "`" nil :actions nil)
      :bind(("C-c 9" . sp-beginning-of-sexp)
            ("C-c 0" . sp-end-of-sexp))
      )


<a id="org3b93f27"></a>

## Undo-Tree Setup

    (use-package undo-tree
      :init (global-undo-tree-mode t)
      )


<a id="org4e10639"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
      :ensure t
      :bind ("C-x o" . switch-window)
      :config
      (setq switch-window-shortcut-style 'qwerty)
      )


<a id="org558b095"></a>

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


<a id="org108ab2d"></a>

## Undo Tree Setup

    (use-package undo-tree)
    (global-undo-tree-mode t)


<a id="org343d9a1"></a>

## Command Completion

Command Interactive Completion For Minibuffer,eg : M-x


<a id="orgf944aef"></a>

### Ivy/Counsel/Swiper Setup

-   Ivy Setup

    generic completion mechanism
    
    -   Ivy
    
            (use-package ivy
              :ensure t
              :config
              (setq ivy-use-virtual-buffers t
                    enable-recursive-minibuffers t)
              :bind(("C-c C-r" . ivy-resume))
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
          :bind(("C-s" . swiper)
                ("C-'" . swiper-isearch-thing-at-point)
                )
          )


<a id="org1cb5b3a"></a>

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


<a id="orgb1d7899"></a>

### Helm Setup

    (use-package helm
      ;;  :config (helm-mode t)
      ;;  :bind("M-x" . helm-M-x)
      )


<a id="org7bd6395"></a>

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


<a id="org8a7e90e"></a>

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


<a id="org496be91"></a>

## Iedit Setup

    (use-package iedit
      :bind("C-c e" . iedit-mode)
      )


<a id="org49209e1"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
      :bind("C-;" . avy-goto-char)
      )


<a id="org60c0c93"></a>

## Projectile Setup

    (use-package projectile
      :init
      (projectile-global-mode)
      ;; :bind(
      ;;        ("C-x p f" . projectile-find-file)
      ;;        ("C-x p p" . projectile-switch-project)
      ;;        )
      :config
      (setq projectile-indexing-method 'hybrid
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
      (setq treemacs-deferred-git-apply-delay 0.5
            treemacs-file-follow-delay 0.2
            treemacs-indentation 2
            treemacs-indentation-string " "
            treemacs-show-hidden-files  nil
            treemacs-hide-gitignored-files-mode t
            treemacs-hide-dot-git-directory t
            treemacs-follow-mode t
            treemacs-filewatch-mode t
            treemacs-fringe-indicator-mode 'always)
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


<a id="org9107bb9"></a>

## Code Completion Setup


<a id="org7be1c8b"></a>

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


<a id="org5d10927"></a>

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


<a id="org2aa57f7"></a>

### Corfu English Helper

    (use-package corfu-english-helper
      :vc (:fetcher github :repo manateelazycat/corfu-english-helper)
      )


<a id="org1b44f6b"></a>

## Treesit

    (use-package treesit-auto
      :init
      (setq tressit-font-lock-level 4)
      :config
      (global-treesit-auto-mode)
      )


<a id="org00cf600"></a>

## Language Setup


<a id="org558d6ef"></a>

### Eglot Setup

    (use-package eglot
      :ensure nil
      :hook (prog-mode . (lambda() (unless (derived-mode-p 'emacs-lisp-mode) (eglot-ensure)))) 
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


<a id="org885b974"></a>

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


<a id="org37db99a"></a>

### Groovy Setup

    (use-package groovy-mode
      )


<a id="orgd924279"></a>

### Maven Setup

    (use-package mvn
      :ensure t
      )
    
    (defun mvn-install ()
      (interactive)
      (mvn "install"))


<a id="orgc87133f"></a>

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
    (use-package json-mode)
    (use-package prettier-js
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

        (use-package rjsx-mode)
        
        (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . rjsx-mode))
        (add-to-list 'auto-mode-alist '("\\.ts[x]?\\'" . rjsx-mode))


<a id="org23e619b"></a>

### Javascript REPL

-   js-comint

    javascript REPL
    
        (use-package js-comint)


<a id="orga82397e"></a>

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


<a id="org3c56e04"></a>

### Yasnippet Setup

    (use-package yasnippet
      :config (yas-global-mode)
      )
    (use-package yasnippet-snippets
      :vc (:fetcher github :repo AndreaCrotti/yasnippet-snippets)
      )
    ;; (use-package yasnippet-snippets :ensure t)


<a id="org64ee961"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="orgb07b548"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="org80abe2d"></a>

## MarkDown Setup

    (use-package markdown-mode
      :ensure t
      :mode (("\\.md\\'" . gfm-mode)
             ("README" . gfm-mode)
             )
      :init (setq markdown-command "multimarkdown"))


<a id="org9928d34"></a>

## Nginx Setup

    (use-package nginx-mode)
    ;;  (use-package company-nginx)


<a id="orgf5e57a4"></a>

## HttpClient Setup

    (use-package restclient)
    (use-package ob-restclient)
    ;;  (use-package company-restclient
    ;;      :after(restclient-mode)
    ;;      )
    
    ;;  (add-to-list 'auto-mode-alist '("\\.hpct\\'" . restclient-mode))


<a id="org92ac179"></a>

## Ediff Setup

    (use-package ediff
      :config
      (setq ediff-keep-variants nil)
      (setq ediff-split-window-function 'split-window-horizontally)
      (setq ediff-window-setup-function #'ediff-setup-windows-plain))


<a id="orgb190455"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="orgdda6fbe"></a>

### Customize Your Configuration

write your configuration to ~/.emacs.d/configuration\\<sub>self.org</sub> , emacs autoload the file when emacs startup. 

