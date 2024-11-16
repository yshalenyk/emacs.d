(use-package org
  :hook (org-mode . visual-line-mode)
  :init
  (define-prefix-command 'ctl-c-o-org-mode-map)
  (global-set-key (kbd "C-c o") 'ctl-c-o-org-mode-map)
  :bind ("C-c o t" . org-todo)
  :config
  (setq
   org-startup-with-inline-images t
   )
  )


(use-package org-drill
  :straight t)


(defun my/org-roam-open-index ()
  "Directly open the org-roam index note."
  (interactive)
  (let ((node (org-roam-node-from-title-or-alias "INDEX")))
    (if node
        (org-roam-node-visit node)
      (message "Index note not found."))))


(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (file-truename "~/Documents/org-roam"))
  :bind
  ("C-c b i" . org-roam-node-insert)
  ("C-c b b" . org-roam-node-find)
  ("C-c b t" . org-roam-buffer-toggle)
  ("C-c b c" . my/org-roam-open-index)
  :config
  (setq org-roam-database-connector 'sqlite-builtin)
  (org-roam-setup)
  (org-roam-db-autosync-mode)
  )


(use-package org-modern
  :straight t
  :config
  (setq org-hide-emphasis-markers t
      org-pretty-entities t
      org-auto-align-tags nil
      org-tags-column 0
      org-ellipsis "…"
      org-catch-invisible-edits 'show-and-error
      org-special-ctrl-a/e t
      org-insert-heading-respect-content t)
  :hook (org-mode . org-modern-mode)
  )

(use-package simple-httpd
  :straight t)

(use-package f
  :straight t)

(use-package org-roam-ui
  :straight
    (:host github :repo "org-roam/org-roam-ui" :branch "main" :files ("*.el" "out"))
    :after org-roam
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start nil))

(use-package consult-org-roam
  :straight t
  :after (org-roam consult)
  :init
   (require 'consult-org-roam)
   ;; Activate the minor mode
   (consult-org-roam-mode 1)
   :custom
      ;; Use `ripgrep' for searching with `consult-org-roam-search'
   (consult-org-roam-grep-func #'consult-ripgrep)
   ;; Display org-roam buffers right after non-org-roam buffers
   ;; in consult-buffer (and not down at the bottom)
   (consult-org-roam-buffer-after-buffers t)
   :bind
   ("C-c b b" . consult-org-roam-file-find)
   ("C-c b e" . consult-org-roam-backlinks)
   ("C-c b E" . consult-org-roam-backlinks-recursive)
   ("C-c b l" . consult-org-roam-forward-links)
   ("C-c b r" . consult-org-roam-search)
  )
;; (use-package denote
;;   :straight t
;;   :config
;;   (setq
;;    denote-directory (expand-file-name "~/Documents/denote-notes/")
;;    denote-default-extension "org"
;;    denote-prompts '(title keywords)
;;    denote-known-keywords '(memory reflection philosophy index meta)
;;    )
;;   :bind
;;   (("C-c n n" . denote-create-note)
;;    ("C-c n d" . denote-dired)
;;    ("C-c n i" . denote-link)
;;    ("C-c n b" . denote-backlinks))
;;   )

(use-package visual-fill-column
  :straight t
  :hook ((org-mode . visual-line-mode)
         (org-mode . visual-fill-column-mode))
  :init
  (setq visual-fill-column-width 80
        visual-fill-column-center-text t))


(use-package org-remark
  :straight t
  :bind (;; :bind keyword also implicitly defers org-remark itself.
         ;; Keybindings before :map is set for global-map.
         ("C-c n m" . org-remark-mark)
         ("C-c n l" . org-remark-mark-line)
         :map org-remark-mode-map
         ("C-c n o" . org-remark-open)
         ("C-c n ]" . org-remark-view-next)
         ("C-c n [" . org-remark-view-prev)
         ("C-c n r" . org-remark-remove)
         ("C-c n d" . org-remark-delete))
  ;; Alternative way to enable `org-remark-global-tracking-mode' in
  ;; `after-init-hook'.
  ;; :hook (after-init . org-remark-global-tracking-mode)
  :init
  ;; It is recommended that `org-remark-global-tracking-mode' be
  ;; enabled when Emacs initializes. Alternatively, you can put it to
  ;; `after-init-hook' as in the comment above
  (org-remark-global-tracking-mode +1)
  :config
  (use-package org-remark-info :after info :config (org-remark-info-mode +1))
  (use-package org-remark-eww  :after eww  :config (org-remark-eww-mode +1))
  (use-package org-remark-nov  :after nov  :config (org-remark-nov-mode +1)))


(provide 'ysh_org)
