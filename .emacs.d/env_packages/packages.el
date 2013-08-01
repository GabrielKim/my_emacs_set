;; Contents Lists of Package Libraries Information
;; 1. helm (Incremental completion and selection narrowing framework for Emacs, https://github.com/emacs-helm/helm)
;; 2. unicad (Universal Charset Auto Detector, http://www.emacswiki.org/Unicad)
;; 3. autopair (Useful to insert parentheses, braces, quotes and the like in matching pairs, http://www.emacswiki.org/emacs/AutoPairs)
;; 4. magit (Emacs mode for interacting with the Git version control system, http://www.emacswiki.org/emacs/Magit)
;; 5. yasnippet (Template system for Emacs, https://github.com/capitaomorte/yasnippet)
;; 6-1. popup (Visual popup user interface library for Emacs (dependant at Auto-complete), https://github.com/auto-complete/popup-el)
;; 6-2. Auto-complete (The most intelligent auto-completion extension for GNU Emacs, http://cx4a.org/software/auto-complete/)
;; 7. ecb (Emacs Code Browser, http://ecb.sourceforge.net/)
;; 8. Ring+ (Extensions to Ring Module, http://www.emacswiki.org/emacs/ring+.el)
;; 9. facemenu+ (Extensions to facemenu module, http://www.emacswiki.org/emacs-en/download/facemenu%2b.el)
;; 10. color-theme (emacs-lisp mode for skinning your emacs. http://www.nongnu.org/color-theme/#sec5)
;; 11. SMEX (M-x enhancement for Emacs, https://github.com/nonsequitur/smex/)

;; 2. library ����.

;; (1) helm ����.
(load-library "emacs-env-helm")
;; (2) unicad ����.
(load-library "emacs-env-unicad")
;; (3) autopair ����.
(load-library "emacs-env-autopair")
;; (4) magit ����.
(load-library "emacs-env-magit")
;; (5) yasnippet ����.
(load-library "emacs-env-yasnippet")
;; (6-1) popup-el ����(independant for autocomplete module).
(load-library "emacs-env-popup-el")
;; (6-2) autocomplete ����.
(load-library "emacs-env-autocomplete")  
;; (7) ECB ����.
(load-library "emacs-env-ecb")
;; (8) Ring+ ����.
(load-library "emacs-env-ring+") ;;
;; (9-1) hexrgb ����.
(load-library "emacs-env-hexrgb")
;; (9-2) eyedropper ����.
(load-library "emacs-env-eyedropper")
;; (9-3) 
(load-library "emacs-env-face-list")
;; (9-3) facemenu+ ����.
(load-library "emacs-env-facemenu+")
;; (10) Color Theme ����.
(load-library "emacs-env-colortheme")
;; (11) SMEX ����(require IDO).
(load-library "emacs-env-SMEX")
;; (12-1) git-gutter for Emacs ����.
(load-library "emacs-env-emacs-git-gutter")
;; (12-2) git-gutter-fringe ����.
(load-library "emacs-env-emacs-git-gutter-fringe")
;;
(load-library "emacs-env-flymake")
;;
;;(load-mylib "emacs-env-dot-mode")
;;
;;(load-mylib "emacs-env-org-mode")

(load-library "emacs-env-cygwin-mount")
