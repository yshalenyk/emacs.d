;;; ysh_ui.el --- ui settings
;;; Commentary:
;;; my Emacs ui configuration
;;; Code:
(setq-default truncate-lines t)         ; straight lines
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . maximized)))))
(global-hl-line-mode 1)                 ; highlight current line
;; (setq default-frame-alist '((font . "Source Code Pro-12")))
;; (set-frame-font "Source Code Pro-12")   ; set default font
;; (set-frame-font "Noto Mono-10" t t)   ; set default font
;; (setq default-frame-alist '((font . "Noto Mono-10")))

(set-frame-font "Source Code Pro Medium-12.5" t t)   ; set default font
(setq default-frame-alist '((font . "Source Code Pro Medium-12.5")))

;;; Apperiance settings (minimal mode)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;; additional editing configuration
;; (electric-pair-mode 1)
(show-paren-mode 1)
(delete-selection-mode 1)
(setq-default indent-tabs-mode -1)
(setq-default tramp-default-method "ssh")

;; lighter modeline
(use-package diminish
  :ensure t)

(use-package delight
  :ensure t
  :config
  (delight
   '((abbrev-mode " Abv" "abbrev")
     (smart-tab-mode " \\t" "smart-tab")
     (eldoc-mode nil "eldoc")
     (rainbow-mode)
     (overwrite-mode " Ov" t)
     (emacs-lisp-mode "Elisp" :major))))

;;_setup_themes
;; (use-package gruvbox-theme
;; ;;   :ensure t :config (load-theme 'gruvbox t))
;; (use-package modus-vivendi-theme
;;   :ensure t
;;   :config
;;   ;; (load-theme 'modus-vivendi t)
;;   ;; (setq my-current-theme 'modus-vivendi)
;;   )


;;default theme
;; (use-package modus-operandi-theme
;;   :ensure t
;;   :config
;;   (load-theme 'modus-operandi t)
;; ;;  (setq ysh-current-theme 'modus-vivendi)
;;   )

(use-package eclipse-theme
  :ensure t
  :config (load-theme 'eclipse t))

;; (use-package brutalist-theme
;;   :ensure t
;;   :config (load-theme 'brutalist t))
;; Or, if you use `use-package', do something like this:
;; (use-package ample-theme
;;   :init (progn (load-theme 'ample t t)
;;                (load-theme 'ample-flat t t)
;;                (load-theme 'ample-light t t)
;;                (enable-theme 'ample-light))
;;   :defer t
;;   :ensure t)
;; (defun ysh-switch-theme()
;;   (interactive)
;;   (cond
;;    ((eq ysh-current-theme 'modus-vivendi)
;;     (load-theme 'modus-operandi)
;;     (setq ysh-current-theme 'modus-operandi)
;;     )
;;    (t
;;     (load-theme 'modus-vivendi)
;;     (setq ysh-current-theme 'modus-vivendi)
;;     )
;;    )
;;   )

;; (global-set-key (kbd "<f6>") 'my-switch-theme)
;; (use-package nord-theme
;;   :ensure t
;;   :config (load-theme 'nord t))
(use-package olivetti
  :ensure t
  :config (olivetti-mode t))

(olivetti-mode 1)        ;; Centers text in the buffer
(flyspell-mode 1)

;; (use-package kaolin-themes
;;   :ensure t
;;   :config (load-theme 'kaolin-light t))

;; other themes
;; (use-package almost-mono-themes
;;   :ensure t
;;   :config (load-theme 'almost-mono-white t))

;; (use-package eziam-theme
;;     :defer t
;;     :init (load-theme 'eziam-light))

;; (use-package eziam-light-theme
;;     :ensure eziam-theme)

;;; show key bindings in popup
(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config (progn
	    (which-key-mode)
	    (which-key-setup-side-window-right)))

;; (which-key-setup-side-window-bottom))
;; (which-key-setup-minibuffer)))

;;; smart splits sizing
(use-package zoom
  :ensure t
  :config (zoom-mode t))

;; (use-package golden-ratio
;;   :ensure t
;;   :diminish golden-ratio-mode
;;   :config (golden-ratio-mode t))

;; Emacs package for hiding and/or highlighting the list of minor-modes in the mode-line.
;; TODO: telephone-line ??
(use-package rich-minority
  :ensure t
  :config (rich-minority-mode t))

;;; quick jump between windows
(use-package ace-window
  :ensure t
  :config (global-set-key (kbd "C-c C-o") 'ace-window))

;; better help view
(use-package helpful
  :ensure t
  :config
  (global-set-key (kbd "C-h f") #'helpful-callable)
  (global-set-key (kbd "C-h v") #'helpful-variable)
  (global-set-key (kbd "C-h h") #'helpful-at-point)
  (global-set-key (kbd "C-h k") #'helpful-key)
  )

(use-package highlight-symbol
  :ensure t
  :init (setq highlight-symbol-idle-delay 0.3)
  :config (highlight-symbol-mode t)
  )

;; (use-package telephone-line
;;   :ensure t
;;   :config (telephone-line-mode 1))

;; alpha if you want
;;(set-frame-parameter (selected-frame) 'alpha '(90 . 30))
;;(add-to-list 'default-frame-alist '(alpha . (90 . 30)))
(provide 'ysh_ui)
;;; ysh_ui.el ends here
