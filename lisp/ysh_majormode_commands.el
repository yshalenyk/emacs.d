(define-prefix-command 'major-mode-keymap)
(define-key xah-fly-leader-key-map (kbd "SPC") major-mode-keymap)

(defun ysh-leader-j-cmd ()
  (interactive)
  (cond
   ((string= major-mode "diff-mode") (diff-))
   (t (backward-word))
   )
  )

(define-key major-mode-keymap (kbd "SPC") 'ysh-space-cmd)
(define-key major-mode-keymap (kbd "j") 'ysh-leader-j-cmd)

(provide 'ysh_majormode_commands)
