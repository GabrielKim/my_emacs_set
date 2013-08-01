;; emacs 23 �̻󿡼��� ���ư��Բ� �����Ѵ�.

(when (>= emacs-major-version 23)
  ;; 1. emacs�� ����� ��ü ȯ�� load ����.
  ;; �̰��� ������ Version �����̴�.

  ;; (1) emacs Key Binding �� ȯ�� ���� ����.
  ;; OS ������ ��ɵ鸸 ������.
  ;; emacs ��ü ��� �� UI ȯ�� ����.
  (load-library "env-local-master")
  ;; display�� ���� ����.
  (load-library "env-local-disp")
  ;; search
  (load-library "env-local-search")
  ;; file Explorer
  (load-library "env-local-fileexplorer")
  ;; moving
  (load-library "env-local-moveregion")
  ;; grep ����
  (load-library "env-local-grep")
  ;; ibuffer
  (load-library "env-local-ibuffer")
  ;; ido
  (load-library "env-local-ido"))

  ;; package loader(edotset �ٽ�)
  ;(load-mylib "emacs-packages-loader")
  ;(edotset-packages-load))
