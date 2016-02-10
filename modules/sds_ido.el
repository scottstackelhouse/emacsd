;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

;; ido mode settings
(require 'ido)
(require 'ido-ubiquitous)
(ido-mode t)
(ido-ubiquitous-mode t)
;; (setq ido-enable-prefix nil
;;       ido-enable-flex-matching t
;;       confirm-nonexistent-file-or-buffer nil
;;       ido-auto-merge-work-directories-length nil
;;       ido-create-new-buffer 'always
;;       ido-use-virtual-buffers t
;;       ido-use-filename-at-point t
;;       ido-handle-duplicate-virtual-buffers 2
;;       ido-max-prospects 10)
