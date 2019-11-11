
;; expand selectction
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "C--") 'er/contract-region))

(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-c C-c m") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this))


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
(use-package yafolding
  :ensure t
  :bind ("C-c <C-return>" . yafolding-toggle-element)
  :hook (prog-mode . yafolding-mode))

;; smart code comment
(use-package smart-comment
  :ensure t
  :bind ("M-;" . smart-comment))

(provide 'ysh_coding)
