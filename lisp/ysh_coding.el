;; expand selectction
(use-package expand-region
  :ensure t
  )

;; smart jumps
(use-package avy
  :ensure t
  :config (setq avy-keys '(?a ?o ?e ?u ?d ?h ?t ?n ?s))
  )

;; ;; text objects
;; (use-package objed
;;   :ensure t
;;   :hook (prog-mode . objed-mode))

;; smart wrap
(use-package smartparens-config
  :ensure smartparens
  :config (progn (show-smartparens-global-mode t))
  )
;; (use-package smartparens
;;   :ensure t
;;   :config
;;   (require 'smartparens-config))

;; (use-package paredit
;;   :ensure t
;;	   :hook (lisp-mode . paredit-mode)
;;   )

;; more colors
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; ;;; syntax checking
;; (use-package flycheck
;;   :ensure t
;;   :hook (prog-mode . flycheck-mode))


;;; better code folding
;; (use-package yafolding
;;   :ensure t
;;   :bind ("C-c <C-return>" . yafolding-toggle-element)
;;   :hook (prog-mode . yafolding-mode))

(use-package hide-show
  :bind ("<C-return>" . hs-toggle-hiding)
  :hook (prog-mode . hs-minor-mode)
  )

(use-package tree-sitter
  :ensure t
  :config
  (global-tree-sitter-mode)
  )
(use-package tree-sitter-langs :ensure t)


;; TODO: bind keys for skeletor
(use-package skeletor
  :ensure t)

(provide 'ysh_coding)
