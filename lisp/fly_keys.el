(use-package xah-fly-keys
  :ensure t
  :config
  (setq xah-fly-use-meta-key nil)
  (xah-fly-keys-set-layout "qwerty")
  (define-key xah-fly-key-map (kbd "ESC") 'xah-fly-command-mode-activate)
  (xah-fly-keys 1))

(provide 'fly_keys)
