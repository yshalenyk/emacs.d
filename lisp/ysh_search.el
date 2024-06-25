;;; fuzzy finder
(use-package ivy ;; TODO: ivy keymap IMPORTANT ;; https://github.com/abo-abo/swiper/blob/master/ivy.el#L409
  :demand
  :diminish ivy-mode
  :custom (ivy-use-virtual-buffers t) (ivy-height 15) (enable-recursive-minibuffers t)
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
  (use-package wgrep :straight t)
  (ivy-mode t)
  )

(use-package counsel
  :after (ivy)
  :straight t
  :diminish counsel-mode
  :bind
  ("C-c b" . counsel-buffer-or-recentf)
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :config
  ;; TODO: more consistent keybindings
  ;; (global-set-key (kbd "<f2> l") 'counsel-find-library)
  ;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  ;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  ;; (global-set-key (kbd "C-c s") 'swiper)
  ;; (global-set-key (kbd "C-c g") 'counsel-rg)
  ;; (global-set-key (kbd "C-c l") 'counsel-locate)
  (counsel-mode t))

(use-package prescient
  :straight t
  :custom
  (prescient-history-length 200)
  (prescient-save-file "~/.tools/emacs/prescient-items")
  (prescient-filter-method '(literal regexp))
  :config
  (prescient-persist-mode 1))

(use-package ivy-prescient
  :straight t
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
  :straight t
  :after (ivy counsel)
  :config (ivy-rich-mode t))

;; TODO: ivy-postframe
;; https://github.com/tumashu/ivy-posframe

(use-package counsel-projectile
  :straight t
  :after (ivy projectile)
  :config
  )

(provide 'ysh_search)
