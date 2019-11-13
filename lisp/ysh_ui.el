;;; ysh_ui.el --- ui settings
;;; Commentary:
;;; my Emacs ui configuration
;;; Code:
(setq-default truncate-lines t)         ; straight lines
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(global-hl-line-mode 1)                 ; highlight current line
;; (setq default-frame-alist '((font . "Source Code Pro-12")))
;; (set-frame-font "Source Code Pro-12")   ; set default font
;; (set-frame-font "Noto Mono-10.5" t t)   ; set default font
;; (setq default-frame-alist '((font . "Noto Mono-10.5")))
(set-frame-font "Source Code Pro Medium-13" t t)   ; set default font
(setq default-frame-alist '((font . "Source Code Pro Medium-13")))

;;; Apperiance settings (minimal mode)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)


;;; additional editing configuration
(electric-pair-mode 1)
(show-paren-mode 1)
(delete-selection-mode 1)
(setq-default indent-tabs-mode -1)
(setq-default tramp-default-method "ssh")


;; Ibuffer
(global-set-key (kbd "C-c C-b") 'ibuffer-other-window)


;; lighter modeline
(use-package diminish
  :ensure t)

(use-package delight
  :ensure t
  :config (delight '((abbrev-mode " Abv" "abbrev")
           (smart-tab-mode " \\t" "smart-tab")
           (eldoc-mode nil "eldoc")
           (rainbow-mode)
           (overwrite-mode " Ov" t)
           (emacs-lisp-mode "Elisp" :major))))


;; setup themes
(use-package nofrils-acme-theme
  :ensure t
  :config (load-theme 'nofrils-light t))

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
	    (which-key-setup-side-window-bottom)
	    (which-key-setup-minibuffer)))


;;; smart splits sizing
(use-package golden-ratio
  :ensure t
  :diminish golden-ratio-mode
  :config (golden-ratio-mode t))

;; Emacs package for hiding and/or highlighting the list of minor-modes in the mode-line.
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
  (global-set-key (kbd "C-h k") #'helpful-key))

;; alpha if you want
;;(set-frame-parameter (selected-frame) 'alpha '(90 . 30))
;;(add-to-list 'default-frame-alist '(alpha . (90 . 30)))
(provide 'ysh_ui)
;;; ysh_ui.el ends here
