;; emulate Vi(M): key bindings and modal editing

(require 'evil)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-mode 1)

;; reindent when exiting insert mode (needed with electric indent in some major
;; modes, e.g. Fortran)
(defun auto-indent-and-escape ()
  "auto-indent line and go to normal mode"
  (interactive)
  (indent-according-to-mode)
  (evil-normal-state)
  )
(define-key evil-insert-state-map (kbd "C-,") 'auto-indent-and-escape)

;;-- remap :q
(evil-ex-define-cmd "q" 'evil-delete-buffer)
;;-- remap :wq
(evil-define-command evil-save-and-kill-buffer (file buffer &optional bang)
  "Saves the current buffer and kills it"
  :repeat nil
  (interactive "<f><b><!>")
  (evil-write nil nil nil file bang)
  (evil-delete-buffer buffer bang)
  )
(evil-ex-define-cmd "wq" 'evil-save-and-kill-buffer)
;;-- remap :wp
(evil-define-command evil-save-and-prev-buffer (file &optional bang)
  "Saves the current buffer and switches to the previous one"
  :repeat nil
  (interactive "<f><!>")
  (evil-write nil nil nil file bang)
  (evil-prev-buffer)
  )
(evil-ex-define-cmd "wp" 'evil-save-and-prev-buffer)
;;-- remap :wn
(evil-define-command evil-save-and-next-buffer (file &optional bang)
  "Saves the current buffer and switches to the next one"
  :repeat nil
  (interactive "<f><!>")
  (evil-write nil nil nil file bang)
  (evil-next-buffer)
  )
(evil-ex-define-cmd "wn" 'evil-save-and-next-buffer)

;;-- evil leader, "\" is the default
(evil-leader/set-leader "g")
;;(evil-leader/set-key "e" 'find-file)
(evil-leader/set-key
  "j" 'dired-jump)

;;-- leader keys for a specific mode
;;(evil-leader/set-key-for-mode 'emacs-lisp-mode "b" 'byte-compile-file)

(provide 'init-evil)
