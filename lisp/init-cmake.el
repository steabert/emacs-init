;; configure cmake
(require 'cmake-mode)

(setq-default cmake-tab-width 8)

(autoload 'cmake-font-lock-activate "cmake-font-lock" nil t)
(add-hook 'cmake-mode-hook 'cmake-font-lock-activate)

(provide 'init-cmake)
