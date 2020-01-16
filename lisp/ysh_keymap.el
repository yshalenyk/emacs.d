;; TODO: text objects navigation with objed (maybe smartparens?)
(use-package objed
  :ensure t)

(use-package ysh_commands
  :demand t)

;; TODO: whichkey mode
;; TODO: calc mode
;; TODO: diff mode
;; TODO: debug mode
;; TODO: ediff mode

(define-key xah-fly-w-keymap (kbd "n") 'make-frame)
(define-key xah-fly-w-keymap (kbd "j") 'other-frame)

(defun ysh-xfk-addon-command ()
  "Modify keys for xah fly key command mode keys
To be added to `xah-fly-command-mode-activate-hook'"
  (interactive)
  (define-key xah-fly-key-map (kbd "j") 'ysh-move-left-cmd)
  (define-key xah-fly-key-map (kbd "l") 'ysh-move-right-cmd)
  (define-key xah-fly-key-map (kbd "i") 'ysh-move-up-cmd)
  (define-key xah-fly-key-map (kbd "k") 'ysh-move-down-cmd)

  (define-key xah-fly-key-map (kbd "n") 'ido-occur)
  (define-key xah-fly-key-map (kbd "2") 'er/expand-region)
  (define-key xah-fly-key-map (kbd "h") 'ysh-region-left-cmd)
  (define-key xah-fly-key-map (kbd ";") 'ysh-region-right-cmd)
  (define-key xah-fly-key-map (kbd "u") 'ysh-word-left-cmd)
  (define-key xah-fly-key-map (kbd "o") 'ysh-word-right-cmd)
  (define-key xah-fly-key-map (kbd "f") 'ysh-toggle-edit)
  (define-key xah-fly-key-map (kbd "d") 'ysh-delete-char-cmd)
  (define-key xah-fly-key-map (kbd "g") 'ysh-delete-region-cmd)
  (define-key xah-fly-key-map (kbd "x") 'ysh-delete-line-cmd)
  (define-key xah-fly-key-map (kbd "e") 'ysh-delete-word-left-cmd)
  (define-key xah-fly-key-map (kbd "r") 'ysh-delete-word-right-cmd)
  (define-key xah-fly-key-map (kbd "b") 'ysh-toggle-cmd)
  (define-key xah-fly-key-map (kbd "m") 'sp-backward-sexp)
  (define-key xah-fly-key-map (kbd ".") 'sp-forward-sexp))

(add-hook 'xah-fly-command-mode-activate-hook 'ysh-xfk-addon-command)


(use-package diff-mode
  :config
  ;; TODO: ediff patch
  ;; TODO:    ("r" . diff-restrict-view)
  ;; TODO: ("R" . diff-reverse-direction)
  (define-key diff-mode-shared-map (kbd "i") 'previous-line)
  (define-key diff-mode-shared-map (kbd "k") 'next-line)
  (define-key diff-mode-shared-map (kbd "l") 'forward-char)
  (define-key diff-mode-shared-map (kbd "j") 'backward-char)
  (define-key diff-mode-shared-map (kbd "o") 'diff-hunk-next)
  (define-key diff-mode-shared-map (kbd "u") 'diff-hunk-prev)
  (define-key diff-mode-shared-map (kbd "h") 'diff-file-prev)
  (define-key diff-mode-shared-map (kbd ";") 'diff-file-next)
  (define-key diff-mode-shared-map (kbd "x") 'diff-hunk-kill)
  (define-key diff-mode-shared-map (kbd "s") 'diff-goto-source)
  (define-key diff-mode-shared-map (kbd "SPC") 'xah-fly-leader-key-map)
  )
;; setup company
(provide 'ysh_keymap)
