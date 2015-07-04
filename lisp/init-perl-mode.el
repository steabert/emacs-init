;; configure perl mode
;; cperl-mode is preferred to perl-mode
;; "Brevity is the soul of wit" <foo at acm.org>
(defalias 'perl-mode 'cperl-mode)

;; enable smarttab indent-align (active when indent-tabs-mode)
(add-hook 'cperl-mode-hook
          (lambda () (setq indent-tabs-mode t)))

(provide 'init-perl-mode)
