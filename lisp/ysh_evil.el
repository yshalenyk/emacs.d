;;; ysh_abrev.el --- abbrev package

;;; Commentary:
;; personal abbrevs
;; stolen for xah or ported from snippets 〈Using Emacs Abbrev Mode for Abbreviation〉 http://ergoemacs.org/emacs/emacs_abbrev_mode.html



(use-package evil
  :config (evil-mode)
  :ensure t
  :demand t
  :preface
  (setq evil-want-visual-char-semi-exclusive t
        evil-magic t
        evil-echo-state t
        evil-indent-convert-tabs t
        evil-ex-search-vim-style-regexp t
        evil-ex-substitute-global t
        evil-ex-visual-char-range t  ; column range for ex commands
        evil-insert-skip-empty-lines t
        evil-mode-line-format 'nil
        evil-respect-visual-line-mode t
        ;; more vim-like behavior
        evil-symbol-word-search t
        ;; cursor appearance
        evil-default-cursor '+evil-default-cursor-fn
        evil-normal-state-cursor 'box
        evil-emacs-state-cursor  '(box +evil-emacs-cursor-fn)
        evil-insert-state-cursor 'bar
        evil-visual-state-cursor 'hollow
	evil-want-keybinding nil))


(use-package evil-collection
  :ensure t
  :after evil
  :custom (evil-collection-setup-minibuffer t)
  :config (evil-collection-init))


;; (define-key evil-normal-state-map " " 'counsel-M-x)
(define-key evil-normal-state-map ":" 'smex)
 
(use-package evil-magit
  :ensure t
  :demand t)


(provide 'ysh_evil)
