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
(menu-bar-mode +1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; modeline on top
;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format nil) ; Remove mode-line

;;; additional editing configuration
;; (electric-pair-mode 1)
(use-package electric
  :config
  (electric-pair-mode 1))

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

(defun dashboard-insert-org-roam-index (list-size)
  (insert (with-temp-buffer
            (insert-file-contents (expand-file-name "~/Documents/org-roam/20230120222512-index.org"))
            (buffer-string))))


(defun dashboard-insert-custom-index-link (list-size)

  (dashboard-insert-section
   "Org-Roam Index:"

   (dashboard-shorten-paths
    (list "~/Documents/org-roam/20230120222512-index.org")
    'dashboard-note-alist
    'note)
   list-size
   'note
   "n"
   `(lambda (&rest _)
      (find-file-existing (dashboard-expand-path-alist ,el dashboard-note-alist)))
   (format "%s" (cdr (car dashboard-note-alist)))))


(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook)  
  (setq dashboard-items '((recents  . 5)
                          (bookmarks . 5)
                          (projects . 5)))
  (add-to-list 'dashboard-item-generators '(org-roam-link . dashboard-insert-custom-index-link))
  (add-to-list 'dashboard-items '(org-roam-link) t)

  )


;; lighter modeline
(use-package diminish
  :straight t)

(use-package delight
  :straight t
  :config
  (delight
   '((abbrev-mode " Abv" "abbrev")
     (smart-tab-mode " \\t" "smart-tab")
     (eldoc-mode nil "eldoc")
     (rainbow-mode)
     (overwrite-mode " Ov" t)
     (emacs-lisp-mode "Elisp" :major)))
  )






(use-package olivetti
  :straight t
  :config (olivetti-mode t))

;; (flyspell-mode 1)


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

;;; show key bindings in popup
(use-package which-key
  :straight t
  :diminish which-key-mode
  :config (progn
	    (which-key-mode)
	    ;; (which-key-setup-side-window-bottom))
	    ;; (which-key-setup-minibuffer)))
	    (which-key-setup-side-window-right)))


;;; smart splits sizing
(use-package zoom
  :straight t
  :config (zoom-mode t))

;; (use-package golden-ratio
;;   :straight t
;;   :diminish golden-ratio-mode
;;   :config (golden-ratio-mode t))

;; Emacs package for hiding and/or highlighting the list of minor-modes in the mode-line.
;; TODO: telephone-line ??
;; (use-package rich-minority
;;   :straight t
;;   :config (rich-minority-mode t))

;;; quick jump between windows
(use-package ace-window
  :straight t
  :config (global-set-key (kbd "C-c C-o") 'ace-window))

;; better help view
(use-package helpful
  :straight t
  :config
  (global-set-key (kbd "C-h f") #'helpful-callable)
  (global-set-key (kbd "C-h v") #'helpful-variable)
  (global-set-key (kbd "C-h h") #'helpful-at-point)
  (global-set-key (kbd "C-h k") #'helpful-key)
  )

;; (use-package highlight-symbol
;;   :straight t
;;   :init (setq highlight-symbol-idle-delay 0.3)
;;   :config (highlight-symbol-mode t)
;;   )

(use-package idle-highlight-mode
  :straight t
  :config (setq idle-highlight-idle-time 0.2)
  :hook ((prog-mode text-mode) . idle-highlight-mode))


;; (use-package ef-themes
;;   :straight t
;;   :config
;;   (load-theme 'ef-day t))

;; (use-package solarized-theme
;;   :straight t
;;   :config (load-theme 'solarized-selenized-light t))
(use-package doom-themes
  :straight t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-gruvbox-light t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package doom-modeline
  :straight t
  :init (doom-modeline-mode 1)
  :config
  (setq
   doom-modeline-support-imenu t
   doom-modeline-project-detection 'auto
   doom-modeline-icon t
   doom-modeline-major-mode-icon t
   doom-modeline-buffer-state-icon t
   doom-modeline-lsp-icon t
   doom-modeline-buffer-name t
   doom-modeline-minor-modes nil
   doom-modeline-enable-word-count nil
   doom-modeline-buffer-encoding nil
   doom-modeline-lsp t
   doom-modeline-vcs-icon t
   doom-modeline-workspace-name t
   doom-modeline-github nil
   doom-modeline-battery t
   doom-modeline-time t
   doom-modeline-env-version t
  ))

;; (use-package mood-line
;;   :straight t
;;   ;; Enable mood-line
;;   :config
;;   (mood-line-mode)
;;   ;; Use pretty Fira Code-compatible glyphs
;;   ;;:custom
;;   ;;(mood-line-glyph-alist mood-line-glyphs-fira-code)
;;   )

(use-package all-the-icons
  :straight t)

(use-package all-the-icons-completion
  :straight t
  :after all-the-icons
  :config
  (all-the-icons-completion-mode)
  (add-hook 'marginalia-mode-hook #'all-the-icons-completion-marginalia-setup)
  )
;; 
;; alpha if you want
;;(set-frame-parameter (selected-frame) 'alpha '(90 . 30))
;;(add-to-list 'default-frame-alist '(alpha . (90 . 30)))
(provide 'ysh_ui)
;;; ysh_ui.el ends here
