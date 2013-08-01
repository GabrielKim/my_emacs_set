(add-to-list 'load-path "~/.emacs.d/library/dot-mode")

(require 'dot-mode)
(add-hook find-file-hook 'dot-mode-on)
