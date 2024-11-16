;; Ctrls + htns (dvorak) for navigation

(define-key key-translation-map (kbd "C-n") (kbd "C-t"))
(define-key key-translation-map (kbd "C-t") (kbd "C-n"))

(define-key key-translation-map (kbd "C-n") (kbd "C-f"))
(define-key key-translation-map (kbd "C-f") (kbd "C-n"))

(define-key key-translation-map (kbd "C-h") (kbd "C-b"))
(define-key key-translation-map (kbd "C-b") (kbd "C-h"))

(define-key key-translation-map (kbd "C-j") (kbd "C-c"))
(define-key key-translation-map (kbd "C-c") (kbd "C-p"))
(define-key key-translation-map (kbd "C-p") (kbd "C-j"))

;; (define-key key-translation-map (kbd "C-b") (kbd "C-s"))

(define-key key-translation-map (kbd "C-d") (kbd "C-h"))
;(define-key key-translation-map (kbd "C-f") (kbd "C-d"))
;; (define-key key-translation-map (kbd "C-s") (kbd "C-f"))

;; Copy and paste
(define-key key-translation-map (kbd "C-,") (kbd "C-w"))
(define-key key-translation-map (kbd "C-w") (kbd "C-,"))
(define-key key-translation-map (kbd "M-,") (kbd "M-w"))
(define-key key-translation-map (kbd "M-w") (kbd "M-,"))

;; command map
(global-set-key (kbd "M-a") 'mark-whole-buffer)
(define-key key-translation-map (kbd "M-a") (kbd "M-x"))
(define-key key-translation-map (kbd "M-x") (kbd "M-a"))
(global-set-key (kbd "s-a") 'execute-extended-command)

;; More handy C-x
(define-key key-translation-map (kbd "C-u") (kbd "C-x"))
(define-key key-translation-map (kbd "C-x") (kbd "C-u"))

;; for word navigation
(define-key key-translation-map (kbd "C-g") (kbd "C-i"))
(define-key key-translation-map (kbd "C-i") (kbd "C-g"))

(define-key key-translation-map (kbd "M-n") (kbd "M-t"))
(define-key key-translation-map (kbd "M-t") (kbd "M-n"))

;;(define-key key-translation-map (kbd "M-p") (kbd "M-n"))
;;(define-key key-translation-map (kbd "M-n") (kbd "M-p"))

(global-set-key (kbd "M-c") 'scroll-down-command)
(global-set-key (kbd "M-n") 'scroll-up-command)


(define-key key-translation-map (kbd "M-h") (kbd "M-b"))
(define-key key-translation-map (kbd "M-b") (kbd "M-s"))
(define-key key-translation-map (kbd "M-d") (kbd "M-h"))

(define-key key-translation-map (kbd "M-f") (kbd "M-s"))
(define-key key-translation-map (kbd "M-s") (kbd "M-f"))

;; Global keys
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "C-,") 'other-window)

(global-set-key (kbd "M-.") 'backward-kill-word)
(global-set-key (kbd "M-p") 'kill-word)

(global-set-key (kbd "C-r") 'forward-word)
(global-set-key (kbd "C-i") 'backward-word)

(global-set-key (kbd "C-.") 'backward-delete-char)
(global-set-key (kbd "C-j") 'delete-char)

;;(global-set-key (kbd "C-o") 'beginning-of-line)
(global-set-key (kbd "C-z") 'comment-region)


(global-set-key (kbd "s-2") 'delete-window)
(global-set-key (kbd "s-3") 'delete-other-windows)
(global-set-key (kbd "C-s-4") 'split-window-right)
(global-set-key (kbd "s-4") 'split-window-below)

;;(global-set-key (kbd "TAB") 'tab-to-tab-stop)
(global-set-key [tab] 'tab-to-tab-stop)

;;(define-key ctl-x-r-map (kbd "e") 'recentf)

(define-prefix-command 'ctl-c-r-map)
(global-set-key (kbd "C-c r") 'ctl-c-r-map)

(define-prefix-command 'ctl-c-c-map)
(global-set-key (kbd "C-c c") 'ctl-c-c-map)
(define-key ctl-c-c-map (kbd "r") 'query-replace)

(define-prefix-command 'ctl-x-c-map)
(global-set-key (kbd "C-x c") 'ctl-x-c-map)


(global-set-key (kbd "s-,") 'xref-find-definitions)
(global-set-key (kbd "s-.") 'xref-go-back)

(global-set-key (kbd "s-2") 'ergoemacs-select-current-line)	

(define-prefix-command 'command-o-keymap)

(global-set-key (kbd "s-o") 'command-o-keymap)
(define-key command-o-keymap (kbd "n") 'forward-sexp)
(define-key command-o-keymap (kbd "h") 'backward-sexp)


(use-package ergoemacs-mode
  :straight t)

(provide 'ysh_keys)
