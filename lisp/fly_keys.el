
(use-package xah-fly-keys
  :ensure t
  :demand t
  :init
  (setq-default xah-fly-use-control-key nil)
  (setq-default xah-fly-use-meta-key nil)
  :config
  (xah-fly-keys-set-layout "qwerty")
  (define-key xah-fly-key-map (kbd "ESC") 'xah-fly-command-mode-activate)
  (xah-fly-keys 1))

(global-set-key (kbd "ESC") 'xah-fly-command-mode-activate)
(provide 'fly_keys)
