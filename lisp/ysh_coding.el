;; expand selectction
(use-package expand-region
  :ensure t
  )

;; smart jumps
(use-package avy
  :ensure t
  )

;; ;; text objects
;; (use-package objed
;;   :ensure t
;;   :hook (prog-mode . objed-mode))

;; smart wrap
(use-package smartparens-config
  :ensure smartparens
  :config (progn (show-smartparens-global-mode t))
  :hook
  (prog-mode . turn-on-smartparens-strict-mode)
  (markdown-mode . turn-on-smartparens-strict-mode)
  )
;; (use-package smartparens
;;   :ensure t
;;   :config
;;   (require 'smartparens-config))

;; (use-package paredit
;;   :ensure t
;;   :hook (lisp-mode . paredit-mode)
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

(provide 'ysh_coding)
