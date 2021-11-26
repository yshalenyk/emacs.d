;;; copy mode for command line
(use-package xclip
  :ensure t
  :config (xclip-mode 1))

;; Project management solution
(use-package projectile
  :delight '(:eval (concat " " (projectile-project-name)))
  :ensure t
  :custom (projectile-completion-system 'ido)
  :config
  (use-package ripgrep
    :ensure t)
  (projectile-mode t)
  )

;;; git frontend
(use-package magit
  :ensure t
  :config
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t)
  (define-key magit-mode-map (kbd "<tab>") 'magit-section-toggle)
  (use-package magit-todos
    :ensure t
    :demand t
    )
  )

(use-package w3m
  :commands w3m-goto-url w3m-search
  :init
  (setq browse-url-browser-function 'w3m-browse-url)
  (setq w3m-use-cookies t)

  ;; clean up the w3m buffers:
  (add-hook 'w3m-display-functions 'w3m-hide-stuff)
  (add-hook 'w3m-mode 'ace-link-mode)

  (global-set-key (kbd "C-c w w") 'w3m-goto-url)
  (global-set-key (kbd "C-c w l") 'browse-url-at-point)
  (global-set-key (kbd "C-c w g") 'w3m-search)

  :config
  (define-key w3m-mode-map (kbd "&") 'w3m-view-url-with-external-browser))


;;; pass frontend
;; (use-package pass
;;   :ensure t
;;   :bind ("C-c C-u p" . pass))

;; ;;; fun
;; (use-package acme-search
;;   :config (global-set-key [(mouse-1)] 'acme-search-forward))

;; reddit
;; (use-package md4rd
;;   :ensure t
;;   :config (add-hook 'md4rd-mode-hook 'md4rd-indent-all-the-lines))

;; XXX: can't desrcibe how i hate external dependencies
;; (use-package format-all
;;   :ensure t
;;   :hook (prog-mode . format-all-mode))


(use-package expand-region
  :ensure t
  :config
  (use-package embrace
    :ensure t
    )
  )

(use-package dired
  :config
  (use-package dired-x
    :demand t)
  (setq dired-listing-switches "-alGhvF --group-directories-first"))

(use-package deadgrep
  :ensure t
  :config (global-set-key (kbd "<f5>") 'deadgrep))

(use-package recentf
  :custom
  (recentf-save-file "~/.config/emacs/recentf")
  (recentf-max-menu-items 10)
  (recentf-max-saved-items 200)
  (recentf-show-file-shortcuts-flag nil)
  :config
  (recentf-mode 1))

(use-package define-word
  :ensure t)

(use-package ibuffer
  :custom
  (ibuffer-show-empty-filter-groups nil)
  :config
  (use-package ibuffer-vc
    :ensure t
    :config
    (add-hook 'ibuffer-hook
	      (lambda ()
		(ibuffer-vc-set-filter-groups-by-vc-root)
		(unless (eq ibuffer-sorting-mode 'alphabetic)
		  (ibuffer-do-sort-by-alphabetic)))))
  )

(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'reverse)
  (setq uniquify-separator " • ")
  (setq uniquify-after-kill-buffer-p t)
  (setq uniquify-ignore-buffers-re "^\\*")
  )

(use-package harvest
  :demand t
  :ensure t
  :config
  (global-set-key (kbd "C-c h") 'harvest))

(use-package atomic-chrome
  :ensure t
  :config (atomic-chrome-start-server))

(use-package super-save
  :ensure t
  :config
  (super-save-mode t))

(use-package winner
  :config (winner-mode t))

(use-package pass
  :ensure t)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; terminal
(use-package vterm
  :ensure t)

;; debugger support
;; TODO: chekc me out!
(use-package realgud
  :ensure t)

(use-package rainbow-mode
  :ensure t
  :hook (prog-mode . rainbow-mode)
  )

(use-package wucuo
  :ensure t
  :hook
  (prog-mode . wucuo-start)
  (text-mode . wucuo-start)
  :init
  (setq ispell-program-name "hunspell")
  :config
  (flyspell-mode t)
  )


(use-package dumb-jump
  :ensure t
  :config
  (add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
  (setq dumb-jump-prefer-searcher 'rg)
  )


(use-package org-drill
  :ensure t)

(use-package sx
  :ensure t
  :config
  (bind-keys :prefix "C-c s"
             :prefix-map my-sx-map
             :prefix-docstring "Stack exchange keymap."
             ("q" . sx-tab-all-questions)
             ("i" . sx-inbox)
             ("o" . sx-open-link)
             ("u" . sx-tab-unanswered-my-tags)
             ("a" . sx-ask)
             ("s" . sx-search)))

(use-package jump-char
  :ensure t
  :bind ("M-m" . jump-char-forward))

(provide 'ysh_tools)
