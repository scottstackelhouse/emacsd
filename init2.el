;; Emacs configuration entry point

;; Based on stevendanna's emacs-config
;; https://github.com/stevendanna/emacs-config
(setq gc-cons-threshold 100000000)

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
                      ac-cider
                      auto-complete
                      cider
                      cider-decompile
                      cider-tracing
                      clojure-snippets
                      clojurescript-mode
                      ido-ubiquitous
                      ido-ubiquitous
                      json
                      json-mode
                      magit 
                      markdown-mode 
                      paredit
                      php-mode
                      rainbow-delimiters
                      smex
                      undo-tree
                      yasnippet
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; load vendor and custom files
(defvar emacs-dir (file-name-directory load-file-name)
  "top level emacs dir")
(defvar vendor-dir (concat emacs-dir "vendor/")
  "Packages not yet available in ELPA")
(defvar module-dir (concat emacs-dir "modules/")
  "Where the real configuration happens")

;; add to load path
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path module-dir)

;; require packages in modules/
(mapc 'load (directory-files module-dir nil "^[^#].*el$"))

;;set path
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;start server
;;(server-start)

(put 'downcase-region 'disabled nil)
