;; Ctrls + htns (dvorak) for navigation
(define-key key-translation-map (kbd "C-n") (kbd "C-t"))
(define-key key-translation-map (kbd "C-t") (kbd "C-n"))

(define-key key-translation-map (kbd "C-p") (kbd "C-n"))
(define-key key-translation-map (kbd "C-n") (kbd "C-p"))

(define-key key-translation-map (kbd "C-h") (kbd "C-b"))
(define-key key-translation-map (kbd "C-b") (kbd "C-h"))

(define-key key-translation-map (kbd "C-h") (kbd "C-b"))
(define-key key-translation-map (kbd "C-b") (kbd "C-s"))
(define-key key-translation-map (kbd "C-d") (kbd "C-h"))
(define-key key-translation-map (kbd "C-f") (kbd "C-d"))
(define-key key-translation-map (kbd "C-s") (kbd "C-f"))

;; More handy C-x
(define-key key-translation-map (kbd "C-u") (kbd "C-x"))
(define-key key-translation-map (kbd "C-x") (kbd "C-u"))

(define-key key-translation-map (kbd "M-n") (kbd "M-t"))
(define-key key-translation-map (kbd "M-t") (kbd "M-n"))

;; they are unused
(define-key key-translation-map (kbd "M-p") (kbd "M-n"))
(define-key key-translation-map (kbd "M-n") (kbd "M-p"))

(define-key key-translation-map (kbd "M-h") (kbd "M-b"))
(define-key key-translation-map (kbd "M-b") (kbd "M-s"))
(define-key key-translation-map (kbd "M-d") (kbd "M-h"))

(define-key key-translation-map (kbd "M-f") (kbd "M-s"))
(define-key key-translation-map (kbd "M-s") (kbd "M-f"))

;; More handy M-x
(define-key key-translation-map (kbd "M-u") (kbd "M-x"))
(define-key key-translation-map (kbd "M-x") (kbd "M-u"))

;; Global keys
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'ysh_keys)







