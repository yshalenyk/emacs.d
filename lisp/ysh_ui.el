;;; ysh_ui.el --- ui settings
;;; Commentary:
;;; my Emacs ui configuration
;;; Code:

;; TODO: choose theme!!
(setq-default truncate-lines t)         ; straight lines
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . maximized)))))
(global-hl-line-mode 1)                 ; highlight current line
(setq default-frame-alist '((font . "Source Code Pro-14")))
(set-frame-font "Source Code Pro-16")   ; set default font
;; (set-frame-font "Noto Mono-10" t t)   ; set default font
;; (setq default-frame-alist '((font . "Noto Mono-10")))


;;(set-frame-font "Source Code Pro Regular-11" t t)   ; set default font
;;(setq default-frame-alist '((font . "Source Code Pro Medium-11")))


;;; Apperiance settings (minimal mode)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; modeline on top
;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format nil) ; Remove mode-line

;;; additional editing configuration
;; (electric-pair-mode 1)
(show-paren-mode 1)
(delete-selection-mode 1)
(setq-default indent-tabs-mode -1)
(setq-default tramp-default-method "ssh")
(fringe-mode 0)

;; (if (display-graphic-p)
;;     (setq initial-frame-alist
;;           '(
;;             (tool-bar-lines . 0)
;;             (width . 106)
;;             (height . 60)
;;             (background-color . "honeydew")
;;             (left . 50)
;;             (top . 50)))
  ;; (setq initial-frame-alist '( (tool-bar-lines . 0))))

(setq default-frame-alist initial-frame-alist)


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
;; (use-package modus-vivendi-theme
;;   :ensure t
;;   :config
;;   ;; (load-theme 'modus-vivendi t)
;;   ;; (setq my-current-theme 'modus-vivendi)
;;   )
;; (use-package leuven-theme
;;   :ensure t
;;   :config
;;   (load-theme 'leuven t)
;;   )

(use-package mindre-theme
    :ensure t
    :custom
    (mindre-use-more-bold nil)
    (mindre-use-faded-lisp-parens t)
    :config
    (load-theme 'mindre t))

;;default theme
(use-package modus-themes
  :ensure t
;;  :config
;;(load-theme 'modus-vivendiy t)
;; (setq ysh-current-theme 'modus-vivendi)
  )
;;(load-theme 'gruvbox t)
;; (use-package zenburn-theme
  ;; :ensure t
  ;; :config (load-theme 'zenburn t)
  ;; )

;; (use-package doom-themes
  ;; :ensure t
  ;; :config (load-theme 'doom-acario-light t))

;; (use-package faff-theme
  ;; :ensure t
  ;; :config (load-theme 'faff t)
  ;; )
(use-package gruvbox-theme
  :ensure t
  ;; :config (load-theme 'gruvbox t)
  )

;; (use-package alect-themes
;;   :ensure t
;;   :config (load-theme 'alect-light t)
;;   )

;; (use-package eclipse-theme
;;   :ensure t
;;   :config (load-theme 'eclipse t))

;; (use-package busybee-theme
  ;; :ensure t
  ;; :config
 ;; (load-theme 'busybee)
  ;; )
;;(use-package

;; (load-theme 'nofrils-acme)
;; Set the color of the fringe
;; (custom-set-faces
;;  '(fringe ((t (:background "white")))))

;; (custom-set-faces
;;   '(default ((t (:background "black" :foreground "grey"))))
;;   '(fringe ((t (:background "black")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (use-package eclipse-theme	      ;;
;;   :ensure t			      ;;
;;   :config (load-theme 'eclipse t)) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(use-package olivetti
  :ensure t
  :config (olivetti-mode t))

;; (flyspell-mode 1)


;; (use-package modus-themes
;;   :ensure t
;;   :config
;;   (setq modus-operandi-theme-prompts 'intense)
;;   (setq modus-operandi-theme-completions 'opinionated)
;;   (setq modus-operandi-theme-org-blocks 'greyscale)
;;   (setq modus-operandi-theme-scale-headings t)
;;   (load-theme 'modus-vivendi t)
;;   ;; Without it tables becomes missaligned
;;   (set-face-attribute 'button nil :inherit '(fixed-pitch)))


 ;; Command to toggle the display of the mode-line as a header
(defvar-local header-line-format nil)
(defun mode-line-in-header ()
  (interactive)
  (if (not header-line-format)
      (setq header-line-format mode-line-format
            mode-line-format nil)
    (setq mode-line-format header-line-format
          header-line-format nil))
  (set-window-buffer nil (current-buffer)))
(global-set-key (kbd "<f12>") 'mode-line-in-header)
;; (use-package    taoline
;;   :ensure       t
;;   :custom
;;   (taoline-show-git-branch      t)
;;   (taoline-show-dir             t)
;;   (taoline-show-time            nil)
;;   (taoline-show-previous-buffer nil)
;;   :config
;;   (taoline-mode t))

;;; show key bindings in popup
(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config (progn
	    (which-key-mode)
	    ;; (which-key-setup-side-window-bottom))
	    ;; (which-key-setup-minibuffer)))
	    (which-key-setup-side-window-right)))


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
;; (use-package rich-minority
;;   :ensure t
;;   :config (rich-minority-mode t))

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

;; (use-package highlight-symbol
;;   :ensure t
;;   :init (setq highlight-symbol-idle-delay 0.3)
;;   :config (highlight-symbol-mode t)
;;   )

(use-package idle-highlight-mode
  :ensure t
  :config (setq idle-highlight-idle-time 0.2)
  :hook ((prog-mode text-mode) . idle-highlight-mode))

(use-package org-modern
  :ensure t
  :config
  (setq org-hide-emphasis-markers t
      org-pretty-entities t
      org-auto-align-tags nil
      org-tags-column 0
      org-ellipsis "…"
      org-catch-invisible-edits 'show-and-error
      org-special-ctrl-a/e t
      org-insert-heading-respect-content t)
  :hook (org-mode . org-modern-mode)
  )

;; (use-package telephone-line
  ;; :ensure t
  ;; :config (telephone-line-mode 1))
;; 
;; alpha if you want
;;(set-frame-parameter (selected-frame) 'alpha '(90 . 30))
;;(add-to-list 'default-frame-alist '(alpha . (90 . 30)))
(provide 'ysh_ui)
;;; ysh_ui.el ends here
