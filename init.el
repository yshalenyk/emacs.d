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
(setq initial-scratch-message "") ; print a default message in the empty scratch buffer opened at startup
(setq native-comp-async-report-warnings-errors nil)
(defalias 'yes-or-no-p 'y-or-n-p)       ; must have
(pixel-scroll-precision-mode t)
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
(defvar custom-file-path "~/.config/emacs/custom.el" )
(if (not (file-exists-p custom-file-path))
    (write-region "" "" custom-file-path))
(setq custom-file custom-file-path)
(load custom-file)
(add-to-list 'load-path "~/.config/emacs/lisp/")
(add-to-list 'load-path "~/.config/emacs/vendor/taoline/")
(add-to-list 'load-path "~/.config/emacs/vendor/themes/")
;;(add-to-list 'load-path "~/work/xah-fly-keys")
;; (add-to-list 'load-path "~/.config/emacs/lisp/xah-fly-keys/")
;;; the following lines tell emacs where on the internet to look up
;;; for new packages.
(setq package-archives '(("org"       . "https://orgmode.org/elpa/")
                         ("gnu"       . "https://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ;;("marmalade" . "https://marmalade-repo.org/packages/")
                         ))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

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


(use-package quelpa
  :ensure t
  :config
  (use-package quelpa-use-package
    :ensure t)
  )

;;; auto update packages
;; (use-package auto-package-update
;;   :ensure t
;;   :config
;;   (setq auto-package-update-delete-old-versions t
;;         auto-package-update-interval 4)
;;   (auto-package-update-maybe))

;;; use libs
(use-package dash
  :ensure t)
(use-package s
  :ensure t)
(use-package monitor
  :ensure t)

;(use-package server
 ; :hook (after-init . server-start))
(use-package recentf
  :config (recentf-mode t))

(save-place-mode t)
(global-auto-revert-mode t)
(global-subword-mode t)

;; load config modules(

(use-package ysh_ui)
;; (use-package ysh_theme)
(use-package ysh_modes)
;; (use-package ysh_ido)
(use-package ysh_search)
;;(use-package ysh_consult)
;;(use-package ysh_helm)
(use-package ysh_coding)
;(use-package ysh_semantic)
;;(use-package ysh_autocomplete)
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
