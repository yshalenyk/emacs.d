(use-package org
  :hook (org-mode . visual-line-mode)
  :config
  (setq
   org-startup-with-inline-images t
   )
  )


(use-package org-drill
  :straight t)

(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (file-truename "~/Documents/org-roam"))
  :bind
  ("C-c b i" . org-roam-node-insert)
  ("C-c b b" . org-roam-node-find)
  ("C-c b t" . org-roam-buffer-toggle)
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


(provide 'ysh_org)
