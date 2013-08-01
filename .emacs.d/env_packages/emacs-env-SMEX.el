(defvar *_defp_smex* "SMEX")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_smex*))
;;(add-to-list 'load-path "~/.emacs.d/library/smex")

; SMEX - Smart M-x Enhancer (require IDO)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
