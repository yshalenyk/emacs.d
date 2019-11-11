;;; init.el --- Personal configuration
;;; Commentary:
;;; root configuration
;;; Code:

;;; initial configuration
(setq delete-old-versions -1 )		; delete excess backup versions silently
(setq version-control t )		; use version control
(setq vc-make-backup-files t )		; make backups file even when in version controlled dir
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) ) ; which directory to put backups file
(setq vc-follow-symlinks t )				       ; don't ask for confirmation when opening symlinked file
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) ) ;transform backups file name
(setq inhibit-startup-screen t )	; inhibit useless and old-school startup screen
(setq ring-bell-function 'ignore )	; silent bell when you make a mistake
(setq coding-system-for-read 'utf-8 )	; use utf-8 by default
(setq coding-system-for-write 'utf-8 )
(setq sentence-end-double-space nil)	; sentence SHOULD end with only a point.
;; (setq-default default-fill-column 80)	; toggle wrapping text at the 80th character
(setq initial-scratch-message "Welcome in Emacs") ; print a default message in the empty scratch buffer opened at startup
(defalias 'yes-or-no-p 'y-or-n-p)       ; must have


;; (setq-default package-check-signature nil)
;; use gpg2
(setq epg-gpg-program "gpg2")

;;; disable init.el modifying by custom system
(defvar custom-file-path "~/.emacs.d/custom.el" )
(if (not (file-exists-p custom-file-path))
    (write-region "" "" custom-file-path))
(setq custom-file custom-file-path)
(load custom-file)


 ;; bug in emacs-26.2
(when (version< emacs-version "26.3")
  (setq-default gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
  )
;;; packaging
(require 'package)
(setq package-enable-at-startup nil) ; tells emacs not to load any packages before starting up
(setq package-check-signature nil)   ; allow unsigned


(add-to-list 'load-path "~/.emacs.d/lisp/")
;;; the following lines tell emacs where on the internet to look up
;;; for new packages.
(setq package-archives '(("org"       . "https://orgmode.org/elpa/")
                         ("gnu"       . "https://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")))
(package-initialize)

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


;; load config modules
(use-package ysh_ui)
(use-package ysh_coding)
(use-package ush_autocomplete)
(use-package ysh_python)
(use-package ysh_abbrev)



;;; TODO: dap-mode
(provide 'init)
;;; init.el ends here
