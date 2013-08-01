;;; edotset.el -- .emacs configuration for Emacs.

;; Copyright (C) 2013 Doohoon Kim.

;; Original Author: Doohoon Kim(Gabriel) <invi@labex2.org>
;; Version: 0.1.2
;; Keywords: .emacs, dotemacs

;; edotset is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; edotset is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
;; or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
;; License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with edotset. If not, see <http://www.gnu.org/licenses/>.

;; Introduce (English) :
;; edotset is a part of module as other library that mixing into .emacs file,
;; constitution that will able to automatically update.
;; it remaked by seorenn dotemacs set.

;; Introduce (Korean) :
;; edotset은 emacs의 설정을 각 module로 나눈 .emacs 집합으로써, Automatic update가 가능하도록
;; 구성이 되어있습니다. 
;; seorenn님의 dotemacs를 변형하여 제작하였습니다.

;; Note :
;; edotset version 0.1 isn't include Automatically Update function,
;; than version 0.2 will include it function.

(defvar stepall-global_variables nil)
(defvar stepall-env-global nil)
(defvar stepall-env-local nil)

(defun global_variables-initialize ()
  (load-library "global_variables")
  
  (add-to-list 'load-path *_def_dotemacsdotd-default*)
  (add-to-list 'load-path
               (concat *_def_dotemacsdotd-default* *_def_env-global*))
  (add-to-list 'load-path
               (concat *_def_dotemacsdotd-default* *_def_env-local*))
  (add-to-list 'load-path
               (concat *_def_dotemacsdotd-default* *_def_env-packages*))
  (add-to-list 'load-path
               (concat *_def_dotemacsdotd-default* *_def_env-os-specific*)))

(defun edotset-load-sequence ()
  (when (file-exists-p (concat "~/.emacs.d/" "global_variables.el"))
    (global_variables-initialize)
    (setq stepall-global_variables t))
  (when (eq stepall-global_variables t)
    (load-library "env-global-root")
    (setq stepall-env-global t))
  (when (eq stepall-env-global t)
    (load-library "env-local-root")
    (setq stepall-env-local t))
  (when (eq stepall-env-local t)
    ;; 임시로 패키지를 쓰기 위해 만들어 놓음. 추후 삭제.
    (load-library "packages")))

(defun edotset-type-select ()
  (cond
   ;; OSX는 알아서 한다.
   ((eq system-type 'darwin) (load-library "emacs-type-osx"))
   ;; windows에서는 cygwin을 설치하여 사용한다.
   ((eq system-type 'windows-nt) (load-library "emacs-type-windows"))
   ;; cygwin 내부에서 돌아가는 emacs에 대한 설정. 이놈도 windows와 비슷할 것으로 예상한다.
   ((eq system-type 'cygwin) (load-library "emacs-type-cygwin"))
   ;; linux/Unix는 각각의 설정을 OSX와 비슷하게 처리한다. 하지만, 보안쪽에 치중하여 기능/명령어를 만든다.
   ((eq system-type 'gnu/linux) (load-library "emacs-type-gnu_linux"))
   ((eq system-type 'gnu/kfreebsd) (load-library "emacs-type-gnu_kfreebsd"))
   ;; 아마 이놈은 kfreebsd와 비슷하지 않을까? 64bit에서 동작하는 프로그램들에 대한 설정 빼면?
   ((eq system-type 'berkeley-unix) (load-library "emacs-type-berkeley_unix"))))

(defun edotset-initialize ()
  "initialization to edotset"
  (edotset-load-sequence)
  (edotset-type-select)

  ;; (2) 외부 프로그램 환경 설정.
  ;; cygwin에 대한 설정(for windows System).
  ;(load-mylib "emacs-env-cygwin")

  ;; 3. 모든 설정이 Load된 이후에 최종 설정.
  (load-library "emacs-env-MyOptions"))

(provide 'edotset)
