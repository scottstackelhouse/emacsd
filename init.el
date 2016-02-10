;; Emacs configuration entry point

;; Based on stevendanna's emacs-config
;; https://github.com/stevendanna/emacs-config
(setq gc-cons-threshold 100000000)

(let ((file-name-handler-alist nil)) (load "~/.emacs.d/init2.el"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-boot-parameters "cider repl -s wait")
 '(custom-safe-themes
   (quote
    ("1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "118717ce0a2645a0cf240b044999f964577ee10137b1f992b09a317d5073c02d" "790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" "419637b7a8c9cb43f273980f0c9879c0cbadace6b38efac0281e031772c84eb2" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "0aca3a26459bbb43a77f34bc22851c05c0a5d70d3230cbcdbda4fec20fef77e6" "726dd9a188747664fbbff1cd9ab3c29a3f690a7b861f6e6a1c64462b64b306de" "06c0c2d2e003ed58bc35f6f220855fd1ef89539d68d31bdafc81cdbbf490f7bb" "dea6f85ba6e0226f5081d293703bccbbd87718fc53a3464fdb2007b7d620b1df" default)))
 '(package-selected-packages
   (quote
    (web-mode utop undo-tree tuareg smex slime rainbow-delimiters php-mode paredit markdown-mode magit json-mode json ido-ubiquitous flymake-json flycheck f exec-path-from-shell clojurescript-mode clojure-snippets clojure-mode-extra-font-locking cider-tracing cider-decompile backup-walker autodisass-java-bytecode auctex arduino-mode ac-cider-compliment ac-cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
