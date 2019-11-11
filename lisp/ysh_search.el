;;; fuzzy finder
(use-package ivy
  :demand
  :diminish ivy-mode
  :config (progn
	  (ivy-mode t)
  	  (setq ivy-use-virtual-buffers t)
	  (setq ivy-height 15)
  	  (setq enable-recursive-minibuffers t)
	  (setq ivy-re-builders-alist
		'((swiper . ivy--regex-plus)
		  (t      . ivy--regex-fuzzy)))
  	  (global-set-key "\C-s" 'swiper)
  	  (global-set-key (kbd "C-c C-r") 'ivy-resume)
	  (global-set-key (kbd "C-c s") 'counsel-rg)
	  (global-set-key (kbd "C-c l") 'counsel-locate)
	  (global-set-key (kbd "C-x C-b") 'ibuffer)
	  (global-set-key (kbd "M-y") 'counsel-yank-pop)
  	  (global-set-key (kbd "<f2> l") 'counsel-find-library)
  	  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  	  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)))

(use-package counsel
  :after (ivy)
  :ensure t
  :diminish counsel-mode
  :config (progn
	    (setq counsel-describe-function-function #'helpful-callable)
	    (setq counsel-describe-variable-function #'helpful-variable)
	    (counsel-mode t)))

(use-package ivy-rich
  :ensure t
  :after (ivy counsel)
  :config (ivy-rich-mode t))

(use-package counsel-projectile
  :ensure t
  :after (ivy projectile)
  :config (progn
	    (global-set-key (kbd "C-c p p") 'counsel-projectile-switch-project)
	    (global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)))


(use-package projectile
  :delight '(:eval (concat " " (projectile-project-name)))
  :ensure t
  :config (progn (projectile-mode t)
		 (setq projectile-completion-system 'ivy)
		 (global-set-key (kbd "C-c p d") 'projectile-dired-other-window)
		 (global-set-key (kbd "C-c p s") 'projectile-run-eshell)))


(provide 'ysh_search)
