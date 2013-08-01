(defvar *_defp_yasnippet* "yasnippet")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_yasnippet*))

;;(add-to-list 'load-path "~/.emacs.d/library/yasnippet")
(require 'yasnippet)

(yas-global-mode 1)
;(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")
