;; Show line numbers
(global-linum-mode t)

;;el-get setup
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;;Keyboard binding for undo/redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】

;; Open multiple files with same name efficiently
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

;; Refresh emacs after git checkout branch
(global-set-key [f5] 'revert-buffer)

;; Move between windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;;WhiteSpaceMode
(require 'whitespace)
 (setq whitespace-style '(face empty lines-tail trailing))
 (global-whitespace-mode t)
(setq-default indent-tabs-mode nil)
