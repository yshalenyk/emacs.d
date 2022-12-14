
;;; additional languages
(use-package rustic
  :quelpa (rustic :fetcher git :url "https://github.com/brotzeit/rustic")
  :after (lsp-mode)
  )

(use-package rust-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package terraform-mode
  :ensure t)

(use-package nix-mode
  :ensure t)

(use-package graphql-mode
  :ensure t)

(use-package nginx-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(use-package dart-mode
  :ensure t)

(use-package vue-mode
  :ensure t)

(use-package csharp-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode)))

(provide 'ysh_modes)

