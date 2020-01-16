(defun ysh-space-cmd ()
  (interactive)
  (cond
   (string= major-mode "dired" (dired-mark))
   (t nil)))

(defun ysh-move-left-cmd ()
  (interactive)
  (cond
   ((string= major-mode "calendar-mode") (calendar-backward-day 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-backward-match))
   (t (backward-char))
   )
  )

(defun ysh-move-right-cmd ()
  (interactive)
  (cond
   ((string= major-mode "calendar-mode") (calendar-forward-day 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-forward-match))
   (t (forward-char))
   )
  )

(defun ysh-move-up-cmd ()
  (interactive)
  (cond
   ((string= major-mode "calendar-mode") (calendar-backward-week 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-backward ))
   (t (previous-line))
   )
  )

(defun ysh-move-down-cmd ()
  (interactive)
  (cond
   ((string= major-mode "calendar-mode") (calendar-forward-week 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-forward ))
   (t (next-line))
   )
  )

(defun ysh-region-left-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-prev-dirline 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-backward-filename))
   (t (xah-beginning-of-line-or-block))
   ))

(defun ysh-region-right-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-next-dirline 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-forward-filename))
   (t (xah-end-of-line-or-block))
   ))

(defun ysh-word-right-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-next-subdir 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-visit-result-other-window))
   ((string= major-mode "diff-mode") (diff-hunk-next))
   (t (forward-word))
   )
  )

(defun ysh-word-left-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-prev-subdir 1))
   ((string= major-mode "diff-mode") (diff-hunk-prev))
   (t (backward-word))
   )
  )

(defun ysh-toggle-edit ()
  (interactive)
  (cond
   ;; TODO: ibuffer read only
   ((string= major-mode "dired-mode") (dired-toggle-read-only))
   (t (xah-fly-insert-mode-activate))
   )
  )

(defun ysh-delete-line-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-flag-file-deletion 1))
   ((string= major-mode "ibuffer-mode") (ibuffer-mark-for-delete 1 1 1))
   ((string= major-mode "deadgrep-mode") (deadgrep-kill-process))
   (t (xah-cut-line-or-region))
   )
  )

(defun ysh-delete-char-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-do-kill-lines))
   ((string= major-mode "ibuffer-mode") (ibuffer-do-kill-lines))
   ((string= major-mode "diff-mode") (diff-apply-hunk))
   (t (xah-delete-backward-char-or-bracket-text))
   )
  )


(defun ysh-delete-word-left-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-mark 1))
   ((string= major-mode "ibuffer-mode") (ibuffer-mark-forward 1 1 1))
   (t (xah-backward-kill-word))
   )
  )

(defun ysh-delete-word-right-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-unmark 1))
   ((string= major-mode "ibuffer-mode") (ibuffer-unmark-forward 1 1 1))
   (t (xah-kill-word))
   )
  )

(defun ysh-delete-region-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-do-flagged-delete))
   ((string= major-mode "ibuffer-mode") (ibuffer-do-kill-on-deletion-marks))
   ((string= major-mode "deadgrep-mode") (deadgrep-restart))
   (t (xah-delete-current-text-block))
   )
  )

(defun ysh-commpany-abort-and-command-mode()
  (interactive)
  (progn
    (company-abort)
    (xah-fly-command-mode-activate)))


(defun ysh-toggle-cmd ()
  (interactive)
  (cond
   ((string= major-mode "dired-mode") (dired-toggle-marks))
   ((string= major-mode "ibuffer-mode") (ibuffer-toggle-marks))
   (t (xah-toggle-letter-case))
   )
  )

(provide 'ysh_commands)
