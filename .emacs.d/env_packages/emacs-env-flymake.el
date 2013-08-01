(defvar *_defp_flymake* "flymake")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_flymake*))

;;(add-to-list 'load-path "~/.emacs.d/library/flymake")
(require 'flymake)
(flymake-mode t)
