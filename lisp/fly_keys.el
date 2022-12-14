""
(use-package xah-fly-keys
  :demand t
  :quelpa (xah-fly-keys :fetcher git :url "https://github.com/xahlee/xah-fly-keys")
  :init
  (setq-default xah-fly-use-control-key nil)
  (setq-default xah-fly-use-meta-key nil)
  :config
  (xah-fly-keys-set-layout "dvorak")
  (setq xah-fly-M-x-command 'counsel-M-x)
  (global-set-key  (kbd "M-u") 'xah-fly-command-mode-activate-no-hook)
  (global-set-key  (kbd "M-'") 'keyboard-quit)
  (xah-fly-keys 1)
  (define-key xah-fly-w-keymap (kbd "n") 'make-frame)
  (define-key xah-fly-w-keymap (kbd "j") 'other-frame)
  (define-key xah-fly-c-keymap (kbd ".") 'counsel-find-file)
  (define-key xah-fly-c-keymap (kbd "h") 'counsel-recentf)
  ;; (define-key xah-fly-leader-key-map (kbd "e") 'lsp-keymap-prefix)
  )

;; (global-set-key (kbd "ESC") 'xah-fly-command-mode-activate)
(provide 'fly_keys)
