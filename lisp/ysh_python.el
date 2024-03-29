
(use-package python-pytest
  :ensure t
  :bind (:map python-mode-map ("C-c t" . python-pytest-popup)))


(use-package elpy
  :ensure t
  :defer t
  :hook (elpy-mode . (lambda () (highlight-indentation-mode -1)))
  :init
  (advice-add 'python-mode :before 'elpy-enable))

(use-package python-pytest :ensure t)
;; (use-package anaconda-mode
;;   :ensure t
;;   :config
;;   (use-package company-anaconda
;;     :ensure t
;;     :config (add-to-list 'company-backends 'company-anaconda))
;;   (progn
;;     (add-hook 'python-mode-hook 'anaconda-mode)
;;     (add-hook 'python-mode-hook 'anaconda-eldoc-mode)))

;; (use-package pyenv-mode
;;   :ensure t
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
;;   :ensure t)

(provide 'ysh_python)
