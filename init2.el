;; Emacs configuration entry point

(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;uncomment to get alpha/beta packages
;(add-to-list 'package-archives
;             '("melpa" . "http://melpa.org/packages/") t)


(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
                      ac-cider
                      ac-slime
                      auto-complete
                      cider
                      clj-refactor
                      clojure-snippets
                      exec-path-from-shell                      
                      ido-ubiquitous
                      json
                      json-mode
                      magit 
                      markdown-mode 
                      paredit
                      rainbow-delimiters
                      slime
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
