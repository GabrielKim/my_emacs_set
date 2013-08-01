;; cygwin-mount는 따로 require 하지 않아도 된다.
;; setup-cygwin에서 불리워지기 때문이다.
;; 여기서는 디렉토리만 입력 시킨다.

(defvar *_defp_cygwin-mount* "cygwin-mount")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_cygwin-mount*))
