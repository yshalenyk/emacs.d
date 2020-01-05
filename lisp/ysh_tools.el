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

;; TODO: figure out why keybindings don't set-up in use-package
(define-key xah-fly-dot-keymap (kbd "f") 'projectile-find-file)
(define-key xah-fly-dot-keymap (kbd "p") 'projectile-switch-project)
(define-key xah-fly-dot-keymap (kbd "e") 'projectile-run-eshell)
(define-key xah-fly-dot-keymap (kbd "g") 'projectile-vc)
(define-key xah-fly-dot-keymap (kbd "s") 'projectile-ripgrep)
(define-key xah-fly-dot-keymap (kbd "t") 'projectile-regenerate-tags)

;;; git frontend
(use-package magit
  :hook (magit-mode . xah-fly-insert-mode-activate)
  :ensure t)

;;; pass frontend
(use-package pass
  :ensure t
  :bind ("C-c C-u p" . pass))

;; ;;; fun
;; (use-package acme-search
;;   :config (global-set-key [(mouse-1)] 'acme-search-forward))

;; reddit
(use-package md4rd
  :ensure t
  :config (add-hook 'md4rd-mode-hook 'md4rd-indent-all-the-lines))

(use-package format-all
  :ensure t
  :hook (prog-mode . format-all-mode))

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
  (recentf-save-file "~/.emacs.d/recentf")
  (recentf-max-menu-items 10)
  (recentf-max-saved-items 200)
  (recentf-show-file-shortcuts-flag nil)
  :config
  (recentf-mode 1))

(provide 'ysh_tools)
