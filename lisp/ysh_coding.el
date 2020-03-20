;; expand selectction
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "C--") 'er/contract-region))

;; smart wrap
(use-package smartparens
  :ensure t
  :config (require 'smartparens-config))

;; more colors
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;;; syntax checking
(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode))


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
