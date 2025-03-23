
# Table of Contents

-   [Intro](#orge88ab83)
    -   [Package Manager](#orgb291f83)
        -   [ELPA Setup](#org7f1df66)
        -   [Use-Package Setup](#orgeb84f67)
    -   [Custom Need Constant](#org18bf093)
        -   [Font Constant](#orgdb2f11e)
        -   [Org Agenda Constant](#org9189e4a)
        -   [Org Roam Constant](#orgf9243c9)
        -   [Lsp Constant](#orga8fa2aa)
    -   [General Settings Setup](#orgece07ec)
        -   [GC settings](#org99561f9)
        -   [Show Startup Message](#org0527f09)
        -   [Character Settings](#orged9ae1a)
        -   [BackUp Settings](#orgacabe28)
        -   [Env Settings](#org45f0c60)
        -   [Custom File Settings](#orgab06408)
        -   [Yes/No Shorthand Settings](#org05b1824)
        -   [Tabs Indentation Settings](#org5c44cfe)
        -   [Undo Settings](#org8aad73f)
        -   [Recentf Settings](#org9162bb8)
        -   [Window Settings](#org9f9eb18)
    -   [UI Setup](#orgc059097)
        -   [Menu-bar Hide](#org90689fc)
        -   [Tool-bar Hide](#org9a5a567)
        -   [Scroll-bar Hide](#orge7e1fc2)
        -   [Theme](#org3dd8131)
        -   [Cursor](#org32556ef)
        -   [FillColumn](#org4325283)
        -   [HighLight Line](#org5e75cc6)
        -   [Font](#orgaaaebff)
        -   [Mode Line](#org63f1da8)
        -   [Icons](#orgbe2bf51)
        -   [DashBoard Setup](#orgbd44261)
        -   [Tabs Setup](#org8c0ec8b)
        -   [Delimiters Highlights Setup](#orgd81ccca)
    -   [Org Setup](#org822b3f2)
        -   [OrgFile AutoFormat](#orge9bbd32)
        -   [Org Table Tidy Settings](#orga589784)
        -   [org-superstar](#org215cf13)
        -   [org ref](#orgf66cbef)
        -   [Org-babel support language](#org26477f2)
        -   [Org Agenda Setup](#orgf7cad69)
        -   [Org Roam Setup](#orgc59708d)
        -   [Org Common Setup](#org63d76b6)
    -   [Which-Key Setup](#org133b5bf)
    -   [Delete Setup](#orgae999cb)
        -   [Hungry-delete](#org162ea6f)
        -   [Delete Slection](#org5c1c72a)
    -   [SmartParens](#org6a71673)
    -   [Undo-Tree Setup](#orged50348)
    -   [Switch-Window](#org9f34b79)
    -   [Selected Setup](#org07c3621)
    -   [Undo Tree Setup](#org861e40b)
    -   [Command Completion](#orgcdb2827)
        -   [Ivy/Counsel/Swiper Setup](#orge7c49e2)
        -   [orderless](#orge2f7a02)
        -   [Helm Setup](#org7a19232)
    -   [Format Setup](#orgd9156ad)
        -   [Format Default Formatters Setup](#orgd707d50)
    -   [Iedit Setup](#org909ae67)
    -   [Avy SetUp](#org67cb794)
    -   [Projectile Setup](#orgfdb8519)
    -   [Code Completion Setup](#org2520c2a)
        -   [Corfu](#orge9ad8d1)
        -   [Cape](#orgf9a026f)
        -   [Corfu English Helper](#orga2cbdf9)
    -   [Ai Assistant](#org3788e8c)
        -   [Copilot](#orgb978ca9)
    -   [Treesit](#org5eee34a)
    -   [Eldoc Setup](#orgdd03a0c)
    -   [Language Setup](#orgff1dfd8)
        -   [Eglot Setup](#orgddd128a)
        -   [JAVA Setup](#org78cbb9d)
        -   [Groovy Setup](#orgf7a0f34)
        -   [Maven Setup](#org914bbd2)
        -   [Web-Mode Setup](#org5c6f2e5)
        -   [Css Setup](#org2e667d3)
        -   [React JSX](#org6604972)
        -   [Javascript REPL](#orgd1b5afd)
        -   [Yasnippet Setup](#org7aa8761)
        -   [Magit Setup](#org9dc045c)
        -   [HideShow Setup](#org99a30a7)
    -   [MarkDown Setup](#orgc34fbd6)
    -   [Nginx Setup](#org2d33334)
    -   [HttpClient Setup](#org7868b46)
    -   [Ediff Setup](#orgf505239)
    -   [Installation](#org988d619)
        -   [Customize Your Configuration](#org872d3b3)



<a id="orge88ab83"></a>

# Intro

This configuration file contains setup my config of emacs


<a id="orgb291f83"></a>

## Package Manager


<a id="org7f1df66"></a>

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


<a id="orgeb84f67"></a>

### Use-Package Setup

    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
    (require 'use-package)
    (setq use-package-always-ensure t)
    (setq use-package-always-defer t)

-   vc-use-package

        (unless (package-installed-p 'vc-use-package)
          (package-vc-install "https://github.com/slotThe/vc-use-package"))
        (require 'vc-use-package)


<a id="org18bf093"></a>

## Custom Need Constant


<a id="orgdb2f11e"></a>

### Font Constant

    (defconst ctm-font-name-en "DejaVu Sans Mono")
    (defconst ctm-font-name-zh "Microsoft YaHei")
    (defconst ctm-font-size "22")


<a id="org9189e4a"></a>

### Org Agenda Constant

    (defconst ctm-org-agenda-dir (expand-file-name "~/Desktop/gtd/"))
    (defconst ctm-org-agenda-filename-input "inbox.org")
    (defconst ctm-org-agenda-filename-task "task.org")


<a id="orgf9243c9"></a>

### Org Roam Constant

    (defconst ctm-org-roam-directory (file-truename "~/Desktop/note/"))
    (defconst ctm-org-roam-dailies-directory "daily")


<a id="orga8fa2aa"></a>

### Lsp Constant

-   Groovy Constant

        (defconst ctm-lsp-groovy-server-file (expand-file-name "lsp-server/groovy-language-server/groovy-language-server-all.jar" user-emacs-directory))
        (defconst ctm-lsp-groovy-classpath "/opt/homebrew/Cellar/groovy/4.0.15/libexec/lib/")

-   Java Constant

        (defconst ctm-java-home-path (getenv "JAVA_HOME"))
        ;;(defconst ctm-lsp-java-server-install-dir (expand-file-name "lsp-server/jdtls/" user-emacs-directory))
        ;;(defconst ctm-lsp-java-server-install-dir "/opt/homebrew/Cellar/jdtls/1.40.0/")
        ;;(defconst ctm-dap-java-test-runner (expand-file-name "eclipse.jdt.ls/test-runner/junit-platform-console-standalone.jar" ctm-lsp-java-server-install-dir))
        (defconst ctm-lombok-jar-path (expand-file-name "~/.m2/repository/org/projectlombok/lombok/1.18.30/lombok-1.18.30.jar"))
        (defconst ctm-lsp-java-configuration-maven-user-settings (expand-file-name "~/.m2/settings.xml"))
        (defconst ctm-lsp-java-import-gradle-user-home "~/.m2/repository/")


<a id="orgece07ec"></a>

## General Settings Setup


<a id="org99561f9"></a>

### GC settings

[Look at early-init.el](early-init.el)


<a id="org0527f09"></a>

### Show Startup Message

    (setq inhibit-startup-message t)


<a id="orged9ae1a"></a>

### Character Settings

    (set-language-environment "UTF-8")
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


<a id="orgacabe28"></a>

### BackUp Settings

donot backup file

    (setq auto-save-default nil)
    (setq backup-directory-alist (quote (("." . "~/.emacs.d/.backups"))))


<a id="org45f0c60"></a>

### Env Settings

    (use-package exec-path-from-shell)
    (dolist (var '("JAVA_HOME" "GRADLE_USER_HOME"))
      (add-to-list 'exec-path-from-shell-variables var))
    (when (memq window-system '(mac ns x))
      (exec-path-from-shell-initialize))
    (setq exec-path-from-shell-check-startup-files nil)


<a id="orgab06408"></a>

### Custom File Settings

[Look at early-init.el](early-init.el)


<a id="org05b1824"></a>

### Yes/No Shorthand Settings

    (fset 'yes-or-no-p 'y-or-n-p)


<a id="org5c44cfe"></a>

### Tabs Indentation Settings

    (setq tab-width 4)
    (setq-default tab-width 4)
    (setq-default indent-line-function 4)
    (setq c-basic-offset 4)
    (setq-default indent-tabs-mode nil)
    (setq-default electric-indent-inhibit t)
    (setq nxml-child-indent 4
          nxml-attribute-indent 4
          nxml-slash-auto-complete-flag t)
    (setq js-indent-level 2)


<a id="org8aad73f"></a>

### Undo Settings

    (use-package undo-tree
      :init
      (global-undo-tree-mode)
      (setq undo-tree-auto-save-history nil)
      )


<a id="org9162bb8"></a>

### Recentf Settings

    (setq recentf-max-menu-items 50)
    (setq-default
     recentf-max-saved-items 1000
     recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))
    (recentf-mode t)


<a id="org9f9eb18"></a>

### Window Settings

-   Window Maximized

        (add-to-list 'default-frame-alist '(fullscreen . maximized))

-   Zoom

    window auto Zoom,current window Larger display
    
        (use-package zoom
          :init
          (setq zoom-size '(0.718 . 0.718))
          :bind ("C-c z" . zoom)
          )


<a id="orgc059097"></a>

## UI Setup


<a id="org90689fc"></a>

### Menu-bar Hide

[Look at early-init.el](early-init.el)


<a id="org9a5a567"></a>

### Tool-bar Hide

[Look at early-init.el](early-init.el)


<a id="orge7e1fc2"></a>

### Scroll-bar Hide

[Look at early-init-el](early-init.el)


<a id="org3dd8131"></a>

### Theme

    (use-package dracula-theme)
    (load-theme 'dracula t)


<a id="org32556ef"></a>

### Cursor

    (setq-default cursor-type 'bar)
    (set-cursor-color "green")
    (show-paren-mode t)
    (setq show-paren-style 'expression)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
    (add-hook 'minibuffer-setup-hook 'subword-mode)


<a id="org4325283"></a>

### FillColumn

    (setq-default fill-column 150)


<a id="org5e75cc6"></a>

### HighLight Line

    (global-hl-line-mode t)


<a id="orgaaaebff"></a>

### Font

english font use Dejavu sans mono; chinese font use microsoft yahei

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


<a id="org63f1da8"></a>

### Mode Line

    (use-package nyan-mode
      :init
      (setq nyan-animate-nyancat t)
      (setq nyan-wavy-trail t)
      (setq nyan-minimum-window-width 80)
      (setq nyan-bar-length 20)
      (nyan-mode))
    
    (use-package doom-modeline
      ;; executeCommand all-the-icons-install-fonts and nerd-icons-install-fonts
      :vc (:fetcher github :repo seagle0128/doom-modeline)
      :init
      (doom-modeline-mode t)
      :config
      (setq doom-modeline-height 5)
      (setq doom-modeline-buffer-encoding t)
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


<a id="orgbe2bf51"></a>

### Icons

    (use-package all-the-icons
      :if (display-graphic-p))
    (use-package all-the-icons-dired
      :hook (dired-mode . all-the-icons-dired-mode)
      )


<a id="orgbd44261"></a>

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


<a id="org8c0ec8b"></a>

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


<a id="orgd81ccca"></a>

### Delimiters Highlights Setup

replaced by treesit

    (use-package rainbow-delimiters
      :hook
      (prog-mode . rainbow-delimiters-mode)
      )


<a id="org822b3f2"></a>

## Org Setup


<a id="orge9bbd32"></a>

### OrgFile AutoFormat

let source code block can be \`indent-region\` format

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


<a id="orga589784"></a>

### Org Table Tidy Settings

org-table align todo hook in package

    (use-package valign
      :init
      (add-hook 'org-mode-hook #'valign-mode)
      )  


<a id="org215cf13"></a>

### org-superstar

    (use-package org-superstar
      :after org
      :hook ((org-mode . org-superstar-mode)
             (org-mode . org-indent-mode))
      :config
      (setq org-superstar-special-todo-items t))
    (set-face-attribute 'org-block nil :background
                        (color-darken-name
                         (face-attribute 'default :background) 3))


<a id="orgf66cbef"></a>

### org ref

    (use-package org-ref)


<a id="org26477f2"></a>

### Org-babel support language

    (org-babel-do-load-languages
     'org-babel-load-languages
     '((js         . t)
       (emacs-lisp . t)
       ;;   (restclient . t)
       (python     . t)
       (css        . t)
       ))

-   javascript

        (require 'ob-js)
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

-   python

        (setq org-babel-python-command "python3")


<a id="orgf7cad69"></a>

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


<a id="orgc59708d"></a>

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


<a id="org63d76b6"></a>

### Org Common Setup

    (setq org-confirm-babel-evaluate nil) ;; execute source code not tip
    (setq org-startup-folded 'show2levels)


<a id="org133b5bf"></a>

## Which-Key Setup

    (use-package which-key
      :init (which-key-mode)
      :bind ("M-m" . which-key-show-top-level)
      )


<a id="orgae999cb"></a>

## Delete Setup


<a id="org162ea6f"></a>

### Hungry-delete

delete all whitespace until have character

    (use-package hungry-delete
      :bind (("C-c DEL" . hungry-delete-backward)
             ("C-c d d" . hungry-delete-forward))
      )


<a id="org5c1c72a"></a>

### Delete Slection

    (delete-selection-mode t)


<a id="org6a71673"></a>

## SmartParens

auto Symbol of completion

    (use-package smartparens
      :init
      (smartparens-global-mode)
      :config
      (require 'smartparens-config)
      (sp-local-pair 'elisp-mode "'" nil :actions nil)
      (sp-local-pair 'elisp-mode "`" nil :actions nil)
      :bind(("C-c 9" . sp-beginning-of-sexp)
            ("C-c 0" . sp-end-of-sexp))
      )


<a id="orged50348"></a>

## Undo-Tree Setup

    (use-package undo-tree
      :init (global-undo-tree-mode t)
      )


<a id="org9f34b79"></a>

## Switch-Window

easy to jump windows

    (use-package switch-window
      :bind ("C-x o" . switch-window)
      :config
      (setq switch-window-shortcut-style 'qwerty)
      )


<a id="org07c3621"></a>

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
      ;;  (add-hook 'web-mode-hook 'er/add-html-mode-expansions)
      (er/enable-mode-expansions 'web-mode 'er/add-html-mode-expansions)
      (er/enable-mode-expansions 'rjsx-mode 'er/add-html-mode-expansions)
      :commands (er/expand-region er/enable-mode-expansions)
      )


<a id="org861e40b"></a>

## Undo Tree Setup

    (use-package undo-tree)
    (global-undo-tree-mode t)


<a id="orgcdb2827"></a>

## Command Completion

Command Interactive Completion For Minibuffer,eg : M-x


<a id="orge7c49e2"></a>

### Ivy/Counsel/Swiper Setup

-   Ivy Setup

    generic completion mechanism
    
    -   Ivy
    
            (use-package ivy
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


<a id="orge2f7a02"></a>

### orderless

Unordered search  in ivy search

    ;; add disorder search
    (use-package orderless
      :config
      (setq ivy-re-builders-alist '((t . orderless-ivy-re-builder)))
      :custom
      (completion-styles '(orderless basic))
      (completion-category-overrides '((file (styles basic partial-completion)))))
    (add-to-list 'ivy-highlight-functions-alist '(orderless-ivy-re-builder . orderless-ivy-highlight))


<a id="org7a19232"></a>

### Helm Setup

    (use-package helm
      ;;  :config (helm-mode t)
      ;;  :bind("M-x" . helm-M-x)
      )


<a id="orgd9156ad"></a>

## Format Setup

    (setq +format-with-lsp nil)
    (use-package format-all
      :hook
      (prog-mode . (lambda() (unless (derived-mode-p 'emacs-lisp-mode) (format-all-mode))))
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


<a id="orgd707d50"></a>

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
         ("Java" eglot-format)
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


<a id="org909ae67"></a>

## Iedit Setup

    (use-package iedit
      :bind("C-c e" . iedit-mode)
      )


<a id="org67cb794"></a>

## Avy SetUp

jumping to visible text using a char-based decision tree

    (use-package avy
      :bind("C-;" . avy-goto-char)
      )


<a id="orgfdb8519"></a>

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
      )
    
    (use-package treemacs-magit
      :after (treemacs magit)
      )
    
    (use-package treemacs-persp ;;treemacs-perspective if you use perspective.el vs. persp-mode
      :after (treemacs persp-mode) ;;or perspective vs. persp-mode
      :config (treemacs-set-scope-type 'Perspectives))
    
    (use-package treemacs-tab-bar ;;treemacs-tab-bar if you use tab-bar-mode
      :after (treemacs)
      :config (treemacs-set-scope-type 'Tabs))


<a id="org2520c2a"></a>

## Code Completion Setup


<a id="orge9ad8d1"></a>

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


<a id="orgf9a026f"></a>

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


<a id="orga2cbdf9"></a>

### Corfu English Helper

    (use-package corfu-english-helper
      :vc (:fetcher github :repo manateelazycat/corfu-english-helper)
      )


<a id="org3788e8c"></a>

## Ai Assistant


<a id="orgb978ca9"></a>

### Copilot

    (use-package copilot
      :config
      (setq copilot-max-char-warning-disabled t)
      )
    (add-hook 'prog-mode-hook 'copilot-mode)

    (use-package copilot-chat
      :bind (:map global-map
                  ("C-c C-y" . copilot-chat-yank)
                  ("C-c M-y" . copilot-chat-yank-pop)
                  ("C-c C-M-y" . (lambda () (interactive) (copilot-chat-yank-pop -1))))
      )


<a id="org5eee34a"></a>

## Treesit

    (use-package treesit-auto
      :init
      (setq tressit-font-lock-level 4)
      :config
      (global-treesit-auto-mode)
      )


<a id="orgdd03a0c"></a>

## Eldoc Setup

    (use-package eldoc
      :config
      (setq eldoc-idle-delay 0.1)
      (setq eldoc-echo-area-prefer-doc-buffer t)
      (setq max-mini-window-height 1) 
      (setq eldoc-echo-area-use-multiline-p nil)
      (global-set-key (kbd "M-`")
                      (
                       lambda()
                       (interactive)
                       (if (get-buffer-window "*eldoc*")
                           (delete-window (get-buffer-window "*eldoc*"))
                         (display-buffer "*eldoc*")))))
    
    (use-package eldoc-box
      :after
      (eglot eldoc)
      :bind (:map eglot-mode-map
                  ("C-M-k" . my/eldoc-box-scroll-up)
                  ("C-M-j" . my/eldoc-box-scroll-down)
                  ("M-h" . eldoc-box-eglot-help-at-point))
      :config
      (setq eldoc-box-max-pixel-height 600)
      (defun my/eldoc-box-scroll-up ()
        "Scroll up in `eldoc-box--frame'"
        (interactive)
        (with-current-buffer eldoc-box--buffer
          (with-selected-frame eldoc-box--frame
            (scroll-down 3))))
      (defun my/eldoc-box-scroll-down ()
        "Scroll down in `eldoc-box--frame'"
        (interactive)
        (with-current-buffer eldoc-box--buffer
          (with-selected-frame eldoc-box--frame
            (scroll-up 3))))
      (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t)
      )


<a id="orgff1dfd8"></a>

## Language Setup


<a id="orgddd128a"></a>

### Eglot Setup

    (use-package eglot
      :ensure nil
      :hook
      (prog-mode . (lambda() (unless (derived-mode-p '(emacs-lisp-mode web-mode)) (eglot-ensure))))
      (eglot-managed-mode . my/eglot-eldoc)
      :preface
      (defun my/eglot-eldoc ()
        (setq completion-category-defaults nil)
        (setq eldoc-documentation-functions
              (cons #'flymake-eldoc-function
                    (remove #'flymake-eldoc-function eldoc-documentation-functions)))
        )
      :bind
      (:map eglot-mode-map
            ("M-RET" . eglot-code-actions)
            ("C-c C-d" . eldoc)
            ("C-c C-p" . eldoc-box-help-at-point)
            ("C-c C-f" . eglot-format-buffer)
            ("C-c C-r" . eglot-rename))
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


<a id="org78cbb9d"></a>

### JAVA Setup

-   Eglot-java

    need install jdtls by brew
    
        (with-eval-after-load 'eglot
          (add-to-list 'eglot-server-programs
                       ;;               `((java-mode java-ts-mode) ,(concat ctm-lsp-java-server-install-dir "bin/jdtls")
                       `((java-mode java-ts-mode) "jdtls"
                         ;;                 "-configuration" ,(concat ctm-lsp-java-server-install-dir "config_mac")
                         "-data" ,(expand-file-name ".cache/workspace" user-emacs-directory)
                         ,(concat "--jvm-arg=-javaagent:" ctm-lombok-jar-path)))
          )
        (use-package jarchive
          :after eglot
          :config
          (jarchive-setup))

-   Hot Deployment

    use spring-devtools , gradle no autocompile classes, so command: \`gradle bootJar -t\` or \`gradle -t classes processResources\` when \`gradle bootRun\`;


<a id="orgf7a0f34"></a>

### Groovy Setup

    (use-package groovy-mode)


<a id="org914bbd2"></a>

### Maven Setup

    (use-package mvn)
    
    (defun mvn-install ()
      (interactive)
      (mvn "install"))


<a id="org5c6f2e5"></a>

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
    ;;(add-to-list 'auto-mode-alist '("\\.js[x]\\'" . web-mode))
    ;;(add-to-list 'auto-mode-alist '("\\.ts[x]\\'" . web-mode))
    
    (use-package json-mode)
    (use-package prettier-js
      ;; :config
      ;; (setq prettier-js-args '(
      ;;                          "--print-width" "200"  
      ;;                          "--trailing-comma" "all" 
      ;;                          "--bracket-spacing" "false"
      ;;                          ))
      )
    (add-hook 'js2-mode-hook 'prettier-js-mode)
    (add-hook 'web-mode-hook 'prettier-js-mode)

react configuration reference: [configuration<sub>react</sub><sub>jsx</sub>](http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html#emacs_configuration_for_eslint_and_jsx)


<a id="org2e667d3"></a>

### Css Setup

    (use-package css-mode
      :ensure nil
      :mode (("\\.css\\'" . css-mode))
      :init
      (setq css-indent-offset 2)
      )


<a id="org6604972"></a>

### React JSX

-   jtsx

        (use-package jtsx
          :mode (("\\.jsx?\\'" . jtsx-jsx-mode)
                 ("\\.tsx\\'" . jtsx-tsx-mode)
                 ("\\.ts\\'" . jtsx-typescript-mode))
          :commands jtsx-install-treesit-language
          :hook ((jtsx-jsx-mode . hs-minor-mode)
                 (jtsx-tsx-mode . hs-minor-mode)
                 (jtsx-typescript-mode . hs-minor-mode))
          ;; :custom
          ;; Optional customizations
          ;; (js-indent-level 2)
          ;; (typescript-ts-mode-indent-offset 2)
          ;; (jtsx-switch-indent-offset 0)
          ;; (jtsx-indent-statement-block-regarding-standalone-parent nil)
          ;; (jtsx-jsx-element-move-allow-step-out t)
          ;; (jtsx-enable-jsx-electric-closing-element t)
          ;; (jtsx-enable-electric-open-newline-between-jsx-element-tags t)
          ;; (jtsx-enable-jsx-element-tags-auto-sync nil)
          ;; (jtsx-enable-all-syntax-highlighting-features t)
          :config
          (defun jtsx-bind-keys-to-mode-map (mode-map)
            "Bind keys to MODE-MAP."
            (define-key mode-map (kbd "C-c C-j") 'jtsx-jump-jsx-element-tag-dwim)
            (define-key mode-map (kbd "C-c j o") 'jtsx-jump-jsx-opening-tag)
            (define-key mode-map (kbd "C-c j c") 'jtsx-jump-jsx-closing-tag)
            (define-key mode-map (kbd "C-c j r") 'jtsx-rename-jsx-element)
            (define-key mode-map (kbd "C-c <down>") 'jtsx-move-jsx-element-tag-forward)
            (define-key mode-map (kbd "C-c <up>") 'jtsx-move-jsx-element-tag-backward)
            (define-key mode-map (kbd "C-c C-<down>") 'jtsx-move-jsx-element-forward)
            (define-key mode-map (kbd "C-c C-<up>") 'jtsx-move-jsx-element-backward)
            (define-key mode-map (kbd "C-c C-S-<down>") 'jtsx-move-jsx-element-step-in-forward)
            (define-key mode-map (kbd "C-c C-S-<up>") 'jtsx-move-jsx-element-step-in-backward)
            (define-key mode-map (kbd "C-c j w") 'jtsx-wrap-in-jsx-element)
            (define-key mode-map (kbd "C-c j u") 'jtsx-unwrap-jsx)
            (define-key mode-map (kbd "C-c j d") 'jtsx-delete-jsx-node))
          
          (defun jtsx-bind-keys-to-jtsx-jsx-mode-map ()
            (jtsx-bind-keys-to-mode-map jtsx-jsx-mode-map))
        
          (defun jtsx-bind-keys-to-jtsx-tsx-mode-map ()
            (jtsx-bind-keys-to-mode-map jtsx-tsx-mode-map))
        
          (add-hook 'jtsx-jsx-mode-hook 'jtsx-bind-keys-to-jtsx-jsx-mode-map)
          (add-hook 'jtsx-tsx-mode-hook 'jtsx-bind-keys-to-jtsx-tsx-mode-map))


<a id="orgd1b5afd"></a>

### Javascript REPL

-   js-comint

    javascript REPL
    
        (use-package js-comint)


<a id="org7aa8761"></a>

### Yasnippet Setup

    (use-package yasnippet
      :config (yas-global-mode)
      )
    (use-package yasnippet-snippets
      :vc (:fetcher github :repo AndreaCrotti/yasnippet-snippets)
      )
    ;; (use-package yasnippet-snippets )


<a id="org9dc045c"></a>

### Magit Setup

git tools

    (use-package magit)


<a id="org99a30a7"></a>

### HideShow Setup

    (add-hook 'prog-mode-hook 'hs-minor-mode)


<a id="orgc34fbd6"></a>

## MarkDown Setup

    (use-package markdown-mode
      :mode (("\\.md\\'" . gfm-mode)
             ("README" . gfm-mode)
             )
      :init (setq markdown-command "multimarkdown"))


<a id="org2d33334"></a>

## Nginx Setup

    (use-package nginx-mode)
    ;;  (use-package company-nginx)


<a id="org7868b46"></a>

## HttpClient Setup

    (use-package restclient)
    (use-package ob-restclient)
    ;;  (use-package company-restclient
    ;;      :after(restclient-mode)
    ;;      )
    
    ;;  (add-to-list 'auto-mode-alist '("\\.hpct\\'" . restclient-mode))


<a id="orgf505239"></a>

## Ediff Setup

    (use-package ediff
      :config
      (setq ediff-keep-variants nil)
      (setq ediff-split-window-function 'split-window-horizontally)
      (setq ediff-window-setup-function #'ediff-setup-windows-plain))


<a id="org988d619"></a>

## Installation

    git clone <this repo url> ~/.emacs.d


<a id="org872d3b3"></a>

### Customize Your Configuration

write your configuration to ~/.emacs.d/configuration\\<sub>self.org</sub> , emacs autoload the file when emacs startup. 

