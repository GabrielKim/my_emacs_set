;; 아직 동작 안함.
(defvar *_defp_autopair* "autopair")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_autopair*))
;;(add-to-list 'load-path "~/.emacs.d/library/autopair")

(require 'autopair)
;(autopair-global-mode)

(defun turn-on-autopair () 
(interactive)
(autopair-mode -1))

(add-hook 'lisp-mode-hook 'turn-on-autopair) ; lisp mode
(add-hook 'emacs-lisp-mode-hook 'turn-on-autopair) ; elisp mode 
(add-hook 'c-mode-hook 'turn-on-autopair) ; c mode
(add-hook 'c++-mode-hook 'turn-on-autopair) ; c++ mode
(add-hook 'python-mode-hook 'turn-on-autopair) ; python mode
(add-hook 'js-mode-hook 'turn-on-autopair) ; js mode
(add-hook 'js2-mode-hook 'turn-on-autopair) ; js v2 mode
(add-hook 'java-mode-hook 'turn-on-autopair) ; java mode
(add-hook 'latex-mode-hook 'turn-on-autopair) ; latex mode

(setq autopair-autowrap t)
(add-hook 'python-mode-hook
          '(lambda ()
             (setq autopair-handle-action-fns
                   (list 'autopair-default-handle-action
                         'autopair-python-triple-quote-action))))

(provide 'emacs-env-autopair)
