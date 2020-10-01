(use-package ido
  :init
  (setq ido-enable-prefix nil
	ido-enable-flex-matching t
	ido-case-fold nil
	ido-use-filename-at-point 'guess
	ido-create-new-buffer 'always
	ido-use-virtual-buffers 'auto
	ido-max-window-height 15
	ido-max-prospects 10)
  :config

  (use-package ido-vertical-mode
    :ensure t)
  (use-package smex
    :ensure t)
  (use-package flx-ido
    :ensure t)
  ;; (use-package ido-occur :ensure t)

  (ido-mode 1)
  (flx-ido-mode t)
  (ido-vertical-mode 1)
  (smex-initialize)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)
  (ido-everywhere 1)
  (require 'icomplete)
  (icomplete-mode 1)
  (add-to-list 'ido-ignore-buffers "*Messages*")
  (setq magit-completing-read-function_'magit-ido-completing-read))

(use-package ido-completing-read+
  :ensure t
  :preface
  (defvar ido-ubiquitous-debug-mode nil)
  :config
  (ido-ubiquitous-mode 1))

(provide 'ysh_ido)
