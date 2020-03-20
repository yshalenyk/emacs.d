(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-idle-summary-mode 1)
(global-semantic-stickyfunc-mode 1)
(global-semanticdb-minor-mode 1)
(semantic-mode 1)


(require 'ede)
(global-ede-mode t)

(require 'ede/generic)
(require 'semantic/ia)
(require 'semantic/sb)
(ede-enable-generic-projects)

(require 'srecode)

(global-srecode-minor-mode 1)


;; (use-package ecb
;;   :ensure t
;;   :demand)

(provide 'ysh_semantic)
