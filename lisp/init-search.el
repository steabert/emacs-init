;; configure everything that has to do with searching for stuff:
;; enable helm, projectile, and tags search magic.

(require 'helm)

;;-- set basic helm search keys
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;;-- same quick keys with evil leader
(evil-leader/set-key
  "e" 'helm-M-x
  "b" 'helm-mini
  "f" 'helm-find-files)

;;-- enable variable size helm popup buffer
(helm-autoresize-mode 1)
(setq-default helm-autoresize-min-height 25)
(setq-default helm-autoresize-max-height 25)

;;-- rebind some helm keys to use tabbing for quick action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-j")  'helm-select-action) ; list actions using C-z

;; tagging setup for GNU GLOBAL
(require 'gtags)
(gtags-mode 1)

;;-- gtags through helm
(require 'helm-gtags)
(helm-gtags-mode)
(setq-default helm-gtags-ignore-case t)
;;-- tag keys should be bound to evil normal mode
(define-key evil-normal-state-map (kbd "C-]") 'helm-gtags-find-tag)
(define-key evil-normal-state-map (kbd "C-t") 'helm-gtags-pop-stack)

;; projectile: commands start with C-c p [...]
(require 'projectile)
(projectile-global-mode)

;;-- projectile through helm: commands start with C-c p h [...]
(require 'helm-projectile)
(helm-projectile-on)

(provide 'init-search)
