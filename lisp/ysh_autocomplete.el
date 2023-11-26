(use-package ysh_commands
  :demand t)

(use-package corfu
  ;; Optional customizationsu
  :ensure t
  :after orderless
  :custom
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  (corfu-auto t)                 ;; Enable auto completion
  ;; (corfu-separator ?\s)          ;; Orderless field separator
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect-first nil)    ;; Disable candidate preselection
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
  :init
  (global-corfu-mode))

(use-package orderless
  :ensure t
   :init
   (setq completion-styles '(orderless)
         completion-category-defaults nil
         completion-category-overrides '((file (styles . (partial-completion)))))
   :config
   ;; Fix completing hostnames when using /ssh:
   (setq completion-styles '(orderless)
         completion-category-overrides '((file (styles basic partial-completion)))))
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


;; ;;; autocomplete
;; (use-package company
;;   :ensure t
;;   :diminish company-mode
;;   :init
;;   (setq company-idle-delay 0)
;;   (setq company-dabbrev-downcase nil)
;;   :config
;;   (global-company-mode)
;;   (define-key company-active-map (kbd "<escape>") 'ysh-commpany-abort-and-command-mode)
;;   (define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
;;   (define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)
;;   )

;; ;;; tooltips
;; (use-package company-quickhelp
;;   :ensure t
;;   :after company
;;   :config (company-quickhelp-mode 1))

;; ;; ;;; language server protocol
;; ;; (use-package lsp-mode
;; ;;   :ensure t
;; ;;   :custom (lsp-dart-sdk-dir "/home/yshalenyk/tools/dart-sdk")
;; ;;   :commands lsp
;; ;;   :init
;; ;;   (setq-default lsp-response-timeout 25)
;; ;;   (setq lsp-enable-snippet nil)
;; ;;   :hook (prog-mode . lsp)
;; ;;   :config (lsp-mode t))


;; ;; (use-package lsp-ui
;; ;;   :ensure t
;; ;;   :after (lsp-mode)
;; ;;   :config (lsp-ui-mode))


;; ;; (use-package company-lsp
;; ;;   :ensure t
;; ;;   :after (company lps-mode)
;; ;;   :config (push 'company-lsp company-backends))


;; ;; (use-package company-ansible
;; ;;   :ensure t
;; ;;   :after (company)
;; ;;   :config (push 'company-ansible company-backends))

;; (use-package company-terraform
;;   :ensure t
;;   :after company
;;   :config (company-terraform-init))

;; ;; ;;; debugger
;; ;; (use-package dap-mode
;; ;;   :ensure t
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
