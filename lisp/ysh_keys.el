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

(define-key key-translation-map (kbd "C-h") (kbd "C-b"))
(define-key key-translation-map (kbd "C-b") (kbd "C-s"))
(define-key key-translation-map (kbd "C-d") (kbd "C-h"))
(define-key key-translation-map (kbd "C-d") (kbd "C-h"))
;(define-key key-translation-map (kbd "C-f") (kbd "C-d"))
;; (define-key key-translation-map (kbd "C-s") (kbd "C-f"))

;; Copy and paste

(define-key key-translation-map (kbd "C-,") (kbd "C-w"))
(define-key key-translation-map (kbd "C-w") (kbd "C-,"))
(define-key key-translation-map (kbd "M-,") (kbd "M-w"))
(define-key key-translation-map (kbd "M-w") (kbd "M-,"))

;; More handy C-x
(define-key key-translation-map (kbd "C-u") (kbd "C-x"))
(define-key key-translation-map (kbd "C-x") (kbd "C-u"))

(define-key key-translation-map (kbd "M-n") (kbd "M-t"))
(define-key key-translation-map (kbd "M-t") (kbd "M-n"))

;;(define-key key-translation-map (kbd "M-p") (kbd "M-n"))
;;(define-key key-translation-map (kbd "M-n") (kbd "M-p"))
(global-set-key (kbd "M-p") 'scroll-down-command)
(global-set-key (kbd "M-n") 'scroll-up-command)

(define-key key-translation-map (kbd "M-h") (kbd "M-b"))
(define-key key-translation-map (kbd "M-b") (kbd "M-s"))
(define-key key-translation-map (kbd "M-d") (kbd "M-h"))

(define-key key-translation-map (kbd "M-f") (kbd "M-s"))
(define-key key-translation-map (kbd "M-s") (kbd "M-f"))

;; Global keys
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-s") 'swiper)

(provide 'ysh_keys)













