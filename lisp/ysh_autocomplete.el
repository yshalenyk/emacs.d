(use-package ysh_commands
  :demand t)



;; Eglot configuration with custom path to python-lsp-server
(use-package eglot
  :hook
  (python-mode . eglot-ensure)
  (python-ts-mode . eglot-ensure)
  (rust-ts-mode . eglot-ensure)
  :bind (:map eglot-mode-map
	      ("C-c n a" . eglot-code-actions)
	      ("C-c n i" . xref-find-references)
	      ("C-c n d" . xref-find-definitions)
	      ("C-c n r" . eglot-rename)
	      ("C-c n h" . eldoc)
	      ("C-c n f" . eglot-format)
	      ("C-c n F" . eglot-format-buffer)
	      ("C-c n d" . xref-find-definitions-at-mouse)
	      ;; sometimes ionide acts up
	      ("C-c n R" . eglot-reconnect))

  :config
  (add-to-list 'eglot-server-programs '(python-mode . ("pyright-langserver" "--stdio")))
  ;;(add-to-list 'eglot-server-programs '(python-mode . ("/Users/yshalenyk/work/pylsp-env/bin/pylsp")))
  (require 'go-mode)
  (add-hook 'go-mode-hook 'lsp-deferred)
  (add-hook 'go-mode-hook 'subword-mode)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'go-mode-hook (lambda ()
                          (setq tab-width 4)
                          (flycheck-add-next-checker 'lsp 'go-vet)
                          (flycheck-add-next-checker 'lsp 'go-staticcheck)))
  (setq python-shell-interpreter "python3"))

(use-package corfu
  ;; Optional customizationsu
  :straight t
  :after orderless
  :config
  ;; Enable auto completion and configure quitting
  ;; (setq corfu-auto nil
  ;;     corfu-quit-no-match 'separator) ;; or t
  :custom
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  (corfu-auto t)                 ;; Enable auto completion
  ;; (corfu-separator ?\s)          ;; Orderless field separator
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  (corfu-preselect-first nil)    ;; Disable candidate preselection
  ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  ;; (corfu-echo-documentation nil) ;; Disable documentation in the echo area
  ;; (corfu-scroll-margin 5)        ;; Use scroll margin

  ;; Enable Corfu only for certain modes.
  ;; :hook ((prog-mode . corfu-mode)
  ;;        (shell-mode . corfu-mode)
  ;;        (eshell-mode . corfu-mode))

  ;; Recommended: Enable Corfu globally.
  ;; This is recommended since Dabbrev can be used globally (M-/).
  ;; See also `corfu-excluded-modes'.
    (defun corfu-eglot-setup ()
    (setq-local completion-styles '(orderless)
                completion-category-defaults nil))
  (add-hook 'eglot-managed-mode-hook #'corfu-lsp-setup)
  :init
  (global-corfu-mode))


;; Add extensions
(use-package cape
  :straight t
  :after orderless
  ;; Bind dedicated completion commands
  ;; Alternative prefix keys: C-c p, M-p, M-+, ...
  :bind (("C-c p p" . completion-at-point) ;; capf
         ("C-c p t" . complete-tag)        ;; etags
         ("C-c p d" . cape-dabbrev)        ;; or dabbrev-completion
         ("C-c p h" . cape-history)
         ("C-c p f" . cape-file)
         ("C-c p k" . cape-keyword)
         ("C-c p s" . cape-elisp-symbol)
         ("C-c p e" . cape-elisp-block)
         ("C-c p a" . cape-abbrev)
         ("C-c p l" . cape-line)
         ("C-c p w" . cape-dict)
         ("C-c p :" . cape-emoji)
         ("C-c p \\" . cape-tex)
         ("C-c p _" . cape-tex)
         ("C-c p ^" . cape-tex)
         ("C-c p &" . cape-sgml)
         ("C-c p r" . cape-rfc1345))
  :init
  ;; Add to the global default value of `completion-at-point-functions' which is
  ;; used by `completion-at-point'.  The order of the functions matters, the
  ;; first function returning a result wins.  Note that the list of buffer-local
  ;; completion functions takes precedence over the global list.
  (add-hook 'completion-at-point-functions #'cape-dabbrev)
  (add-hook 'completion-at-point-functions #'cape-file)
  (add-hook 'completion-at-point-functions #'cape-elisp-block)
  ;;(add-hook 'completion-at-point-functions #'cape-history)
  (add-hook 'completion-at-point-functions #'cape-keyword)
  ;;(add-hook 'completion-at-point-functions #'cape-tex)
  ;;(add-hook 'completion-at-point-functions #'cape-sgml)
  ;;(add-hook 'completion-at-point-functions #'cape-rfc1345)
  (add-hook 'completion-at-point-functions #'cape-abbrev)
  ;;(add-hook 'completion-at-point-functions #'cape-dict)
  ;;(add-hook 'completion-at-point-functions #'cape-elisp-symbol)
  ;;(add-hook 'completion-at-point-functions #'cape-line)
  )


;; A few more useful configurations...
(use-package emacs
  :init
  ;; TAB cycle if there are only few candidates
  (setq completion-cycle-threshold 3)

  ;; Emacs 28: Hide commands in M-x which do not apply to the current mode.
  ;; Corfu commands are hidden, since they are not supposed to be used via M-x.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)

  ;; Enable indentation+completion using the TAB key.
  ;; `completion-at-point' is often bound to M-TAB.
  (setq tab-always-indent 'complete))


;; (use-package flymake
;;   :hook
;;   (prog-mode . flymake-mode))

;; (defun run-python-lsp()
;;   (require 'lsp-pyright)
;;   (lsp-deferred)
;;   )

;; (use-package lsp-mode
;;   :straight t
;;   :init
;;   (setq lsp-keymap-prefix "C-c C-c")
;;   :hook ((latex-mode . lsp-deferred)
;; 		 (python-mode . run-python-lsp)
;; 		 (python-ts-mode . run-python-lsp)
;; 		 (c-mode . lsp-deferred)
;; 		 (c-ts-mode . lsp-deferred)
;; 		 (c++-mode . lsp-deferred)
;; 		 (c++-ts-mode . lsp-deferred)
;; 		 (cmake-mode . lsp-deferred)
;; 		 (cmake-ts-mode . lsp-deferred)
;; 		 (rust-mode . lsp-deferred)
;; 		 (rust-ts-mode . lsp-deferred)
;; 		 (lsp-mode . lsp-enable-which-key-integration))
;;   :commands (lsp lsp-deferred)
;;   :config
;;   (setq lsp-completion-provider :none)
;;   (defun corfu-lsp-setup ()
;; 	(setq-local completion-styles '(orderless)
;; 				completion-category-defaults nil))
;;   (add-hook 'lsp-mode-hook #'corfu-lsp-setup)
;;   )


;; (use-package lsp-pyright
;;   :straight t
;;   :hook
;;   (python-mode . run-python-lsp)
;;   (python-ts-mode . run-python-lsp)
;;   )

;; (use-package lsp-ui
;;   :straight t
;;   :commands lsp-ui-mode
;;   :after lsp-mode
;;   :config
;;   (setq lsp-ui-doc-enable t
;;        lsp-ui-doc-use-childframe t
;;         lsp-ui-doc-position 'at-point
;;         lsp-ui-doc-include-signature t
;;         lsp-ui-sideline-enable t
;;         lsp-ui-sideline-show-hover t
;;         lsp-ui-sideline-show-diagnostics t
;;         lsp-ui-sideline-show-code-actions t
;;         lsp-ui-imenu-enable t
;;         lsp-ui-imenu-kind-position 'top)
;;   (lsp-ui-mode))


;; (use-package consult-lsp
;;   :straight t)

;; ;; (use-package company-lsp
;; ;;   :straight t
;; ;;   :after (company lps-mode)
;; ;;   :config (push 'company-lsp company-backends))


;; ;; (use-package company-ansible
;; ;;   :straight t
;; ;;   :after (company)
;; ;;   :config (push 'company-ansible company-backends))

;; (use-package company-terraform
;;   :straight t
;;   :after company
;;   :config (company-terraform-init))

;; ;; ;;; debugger
;; ;; (use-package dap-mode
;; ;;   :straight t
;; ;;   :config (progn
;; ;; 	    (dap-mode 1)
;; ;; 	    (require 'dap-python)))

;; ;; (use-package dap-ui
;; ;;   :after dap-mode
;; ;;   :config (progn (tooltip-mode 1)
;; ;; 		 (dap-ui-mode 1)
;; ;; 		 (dap-tooltip-mode 1))
;; ;;   )

;; ;; (use-package dap-python
;; ;;   :config (setq dap-python-executable "python3"))

(provide 'ysh_autocomplete)
