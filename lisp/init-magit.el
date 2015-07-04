;; configure magit
(require 'magit)

(global-set-key (kbd "C-x g") 'magit-status)

(setq magit-last-seen-setup-instructions "1.4.0")

;; (setq-default magit-log-cutoff-length 99999)

(evil-set-initial-state 'magit-popup-mode 'emacs)
(evil-set-initial-state 'magit-revision-mode 'emacs)

(provide 'init-magit)
