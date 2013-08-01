(defvar *_defp_auto-complete* "auto-complete")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_auto-complete*))

;;(add-to-list 'load-path "~/.emacs.d/library/auto-complete")

;; emacs 23 이하.
(when (<= emacs-major-version 23)
  (when (require 'auto-complete-config nil 'noerror)
    (setq ac-comphist-file "~/.emacs.d/vendor/auto-complete/ac-comphist.dat")
    (ac-config-default)

    (global-auto-complete-mode t)

    (require 'auto-complete-etags)))

;; emacs 24 이상.
(when (>= emacs-major-version 24)
  (require 'auto-complete)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/library/auto-complete/ac-dict")
  (require 'auto-complete-config)
  (ac-config-default)
)

;(require 'auto-complete-etags))
