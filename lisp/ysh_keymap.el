(define-prefix-command 'major-mode-keymap)

(defun my/format-buffer()
  (interactive)
  (cond
   ((string-equal major-mode "rust-mode") (rust-format-buffer))
   (t nil)))

(defun my/start-interpeter()
  (interactive)
  (cond
   ((string-equal major-mode "python-mode") (run-python))
   (t nil)))

(define-key major-mode-keymap (kbd "f") 'my/format-buffer)
(define-key major-mode-keymap (kbd "p") 'my/start-interpeter)

(define-key xah-fly-leader-key-map (kbd "SPC") major-mode-keymap)


(provide 'ysh_keymap)
