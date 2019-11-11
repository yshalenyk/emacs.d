;;; copy mode for command line
(use-package xclip
  :ensure t
  :config (xclip-mode 1))



;;; git frontend
(use-package magit
  :bind ("C-c g" . magit)
  :ensure t)


;;; pass frontend
(use-package pass
  :ensure t
  :bind ("C-c C-u p" . pass))



;;; fun

;; reddit
(use-package md4rd
  :ensure t
  :config (add-hook 'md4rd-mode-hook 'md4rd-indent-all-the-lines))

;; twitter
(use-package twittering-mode
  :ensure t
  :config (progn (setq twittering-icon-mode t) (setq twittering-reverse-mode t) ))


;; mpd control
(use-package emms
  :ensure t
  :config
  (require 'emms-setup)
  (require 'emms-player-mpd)
  (setq emms-player-mpd-server-name "localhost"
	emms-player-mpd-server-port "6600"))

(provide 'ysh_tools)
