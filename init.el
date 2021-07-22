;;; init.el --- Personal configuration
;;; Commentary:
;;; root configuration
;;; Code:

;;; initial configuration
(setq delete-old-versions -1 )		; delete excess backup versions silently
(setq version-control t )		; use version control
(setq vc-make-backup-files t )		; make backups file even when in version controlled dir
(setq backup-directory-alist `(("." . "~/.config/emacs/backups")) ) ; which directory to put backups file
(setq vc-follow-symlinks t )				       ; don't ask for confirmation when opening symlinked file
(setq auto-save-file-name-transforms '((".*" "~/.config/emacs/auto-save-list/" t)) ) ;transform backups file name
(setq inhibit-startup-screen t )	; inhibit useless and old-school startup screen
(setq ring-bell-function 'ignore )	; silent bell when you make a mistake
(setq coding-system-for-read 'utf-8 )	; use utf-8 by default
(setq coding-system-for-write 'utf-8 )
(setq sentence-end-double-space nil)	; sentence SHOULD end with only a point.
;; (setq-default default-fill-column 80)	; toggle wrapping text at the 80th character
(setq initial-scratch-message "Welcome in Emacs") ; print a default message in the empty scratch buffer opened at startup
(defalias 'yes-or-no-p 'y-or-n-p)       ; must have
;; (setq mode-line-format nil)

;; won’t have to reach for the return key to add newlines
;; (setq next-line-add-newlines t)

;; (setq-default package-check-signature nil)
;; use gpg2
(setq epg-gpg-program "gpg2")

;; word navigate
(subword-mode t)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; gc threshold
(setq gc-cons-threshold 20000000)

;; woman
(defalias 'man 'woman)

;;; disable init.el modifying by custom system
; (defvar custom-file-path "~/.config/emacs/custom.el" )
; (if (not (file-exists-p custom-file-path))
;     (write-region "" "" custom-file-path))
; (setq custom-file custom-file-path)
; (load custom-file)
;

;; bug in emacs-26.2
;; (when (version< emacs-version "26.3")
;;   (setq-default gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;;   )
;;; packaging
(require 'package)
(setq package-enable-at-startup nil) ; tells emacs not to load any packages before starting up
(setq package-check-signature nil)   ; allow unsigned


(add-to-list 'load-path "~/.config/emacs/lisp/")
;;(add-to-list 'load-path "~/work/xah-fly-keys")
;; (add-to-list 'load-path "~/.config/emacs/lisp/xah-fly-keys/")
;;; the following lines tell emacs where on the internet to look up
;;; for new packages.
(setq package-archives '(("org"       . "https://orgmode.org/elpa/")
                         ("gnu"       . "https://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ;;("marmalade" . "https://marmalade-repo.org/packages/")
                         ))
(package-initialize)



(setq inhibit-startup-screen t)
;; (define-key key-translation-map (kbd "ESC") (kbd "C-g"))
;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)
;; (setenv "LANG" "en_US.UTF-8" )
;; (setenv "LC_ALL" "en_US.UTF-8" )

;; refresh
(when (not package-archive-contents)
  (package-refresh-contents))

;;; Bootstrap `use-package'
(unless (package-installed-p 'use-package) ; unless it is already installed
  (package-refresh-contents) ; updage packages archive
  (package-install 'use-package)) ; and install the most recent version of use-package

(require 'use-package) ; guess what this one does too ?


;;; auto update packages
(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t
        auto-package-update-interval 4)
  (auto-package-update-maybe))

;;; use libs
(use-package dash
  :ensure t)
(use-package s
  :ensure t)
(use-package monitor
  :ensure t)

(use-package server
  :hook (after-init . server-start))
(use-package recentf
  :config (recentf-mode t))

(save-place-mode t)
(global-auto-revert-mode t)
(global-subword-mode t)

;; load config modules(

;; (use-package fly_keys)
;; (use-package map
;;  :after (fly_keys smartparens))
;; (use-package ysh_viper)

(use-package ysh_ui)
;; (use-package ysh_theme)
(use-package ysh_modes)
;; (use-package ysh_ido)
;(use-package ysh_search)
(use-package ysh_consult)
;;(use-package ysh_helm)
(use-package ysh_coding)
;(use-package ysh_semantic)
(use-package ysh_autocomplete)
(use-package ysh_python)
(use-package ysh_abbrev)
(use-package ysh_tools)
;(use-package ysh_semantic)
;; (use-package ysh_lisp)
(use-package ysh_keys)

;;(use-package ysh_evil)
;;; TODO: dap-mode
(provide 'init)
;;; init.el ends here












(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   '("3199be8536de4a8300eaf9ce6d864a35aa802088c0925e944e2b74a574c68fd0" "979525ee3cdbe0d4ceab63147ec710be4cbdac0e66aae9d280c05bcbff89b15d" "295e7432a47e9fd4c5c141fe19e0dff68ad770fc6d886163574b7b393c98a655" "608d62554aebff37a22f9b2ae2b149b606bc7c3a59793ab4b25b7f41f153fcb0" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "bc4c89a7b91cfbd3e28b2a8e9e6750079a985237b960384f158515d32c7f0490" "95d0ed21bb0e919be7687a25ad59a1c2c8df78cbe98c9e369d44e65bfd65b167" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "413ba24c4f8a0d187a43d69dc7cbfd8b1d8782739422ba2368eb5f0893f0642a" "ca70827910547eb99368db50ac94556bbd194b7e8311cfbdbdcad8da65e803be" "e3c64e88fec56f86b49dcdc5a831e96782baf14b09397d4057156b17062a8848" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "fce3524887a0994f8b9b047aef9cc4cc017c5a93a5fb1f84d300391fba313743" "8f5a7a9a3c510ef9cbb88e600c0b4c53cdcdb502cfe3eb50040b7e13c6f4e78e" "5078e1845735a69b21b5effe083998dc368853320f449530c2616cf70bc3c47b" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "72e041c9a2cec227a33e0ac4b3ea751fd4f4039235035894bf18b1c0901e1bd6" "bc7627a5d14001acb3237151df7ccb413b57e4a820295ec24562c132efcacb2e" "00c5138bb71c95ca37a0fc845656498a8b4ff271ba4e0e0845732d188359d55a" "de1f10725856538a8c373b3a314d41b450b8eba21d653c4a4498d52bb801ecd2" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" default))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(jump-char idle-highlight-mode marginalia consult vertico lsp-mode corfu helm ereader sx modus-themes sketch-themes tao-theme yoshi-theme hybrid-reverse-theme twilight-theme magit-todos gruber-darker-theme alect-themes powerline org-drill simple-modeline soft-stone-theme doom-themes gandalf-theme dashboard projectile counsel rustic dash zoom zenburn-theme yaml-mode xterm-color xclip xah-fly-keys which-key wgrep vue-mode vterm use-package telephone-line super-save sunny-day-theme smartparens rust-mode ripgrep rich-minority realgud rainbow-delimiters python-pytest pyenv-mode-auto pkg-info phoenix-dark-pink-theme pass paper-theme page-break-lines olivetti nix-mode nginx-mode monitor moe-theme modus-vivendi-theme modus-operandi-theme md4rd markdown-mode ivy-rich ivy-prescient ibuffer-vc ht hide-mode-line helpful harvest gruvbox-theme graphql-mode go-mode format-all faff-theme expand-region evil-magit elpy eink-theme eclipse-theme doom-modeline dmenu diminish delight define-word deadgrep dart-mode darktooth-theme counsel-projectile company-terraform company-quickhelp color-theme-sanityinc-tomorrow brutalist-theme auto-package-update auto-complete atomic-chrome annalist ample-theme ada-mode ace-window))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
