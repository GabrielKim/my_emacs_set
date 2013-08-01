(defvar *_defp_emacs-git-gutter* "emacs-git-gutter")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_emacs-git-gutter*))
;;(add-to-list 'load-path "~/.emacs.d/library/emacs-git-gutter")
(require 'git-gutter)
(global-git-gutter-mode t)
