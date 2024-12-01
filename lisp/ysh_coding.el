;; expand selectction
;;(use-package expand-region
;;  :ensure t
;;  )

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
;; (use-package smartparens-config
;; :ensure smartparens
;; :config
					; 
;; (show-smartparens-global-mode t)
;; )

;;; (use-package smartparens
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
  :bind ("C-c SPC" . hs-toggle-hiding)
  :hook (prog-mode . hs-minor-mode)
  )


(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . copilot-accept-completion)
              ("TAB" . copilot-accept-completion)
              ("C-<tab>" . copilot-accept-completion-by-word)
              ("C-TAB" . copilot-accept-completion-by-word)
              ("C-c C-p" . copilot-previous-completion)
              ("C-c C-n" . copilot-next-completion)
              ("C-c C-d" . copilot-dismiss-completion))
  :ensure t
  :config
  (add-to-list 'copilot-indentation-alist '(org-mode 2))
  (add-to-list 'copilot-indentation-alist '(text-mode 2))
  (add-to-list 'copilot-indentation-alist '(closure-mode 2))
  (add-to-list 'copilot-indentation-alist '(emacs-lisp-mode 2))
  (add-to-list 'copilot-indentation-alist '(lisp-mode 2))
  )

;; ;; TODO: bind keys for skeletor
;; (use-package skeletor
;;   :ensure t)

(provide 'ysh_coding)
