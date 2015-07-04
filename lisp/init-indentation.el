;; configure behaviour of indentation
;; and show tabs and trailing whitespace

;;-- set default indentation
(setq-default c-basic-offset 8)
;;-- set width of a tab
(setq-default tab-width 8)
;;-- by default, no tab characters, only spaces
(setq-default indent-tabs-mode nil)

;;-- enable tabs for indentation, spaces for alignment
;;-- this option only takes effect when indent-tabs-mode
;;-- is set to "t" using the language hooks
(require 'smart-tabs-mode)
(smart-tabs-insinuate 'c 'c++ 'cperl 'python)

(global-whitespace-mode t)
(setq-default whitespace-style '(face trailing tabs tab-mark))

(provide 'init-indentation)
