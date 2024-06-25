(use-package python-pytest
  :straight t
  :bind (:map python-mode-map ("C-c t" . python-pytest-popup)))

(use-package flymake-ruff
  :straight t
  :hook
  (python-mode . flymake-ruff-load)
  (python-ts-mode . flymake-ruff-load))


(use-package pyvenv
  :straight t
  :config
  (pyvenv-mode t))

(use-package python-mode :defer
  :mode  ("\\.py\\'" . python-ts-mode)
  :interpreter "python3"
  :custom  (truncate-lines t))
;; (use-package elpy
;;   :straight t
;;   :defer t
;;   :hook (elpy-mode . (lambda () (highlight-indentation-mode -1)))
;;   :init
;;   (advice-add 'python-mode :before 'elpy-enable))

;; (use-package python-pytest :straight t)
;; (use-package anaconda-mode
;;   :straight t
;;   :config
;;   (use-package company-anaconda
;;     :straight t
;;     :config (add-to-list 'company-backends 'company-anaconda))
;;   (progn
;;     (add-hook 'python-mode-hook 'anaconda-mode)
;;     (add-hook 'python-mode-hook 'anaconda-eldoc-mode)))

;; (use-package pyenv-mode
;;   :straight t
;;   :hook (python-mode . pyenv-mode)
;;   :config
;;   (defun projectile-pyenv-mode-set ()
;;     "Set pyenv version matching project name."
;;     (let ((project (projectile-project-name)))
;;       (if (member project (pyenv-mode-versions))
;;           (pyenv-mode-set project)
;; 	(pyenv-mode-unset))))
;;   (add-hook 'projectile-after-switch-project-hook 'projectile-pyenv-mode-set))

;; (use-package pyenv-mode-auto
;;   :straight t)

(provide 'ysh_python)
