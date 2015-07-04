;; configure c modes

;; enable smarttab indent-align (active when indent-tabs-mode)
(add-hook 'c-mode-common-hook
          (lambda () (setq indent-tabs-mode t)))

(provide 'init-c-mode)
