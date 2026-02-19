(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(use-package nerd-icons ;; Nerd Icons
  :ensure t)

(use-package doom-modeline
:ensure t
:init (doom-modeline-mode 1))

(setq inhibit-startup-message t) 
(use-package dashboard 
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner
	(cons
	 (expand-file-name "dashboard/logo.png" user-emacs-directory)
	 (expand-file-name "dashboard/logo.txt" user-emacs-directory)
	 ))
  (setq initial-buffer-choice 'dashboard-open)
  (setq dashboard-display-icons-p t)
  (setq dashboard-center-content t)
  (setq dashboard-icon-type 'nerd-icons)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-heading-shorcut-format " [%s]")
  (setq dashboard-item-shortcuts '((recents   . "r")
				   (projects  . "p")
				   (agenda    . "a")))
  (setq dashboard-items '((recents   . 5)
                          (projects  . 6)
                          (agenda    . 3)))
  :after (nerd-icons))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "JetBrainsMonoNerdFont-12"))

(electric-pair-mode 1) ; (,{,<,[ are always paired. (brackets - round, curly, angular, big)
(electric-quote-mode 1) ; ", ’, ‘ are always paired. (quotes - single, double, backticks)

(add-hook 'org-mode-hook #'org-indent-mode)

(use-package org-bullets
  :custom
  (org-bullets-bullet-list '("●" "◉" "○" "◇" "✸" "◦"))
  :ensure t
  :hook
  (org-mode))

(use-package dired ;; Default dired package
  :config
  (setq dired-listing-switches "-l --almost-all --human-readable --group-directories-first --no-group")
  (add-hook 'dired-mode-hook #'dired-hide-details-mode))

(unless (package-installed-p 'doom-themes) ;; Install default themes
(progn
  (package-install 'doom-themes)
  (load-theme 'doom-moonlight t)))

(if (package-installed-p 'doom-themes)  ;; Activate theme if available.
    (load-theme 'doom-moonlight t))

(setq display-line-numbers-type 'relative)

(global-visual-line-mode 1)

(use-package yasnippet
  :ensure t)

(use-package corfu
  :ensure t
  :config
  (global-corfu-mode 1))

(use-package vertico ;; Vertical minibuffer completions
  :ensure t
  :custom
  (vertico-count 8) ; Show 8 candidates
  (vertico-resize t) ; Grow and resize vertico minibuffer
  (vertico-cycle t) ; Enable cycling for vertico-next/previous
  :config
  (vertico-mode 1))

(use-package savehist ;; Persist history over Emacs restarts. Vertico sorts by history position.
  :init
  (savehist-mode))

(use-package markdown-mode
:ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

(use-package pyvenv
:ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
