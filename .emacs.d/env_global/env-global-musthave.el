;; edotset Package �����.
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

;; ** ���߿� edotset �ʼ� ���� ������ �� ������ ��Ŵ.
;; ������ ���̶�, �������� �ٱ��� ���ؼ��� �� ����� ���� ���� �պ��� �߰� �ؾ��� ��.
(defun load-mylib (fname)
  "load-library if file(fname) was exists..."
  (if (file-exists-p (concat (concat "~/.emacs.d/" fname) ".el")) (progn
                                             (load-library fname))))
