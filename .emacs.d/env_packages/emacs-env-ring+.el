(defvar *_defp_ring* "ring")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_ring*))

;;(add-to-list 'load-path "~/.emacs.d/library/ring")
(require 'ring+)
;;(eval-after-load "ring" '(progn (require 'ring+))
