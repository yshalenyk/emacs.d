;;; fuzzy finder
(use-package ivy
  ;; TODO: ivy keymap IMPORTANT
  ;; https://github.com/abo-abo/swiper/blob/master/ivy.el#L409
  :demand
  :diminish ivy-mode
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-height 15)
  (enable-recursive-minibuffers t)

  (ivy-re-builders-alist
   '((swiper . ivy--regex-plus)
     (t      . ivy--regex-fuzzy)))

  (ivy-initial-inputs-alist
   '((counsel-M-x . "")
     (counsel-fzf . "")
     (counsel-rg . "")
     (swiper . "")
     (t . "^")))
  :config
  ;; TODO: wgrep
  (use-package wgrep :ensure t)
  (ivy-mode t)
  )

(use-package counsel
  :after (ivy)
  :ensure t
  :diminish counsel-mode
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :config
  ;; TODO: more consistent keybindings
  (global-set-key (kbd "<f2> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c s") 'swiper)
  (global-set-key (kbd "C-c g") 'counsel-rg)
  (global-set-key (kbd "C-c l") 'counsel-locate)
  (counsel-mode t))

(use-package prescient
  :ensure t
  :custom
  (prescient-history-length 200)
  (prescient-save-file "~/.emacs.d/prescient-items")
  (prescient-filter-method '(literal regexp))
  :config
  (prescient-persist-mode 1))

(use-package ivy-prescient
  :ensure t
  :after (prescient ivy)
  :custom
  (ivy-prescient-sort-commands
   '(:not swiper ivy-switch-buffer counsel-switch-buffer))
  (ivy-prescient-retain-classic-highlighting t)
  (ivy-prescient-enable-filtering t)
  (ivy-prescient-enable-sorting t)
  :config
  (ivy-prescient-mode 1))

;; More friendly interface for ivy
(use-package ivy-rich
  :ensure t
  :after (ivy counsel)
  :config (ivy-rich-mode t))

;; TODO: ivy-postframe
;; https://github.com/tumashu/ivy-posframe

(use-package counsel-projectile
  :ensure t
  :after (ivy projectile)
  :config
  )

(use-package projectile
  :delight '(:eval (concat " " (projectile-project-name)))
  :ensure t
  :custom (projectile-completion-system 'ivy)
  :config
  (projectile-mode t)
  )

;; TODO: figure out why keybindings don't set-up in use-package
(define-key xah-fly-dot-keymap (kbd "f") 'counsel-projectile-find-file)
(define-key xah-fly-dot-keymap (kbd "p") 'counsel-projectile-switch-project)
(define-key xah-fly-dot-keymap (kbd "e") 'projectile-run-eshell)
(define-key xah-fly-dot-keymap (kbd "g") 'projectile-vc)
(define-key xah-fly-dot-keymap (kbd "d") 'projectile-dired-other-window)

(provide 'ysh_search)
