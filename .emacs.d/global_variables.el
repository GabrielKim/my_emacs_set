;; Warning : Don't touch this module. it's very important macro & global variables

(defmacro defconstant (symbol initvalue &optional docstring)
  `(defconst ,symbol ,initvalue ,docstring))

(defmacro defparameter (symbol &optional initvalue docstring)
  `(progn
     (defvar ,symbol nil ,docstring)
     (setq   ,symbol ,initvalue)))

;; 중요 전역 변수들.
;; 기본 디렉토리의 str들을 지정한다.
(defparameter *_def_tilde* "~")
(defparameter *_def_slash* "/")
(defparameter *_def_dot* ".")
(defparameter *_def_dotemacsdotd-default* (concat (concat (concat (concat (concat (concat *_def_tilde* *_def_slash*) *_def_dot*) "emacs") *_def_dot*) "d") *_def_slash*))
(defparameter *_def_env-global* (concat "env_global" *_def_slash*))
(defparameter *_def_env-local* (concat "env_local" *_def_slash*))
(defparameter *_def_env-packages* (concat "env_packages" *_def_slash*))
(defparameter *_def_env-os-specific* (concat "env_os_specific" *_def_slash*))
(defparameter *_def_libraries* (concat "libraries" *_def_slash*))
(defparameter *_def_libraries_all_path* (concat *_def_dotemacsdotd-default* *_def_libraries*))
