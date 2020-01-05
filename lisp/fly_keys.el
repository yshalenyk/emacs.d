(setq xah-fly-use-control-key nil)
(setq xah-fly-use-meta-key nil)
(use-package xah-fly-keys
  :ensure t
  :demand t
  :init

  :config
  (xah-fly-keys-set-layout "qwerty")
  (define-key xah-fly-key-map (kbd "ESC") 'xah-fly-command-mode-activate)
  (xah-fly-keys 1))

(provide 'fly_keys)
