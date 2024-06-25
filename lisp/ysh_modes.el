
;;; additional languages
(use-package rustic
  :straight t
  )

(use-package rust-mode
  :straight t)

(use-package yaml-mode
  :straight t)

(use-package terraform-mode
  :straight t)

(use-package nix-mode
  :straight t)

(use-package graphql-mode
  :straight t)

(use-package nginx-mode
  :straight t)

(use-package go-mode
  :straight t)

;; Assuming usage with dart-mode
(use-package dart-mode
  :straight t
  ;; Optional
  :hook (dart-mode . flutter-test-mode))

(use-package vue-mode
  :straight t)

(use-package flutter
  :after dart-mode
  :bind (:map dart-mode-map
              ("C-M-x" . #'flutter-run-or-hot-reload))
  :custom
  (flutter-sdk-path "/Applications/flutter/"))

(provide 'ysh_modes)

