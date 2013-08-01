;; emacs 23 이상에서만 돌아가게끔 설정한다.

(when (>= emacs-major-version 23)
  ;; 1. emacs를 사용할 전체 환경 load 영역.
  ;; 이것은 무조건 Version 종속이다.

  ;; (1) emacs Key Binding 및 환경 설정 영역.
  ;; OS 비종속 기능들만 모은다.
  ;; emacs 전체 기능 및 UI 환경 설정.
  (load-library "env-local-master")
  ;; display에 대한 설정.
  (load-library "env-local-disp")
  ;; search
  (load-library "env-local-search")
  ;; file Explorer
  (load-library "env-local-fileexplorer")
  ;; moving
  (load-library "env-local-moveregion")
  ;; grep 설정
  (load-library "env-local-grep")
  ;; ibuffer
  (load-library "env-local-ibuffer")
  ;; ido
  (load-library "env-local-ido"))

  ;; package loader(edotset 핵심)
  ;(load-mylib "emacs-packages-loader")
  ;(edotset-packages-load))
