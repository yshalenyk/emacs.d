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
;  :hook
 ; (magit-mode . xah-fly-insert-mode-activate)
  :config
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t)
  :ensure t)

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

(use-package format-all
  :ensure t
  :hook (prog-mode . format-all-mode))

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
;; ;; better eshell
;; (use-package aweshell
;;   :ensure t)

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
;; (use-package slime
;;   :ensure t
;;   :config (setq inferior-lisp-program "sbcl"))


(provide 'ysh_tools)
