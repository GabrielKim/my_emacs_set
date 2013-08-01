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
;; edotset�� emacs�� ������ �� module�� ���� .emacs �������ν�, Automatic update�� �����ϵ���
;; ������ �Ǿ��ֽ��ϴ�. 
;; seorenn���� dotemacs�� �����Ͽ� �����Ͽ����ϴ�.

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
    ;; �ӽ÷� ��Ű���� ���� ���� ����� ����. ���� ����.
    (load-library "packages")))

(defun edotset-type-select ()
  (cond
   ;; OSX�� �˾Ƽ� �Ѵ�.
   ((eq system-type 'darwin) (load-library "emacs-type-osx"))
   ;; windows������ cygwin�� ��ġ�Ͽ� ����Ѵ�.
   ((eq system-type 'windows-nt) (load-library "emacs-type-windows"))
   ;; cygwin ���ο��� ���ư��� emacs�� ���� ����. �̳� windows�� ����� ������ �����Ѵ�.
   ((eq system-type 'cygwin) (load-library "emacs-type-cygwin"))
   ;; linux/Unix�� ������ ������ OSX�� ����ϰ� ó���Ѵ�. ������, �����ʿ� ġ���Ͽ� ���/��ɾ �����.
   ((eq system-type 'gnu/linux) (load-library "emacs-type-gnu_linux"))
   ((eq system-type 'gnu/kfreebsd) (load-library "emacs-type-gnu_kfreebsd"))
   ;; �Ƹ� �̳��� kfreebsd�� ������� ������? 64bit���� �����ϴ� ���α׷��鿡 ���� ���� ����?
   ((eq system-type 'berkeley-unix) (load-library "emacs-type-berkeley_unix"))))

(defun edotset-initialize ()
  "initialization to edotset"
  (edotset-load-sequence)
  (edotset-type-select)

  ;; (2) �ܺ� ���α׷� ȯ�� ����.
  ;; cygwin�� ���� ����(for windows System).
  ;(load-mylib "emacs-env-cygwin")

  ;; 3. ��� ������ Load�� ���Ŀ� ���� ����.
  (load-library "emacs-env-MyOptions"))

(provide 'edotset)
