;; OSX 운영체제에서의 emacs 설정.

;; (1) helm 설정.
(load-mylib "emacs-env-helm")
;; (2) unicad 설정.
(load-mylib "emacs-env-unicad")
;; (3) autopair 설정.
(load-mylib "emacs-env-autopair")
;; (4) magit 설정.
(load-mylib "emacs-env-magit")
;; (5) yasnippet 설정.
(load-mylib "emacs-env-yasnippet")
;; (6-1) popup-el 설정(independant for autocomplete module).
(load-mylib "emacs-env-popup-el")
;; (6-2) autocomplete 설정.
(load-mylib "emacs-env-autocomplete")  
;; (7) ECB 설정.
(load-mylib "emacs-env-ecb")
;; (8) Ring+ 설정.
(load-mylib "emacs-env-ring+") ;;
;; (9-1) hexrgb 설정.
(load-mylib "emacs-env-hexrgb")
;; (9-2) eyedropper 설정.
(load-mylib "emacs-env-eyedropper")
;; (9-3) 
(load-mylib "emacs-env-face-list")
;; (9-3) facemenu+ 설정.
(load-mylib "emacs-env-facemenu+")
;; (10) Color Theme 설정.
(load-mylib "emacs-env-colortheme")
;; (11) SMEX 설정(require IDO).
(load-mylib "emacs-env-SMEX")
;; (12-1) git-gutter for Emacs 설정.
(load-mylib "emacs-env-emacs-git-gutter")
;; (12-2) git-gutter-fringe 설정.
(load-mylib "emacs-env-emacs-git-gutter-fringe")
;;
(load-mylib "emacs-env-flymake")
;;
;;(load-mylib "emacs-env-dot-mode")
;;
;;(load-mylib "emacs-env-org-mode")
