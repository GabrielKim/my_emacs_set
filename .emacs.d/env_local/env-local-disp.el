;; initialization of Display by User PC

;; 투명도 설정.
;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

; definition for emacs transparent value
; (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))

;;(set-frame-width (selected-frame) 1200)
;;(set-frame-height (selected-frame) 800)

;; 폭 및 높이
(setq default-frame-alist
      '((top . 0) (left . 0)
        (width . 200) (height . 55)))
