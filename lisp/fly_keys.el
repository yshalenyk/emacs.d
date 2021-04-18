
(use-package xah-fly-keys
  :ensure t
  :demand t
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
  )

;; (global-set-key (kbd "ESC") 'xah-fly-command-mode-activate)
(provide 'fly_keys)
