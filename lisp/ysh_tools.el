;;; copy mode for command line
(use-package xclip
  :straight t
  :config (xclip-mode 1))

;; Project management solution
(use-package projectile
  :delight '(:eval (concat " " (projectile-project-name)))
  :straight t
  :custom (projectile-completion-system 'ivy)
  :config
  (use-package ripgrep
    :straight t)
  (use-package rg
    :straight t)
  (projectile-mode t)
  ;; (use-package helm-projectile
    ;; :straight t
  ;; :config (helm-projectile-on))
  (use-package counsel-projectile
    :straight t)
  )

;;; git frontend
(use-package magit
  :straight t
  :config
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t)
  (define-key magit-mode-map (kbd "<tab>") 'magit-section-toggle)
  ;; (use-package magit-todos
  ;;   :straight t
  ;;   :demand t
  ;;   )
  )

(use-package w3m
  :commands w3m-goto-url w3m-search
  :init
  (setq browse-url-browser-function 'w3m-browse-url)
  (setq w3m-use-cookies t)

  ;; clean up the w3m buffers:
  (add-hook 'w3m-display-functions 'w3m-hide-stuff)
  (add-hook 'w3m-mode 'ace-link-mode)

  (global-set-key (kbd "C-c w w") 'w3m-goto-url)
  (global-set-key (kbd "C-c w l") 'browse-url-at-point)
  (global-set-key (kbd "C-c w g") 'w3m-search)

  :config
  (define-key w3m-mode-map (kbd "&") 'w3m-view-url-with-external-browser))


(use-package forge
  :straight t
  :after magit)

;; (use-package pdf-tools
;;   :straight t
;;   :pin manual ;; don't reinstall when package updates
;;   :mode  ("\\.pdf\\'" . pdf-view-mode)
;;   :config
;;   (setq-default pdf-view-display-size 'fit-page)
;;   (setq pdf-annot-activate-created-annotations t)
;;   (pdf-tools-install :no-query)
;;   (require 'pdf-occur))

;;; pass frontend
;; (use-package pass
;;   :straight t
;;   :bind ("C-c C-u p" . pass))

;; ;;; fun
;; (use-package acme-search
;;   :config (global-set-key [(mouse-1)] 'acme-search-forward))

;; reddit
;; (use-package md4rd
;;   :straight t
;;   :config (add-hook 'md4rd-mode-hook 'md4rd-indent-all-the-lines))

;; XXX: can't desrcibe how i hate external dependencies
;; (use-package format-all
;;   :straight t
;;   :hook (prog-mode . format-all-mode))


(use-package expand-region
  :straight t
  :config
  (use-package embrace
    :straight t
    )
  :bind ("s-2" . er/expand-region)
  :bind ("s-8" . er/expand-region)
  )

(use-package dired
  :config
  (use-package dired-x
    :demand t)
  (setq dired-listing-switches "-alGhvF --group-directories-first"))

(use-package deadgrep
  :straight t
  :config (global-set-key (kbd "<f5>") 'deadgrep))

(use-package recentf
  :custom
  (recentf-save-file "~/.config/emacs/recentf")
  (recentf-max-menu-items 10)
  (recentf-max-saved-items 200)
  (recentf-show-file-shortcuts-flag nil)
  :config
  (recentf-mode 1))

(use-package define-word
  :straight t)

(use-package ibuffer
  :custom
  (ibuffer-show-empty-filter-groups nil)
  :config
  (use-package ibuffer-vc
    :straight t
    :config
    (add-hook 'ibuffer-hook
	      (lambda ()
		(ibuffer-vc-set-filter-groups-by-vc-root)
		(unless (eq ibuffer-sorting-mode 'alphabetic)
		  (ibuffer-do-sort-by-alphabetic)))))
  )

(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'reverse)
  (setq uniquify-separator " • ")
  (setq uniquify-after-kill-buffer-p t)
  (setq uniquify-ignore-buffers-re "^\\*")
  )

(use-package harvest
  :demand t
  :straight t
  :config
  (global-set-key (kbd "C-c h") 'harvest))

;(use-package atomic-chrome
;  :straight t
;  :config (atomic-chrome-start-server))

(use-package super-save
  :straight t
  :config
  (super-save-mode t))

(use-package winner
  :config (winner-mode t))

;; (use-package pass
;;   :straight t)

(use-package tablist
  :straight t)

;; terminal
(use-package vterm
  :straight t)

;; debugger support
;; TODO: check me out!
(use-package realgud
  :straight t)

(use-package rainbow-mode
  :straight t
  :hook (prog-mode . rainbow-mode)
  )

(require 'package)
(when (package-installed-p 'pdf-tools)
      (progn (message "pdf-tools availabe. loading...")
      (use-package pdf-tools
	:init
	(pdf-tools-install)  ; Standard activation command
	(pdf-loader-install) ; On demand loading, leads to faster startup time
	)))


(use-package wucuo
  :straight t
  :hook
  (prog-mode . wucuo-start)
  (text-mode . wucuo-start)
  :init
  (setq ispell-program-name "aspell")
  :config
  (flyspell-mode t)
  )


(use-package dumb-jump
  :straight t
  :config
  (add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
  (setq dumb-jump-prefer-searcher 'rg)
  :bind
  ("C-c C-p" . xref-go-forward)
  ("C-c C-n" . xref-go-bacward)
  )



(use-package sx
  :straight t
  :config
  (bind-keys :prefix "C-c s"
             :prefix-map my-sx-map
             :prefix-docstring "Stack exchange keymap."
             ("q" . sx-tab-all-questions)
             ("i" . sx-inbox)
             ("o" . sx-open-link)
             ("u" . sx-tab-unanswered-my-tags)
             ("a" . sx-ask)
             ("s" . sx-search)))

(use-package jump-char
  :straight t
  :bind ("C-o" . jump-char-forward))


(use-package dired
  :custom
  ;; See http://stackoverflow.com/questions/4115465/emacs-dired-too-much-information
  ;; NOTE: Just some information worth keeping in mind. More readable dired file
  ;; size output - consider adding F (make file type obvious), or p (p adds a
  ;; trailing slash to dirs, but makes moving dirs fail), and G (colorize) too.
  (dired-listing-switches "-alh --group-directories-first")
  :config
  ;; [[https://stackoverflow.com/questions/4076360/error-in-dired-sorting-on-os-x][macos - error in dired sorting on OS X - Stack Overflow]]
  ;; To fix the
  ;; (error "Listing directory failed but 'access-file' worked")
  ;; error. Emacs needs to use gnu's ls, which I get through nixpkgs' coreutils.
  ;; In my config, currently, Emacs is not picking up the path to my nix install
  ;; ls (todo: fix).
  ;;
  ;; Note that, unlike the info at the link provided above,
  ;; --group-directories-first is not needed to fix this error. I just like to
  ;; see the directories first in a dired buffer.
  (setq insert-directory-program (expand-file-name "/opt/homebrew/opt/coreutils/libexec/gnubin/ls"
                                                   (getenv "HOME"))))

(use-package dash-at-point
  :straight t
  :bind
  ("C-c h" . dash-at-point)
  ("C-c d" . dash-at-point-with-docset)
  )

(use-package visual-regexp
  :straight t
  :bind
  ("C-c q" . vr/query-replace)
  ("C-c r r" . vr/replace)
  )



(use-package treesit-auto
  :straight t
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))


(use-package treesit-fold
  :straight (treesit-fold :type git :host github :repo "emacs-tree-sitter/treesit-fold")
  :after (treesit-auto)
  :hook (prog-mode . treesit-fold-mode)
  :bind ("C-c SPC" . treesit-fold-toggle)
  )



;;   (setq treesit-language-source-alist
;;   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
;;     (c "https://github.com/tree-sitter/tree-sitter-c")
;;     (cmake "https://github.com/uyha/tree-sitter-cmake")
;; ;    (common-lisp "https://github.com/theHamsta/tree-sitter-commonlisp")
;;     (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
;;     (css "https://github.com/tree-sitter/tree-sitter-css")
;;  ;   (csharp "https://github.com/tree-sitter/tree-sitter-c-sharp")
;;     (elisp "https://github.com/Wilfred/tree-sitter-elisp")
;;     (go "https://github.com/tree-sitter/tree-sitter-go")
;; ;    (go-mod "https://github.com/camdencheek/tree-sitter-go-mod")
;;     (html "https://github.com/tree-sitter/tree-sitter-html")
;;   ;  (js . ("https://github.com/tree-sitter/tree-sitter-javascript" "master" "src"))
;;     (json "https://github.com/tree-sitter/tree-sitter-json")
;;     (lua "https://github.com/Azganoth/tree-sitter-lua")
;;     (make "https://github.com/alemuller/tree-sitter-make")
;;     (markdown "https://github.com/ikatyang/tree-sitter-markdown")
;;     (python "https://github.com/tree-sitter/tree-sitter-python")
;;     (r "https://github.com/r-lib/tree-sitter-r")
;;     (rust "https://github.com/tree-sitter/tree-sitter-rust")
;;     (toml "https://github.com/tree-sitter/tree-sitter-toml")
;;     (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src"))
;;     (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src"))
;;     (yaml "https://github.com/ikatyang/tree-sitter-yaml")))
;;   (dolist (lang treesit-language-source-alist)
;;   (unless (treesit-language-available-p (car lang))
;;     (treesit-install-language-grammar (car lang))))
;;   (setq treesit-load-name-override-list
;;    '((c++ "libtree-sitter-cpp")))


(use-package vterm-toggle
  :straight t
  :bind ("C-c t" . vterm-toggle)
  )

(provide 'ysh_tools)
