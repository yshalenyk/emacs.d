
(use-package xah-fly-keys
  :ensure t
  :demand t
  :init
  (setq-default xah-fly-use-control-key nil)
  (setq-default xah-fly-use-meta-key nil)
  :config
  (xah-fly-keys-set-layout "dvorak")
  (global-set-key  (kbd "M-u") 'xah-fly-command-mode-activate-no-hook)
  (global-set-key  (kbd "M-'") 'keyboard-quit)
  (xah-fly-keys 1))

;; (global-set-key (kbd "ESC") 'xah-fly-command-mode-activate)
(provide 'fly_keys)
