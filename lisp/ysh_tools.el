;;; copy mode for command line
(use-package xclip
  :ensure t
  :config (xclip-mode 1))

;;; git frontend
(use-package magit
  :bind ("C-c g" . magit)
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

(use-package dired-x
  :demand t)

(provide 'ysh_tools)
