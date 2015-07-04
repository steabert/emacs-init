;;-- window/buffer handling

;;-- create windows
(defun split-window-right-and-move-there ()
  (interactive)
  (split-window-right)
  (windmove-right))
(defun split-window-below-and-move-there ()
  (interactive)
  (split-window-below)
  (windmove-down))
(global-set-key (kbd "M-|") 'split-window-right-and-move-there)
(global-set-key (kbd "M-_") 'split-window-below-and-move-there)
(global-set-key (kbd "M--") 'delete-other-windows)
;;-- navigate windows
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-below)
(global-set-key (kbd "M-l") 'windmove-right)
;;-- move between buffers
(global-set-key (kbd "M-q") 'kill-buffer)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-p") 'previous-buffer)

(provide 'init-windows)
