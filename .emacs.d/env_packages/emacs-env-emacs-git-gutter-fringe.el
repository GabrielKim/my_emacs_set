(defvar *_defp_fringe-helper* "fringe-helper")
(defvar *_defp_emacs-git-gutter-fringe* "emacs-git-gutter-fringe")

;; git-gutter가 load 된 상태에서 실행한다.
(when (load "git-gutter" t)
  (add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_fringe-helper*))
  (add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_emacs-git-gutter-fringe*))
  ;;(add-to-list 'load-path "~/.emacs.d/library/fringe-helper")
  ;;(add-to-list 'load-path "~/.emacs.d/library/emacs-git-gutter-fringe")

  ;; Must require of git-gutter.
  ;; then, find git-gutter module first.
  (require 'fringe-helper) 
  (require 'git-gutter-fringe)

  (setq git-gutter-fr:side 'right-fringe))
;;(when (eq ))
