;;; autocomplete
(use-package company
  :ensure t
  :diminish company-mode
  :init (progn (setq company-idle-delay 0)
	       (setq company-dabbrev-downcase nil)
	       (setq company-auto-complete t))
  :config (global-company-mode))

;;; tooltips
(use-package company-quickhelp
  :ensure t
  :after company
  :config (company-quickhelp-mode 1))

;;; language server protocol
(use-package lsp-mode
  :ensure t
  :custom (lsp-dart-sdk-dir "/home/yshalenyk/tools/dart-sdk")
  :commands lsp
  :init (setq-default lsp-response-timeout 25)
  :hook (prog-mode . lsp)
  :config (lsp-mode t))


(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :config (lsp-ui-mode))


(use-package company-lsp
  :ensure t
  :after (company lps-mode)
  :config (push 'company-lsp company-backends))


(use-package company-ansible
  :ensure t
  :after (company)
  :config (push 'company-ansible company-backends))

(use-package company-terraform
  :ensure t
  :after company
  :config (company-terraform-init))

;;; debugger
(use-package dap-mode
  :ensure t
  :config (progn
	    (dap-mode 1)
	    (require 'dap-python)))

(use-package dap-ui
  :after dap-mode
  :config (progn (tooltip-mode 1)
		 (dap-ui-mode 1)
		 (dap-tooltip-mode 1))
  )

(use-package dap-python
  :config (setq dap-python-executable "python3"))

(provide 'ysh_autocomplete)
