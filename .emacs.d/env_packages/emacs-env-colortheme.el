(defvar *_defp_color-theme* "color-theme")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_color-theme*))

;;(add-to-list 'load-path "~/.emacs.d/library/color-theme")

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-tm)))
