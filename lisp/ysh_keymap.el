;; (use-package ysh_commands
;; :demand t)
;; TODO: whichkey mode
;; TODO: calc mode
;; TODO: diff mode
;; TODO: debug mode
;; TODO: ediff mode

(xah-fly--define-keys
 xah-fly-command-map
 '(
   ;; empty
   ("\\" . nil)

   ;; leader
   ("SPC" . xah-fly-leader-key-map)
   ("DEL" . xah-fly-leader-key-map)

   ;; splits and frames
   ("3" . delete-other-windows)
   ("4" . split-window-below)
   ("`" . other-frame)
   ;; ("#" . xah-backward-quote)
   ;; ("$" . xah-forward-punct)

   ;; selection
   ("1" . er/contract-region)
   ("2" . xah-select-line)
   ("6" . xah-select-block)
   ("7" . xah-select-line)
   ("8" . er/expand-region)
   ("9" . xah-select-text-in-quote)

   ;; deletion
   ("5" . delete-char)
   ("," . xah-shrink-whitespaces)
   ("e" . xah-delete-backward-char-or-bracket-text)
   ("p" . xah-kill-word)
   ("." . xah-backward-kill-word)

   ;; navigation
   ("c" . previous-line)
   ("t" . next-line)
   ("d" . xah-beginning-of-line-or-block)
   ("s" . xah-end-of-line-or-block)
   ("g" . backward-word)
   ("r" . forward-word)
   ("h" . backward-char)
   ("n" . forward-char)
   ("v" . xah-forward-right-bracket)
   ("m" . xah-backward-left-bracket)
   ("z" . xah-goto-matching-bracket)
   ("[" . xah-ackward-punct )
   ("]" . xah-forward-punct)

   ;; jumping
   ("w" . ace-window)
   ("i" . avy-goto-char)
   ("0" . xah-pop-local-mark-ring)
   ;; ("=" . xah-forward-equal-sign)

   ;; commands
   ("'" . keyboard-quit)
   ("a" . xah-fly-M-x)
   ("b" . isearch-forward)
   ("f" . undo)
   (";" . xah-comment-dwim)
   ("/" . hippie-expand)
   ("j" . xah-copy-line-or-region)
   ("k" . xah-paste-or-paste-previous)
   ;; ("l" . xah-fly-insert-mode-activate-space-before)
   ("l" . xah-insert-space-before)
   ("o" . open-line)
   ("q" . xah-cut-line-or-region)
   ("u" . xah-fly-insert-mode-activate)
   ("x" . xah-toggle-letter-case)
   ("y" . set-mark-command)
   ("-" . xah-cycle-hyphen-underscore-space)
   ))



;; (defun ysh-xfk-addon-command ()
;;   "Modify keys for xah fly key command mode keys
;; To be added to `xah-fly-command-mode-activate-hook'"
;;   (interactive)

;; (define-key xah-fly-key-map (kbd "j") 'ysh-move-left-cmd)
;; (define-key xah-fly-key-map (kbd "l") 'ysh-move-right-cmd)
;; (define-key xah-fly-key-map (kbd "i") 'ysh-move-up-cmd)
;; (define-key xah-fly-key-map (kbd "k") 'ysh-move-down-cmd)
;;
;; (define-key xah-fly-key-map (kbd "n") 'ido-occur)
;; (define-key xah-fly-key-map (kbd "2") 'er/expand-region)
;; (define-key xah-fly-key-map (kbd "h") 'ysh-region-left-cmd)
;; (define-key xah-fly-key-map (kbd ";") 'ysh-region-right-cmd)
;; (define-key xah-fly-key-map (kbd "u") 'ysh-word-left-cmd)
;; (define-key xah-fly-key-map (kbd "o") 'ysh-word-right-cmd)
;; (define-key xah-fly-key-map (kbd "f") 'ysh-toggle-edit)
;; (define-key xah-fly-key-map (kbd "d") 'ysh-delete-char-cmd)
;; (define-key xah-fly-key-map (kbd "g") 'ysh-delete-region-cmd)
;; (define-key xah-fly-key-map (kbd "x") 'ysh-delete-line-cmd)
;; (define-key xah-fly-key-map (kbd "e") 'ysh-delete-word-left-cmd)
;; (define-key xah-fly-key-map (kbd "r") 'ysh-delete-word-right-cmd)
;; (define-key xah-fly-key-map (kbd "b") 'ysh-toggle-cmd)
;; (define-key xah-fly-key-map (kbd "m") 'sp-backward-sexp)
;; (define-key xah-fly-key-map (kbd ".") 'sp-forward-sexp))

;; (add-hook 'xah-fly-command-mode-activate-hook 'ysh-xfk-addon-command)


;; (use-package diff-mode
;;   :config
;;   ;; TODO: ediff patch
;;   ;; TODO:    ("r" . diff-restrict-view)
;;   ;; TODO: ("R" . diff-reverse-direction)
;;   (define-key diff-mode-shared-map (kbd "i") 'previous-line)
;;   (define-key diff-mode-shared-map (kbd "k") 'next-line)
;;   (define-key diff-mode-shared-map (kbd "l") 'forward-char)
;;   (define-key diff-mode-shared-map (kbd "j") 'backward-char)
;;   (define-key diff-mode-shared-map (kbd "o") 'diff-hunk-next)
;;   (define-key diff-mode-shared-map (kbd "u") 'diff-hunk-prev)
;;   (define-key diff-mode-shared-map (kbd "h") 'diff-file-prev)
;;   (define-key diff-mode-shared-map (kbd ";") 'diff-file-next)
;;   (define-key diff-mode-shared-map (kbd "x") 'diff-hunk-kill)
;;   (define-key diff-mode-shared-map (kbd "s") 'diff-goto-source)
;;   (define-key diff-mode-shared-map (kbd "SPC") 'xah-fly-leader-key-map)
;;   )

(xah-fly--define-keys
 (define-prefix-command 'xah-fly-e-keymap)
 '(
   ("RET" . insert-char)
   ("SPC" . xah-insert-unicode)

   ("W" . xah-insert-double-angle-bracket)
   ("b" . xah-insert-black-lenticular-bracket)
   ("c" . xah-insert-ascii-single-quote)
   ("d" . xah-insert-double-curly-quote)
   ("f" . xah-insert-emacs-quote)
   ("g" . xah-insert-ascii-double-quote)
   ("h" . xah-insert-brace) ; {}
   ("i" . xah-insert-curly-single-quote)
   ("l" . xah-insert-formfeed)
   ("m" . xah-insert-corner-bracket)
   ("n" . xah-insert-square-bracket) ; []
   ("p" . xah-insert-single-angle-quote)
   ("r" . xah-insert-tortoise-shell-bracket )
   ("s" . xah-insert-string-assignment)
   ("t" . xah-insert-paren)
   ("u" . xah-insert-date)
   ("w" . xah-insert-angle-bracket)
   ("y" . xah-insert-double-angle-quote)
   ;;
   ))

(xah-fly--define-keys
 (define-prefix-command 'xah-fly-leader-key-map)
 '(
   ;; ("SPC" . xah-fly-insert-mode-activate)
   ("DEL" . xah-fly-insert-mode-activate)
   ("RET" . execute-extended-command)
   ("TAB" . xah-fly--tab-key-map)
   ("." . xah-fly-dot-keymap)
   ("'" . xah-fill-or-unfill)
   ("," . xah-fly-comma-keymap)
   ("-" . xah-show-formfeed-as-line)
   ;; /
   ;; ;
   ;; =
   ;; [
   ("\\" . toggle-input-method)
   ;; `

   ;; 1
   ;; 2
   ("3" . delete-window)
   ("4" . split-window-right)
   ("5" . balance-windows)
   ("6" . xah-upcase-sentence)
   ;; 7
   ;; 8
   ("9" . ispell-word)
   ;; 0

   ("a" . mark-whole-buffer)
   ("b" . end-of-buffer)
   ("c" . xah-fly-c-keymap)
   ("d" . beginning-of-buffer)
   ("e" . xah-fly-e-keymap)
   ("f" . xah-search-current-word)
   ("g" . xah-close-current-buffer)
   ("h" . xah-fly-h-keymap)
   ("i" . kill-line)
   ("j" . xah-copy-all-or-region)
   ("k" . xah-paste-or-paste-previous)
   ("l" . recenter-top-bottom)
   ("m" . dired-jump)
   ("n" . xah-fly-n-keymap)
   ("o" . exchange-point-and-mark)
   ("p" . query-replace)
   ("q" . xah-cut-all-or-region)
   ("r" . xah-fly-r-keymap)
   ("s" . save-buffer)
   ("t" . xah-fly-t-keymap)
   ("u" . switch-to-buffer)
   ;; v
   ("w" . xah-fly-w-keymap)
   ("x" . xah-toggle-previous-letter-case)
   ("y" . xah-show-kill-ring)
   ;; z
   ;;
   ))


;; commands related to projects
(xah-fly--define-keys
 (define-prefix-command 'xah-fly-dot-keymap)
 '(
   ("u" . projectile-find-file)
   ("l" . projectile-switch-project)
   ("." . projectile-run-eshell)
   ("i" . projectile-vc)
   ("o" . projectile-ripgrep)
   ("y" . projectile-regenerate-tags)
   ("j" . vc-next-action)
   ("+" . vc-update)
   ("=" . vc-diff)
   ("D" . vc-root-diff)
   ("l" . vc-print-log)
   ("L" . vc-print-root-log)
   ("c" . vc-rollback)
   ("d" . vc-dir)
   ("a" . vc-annotate)
   ("h" . vc-insert-headers)
   ("m" . vc-merge)
   ("r" . vc-retrieve-tag)
   ("s" . vc-create-tag)
   ("u" . vc-revert)
   ("v" . vc-next-action)
   ("~" . vc-revision-other-window)
   )
 )

;; setup company
(provide 'ysh_keymap)
