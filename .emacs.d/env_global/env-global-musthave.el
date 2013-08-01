;; edotset Package 재시작.
(defun restart-package ()
  "Reload all edotset package"
  (interactive)
  (let (dotemacs-default dotemacs-window)
    (setq dotemacs-default "~/.emacs") ;; for NTEmacs
    (setq dotemacs-window "~/_emacs") ;; for XEmacs
    (when (file-exists-p dotemacs-default) 
      (message "Load %s" dotemacs-default)
      (load-file dotemacs-default)
      (when (file-exists-p dotemacs-window)
        (message "Load %s" dotemacs-window)
        (load-file dotemacs-window))
        (message "Could not found .emacs"))))

;; ** 나중에 edotset 필수 모듈로 재조립 및 재편입 시킴.
;; 정적인 것이라, 동적으로 바구기 위해서는 이 모듈을 아주 많이 손보고 추가 해야할 것.
(defun load-mylib (fname)
  "load-library if file(fname) was exists..."
  (if (file-exists-p (concat (concat "~/.emacs.d/" fname) ".el")) (progn
                                             (load-library fname))))
