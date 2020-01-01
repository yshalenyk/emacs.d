(use-package xah-fly-keys
  :ensure t
  :demand t
  :init
  (setq xah-fly-use-control-key nil)
  :config
  (xah-fly-keys-set-layout "qwerty")
  (define-key xah-fly-key-map (kbd "ESC") 'xah-fly-command-mode-activate)
  (xah-fly-keys 1))

(provide 'fly_keys)
