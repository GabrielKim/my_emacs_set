;; emacs helm ����.
(defvar *_defp_helm* "helm")
;; path ����

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_helm*))
;;(add-to-list 'load-path "~/.emacs.d/libraries/helm")
;; helm configure
(require 'helm-config)
;; delay 0.1 ��
(setq helm-idle-delay 0.1)
(setq helm-input-idle-delay 0.1)
;; ����Ű�� M-t
(global-set-key (kbd "M-t") 'helm-for-files)
