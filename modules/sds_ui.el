;; Theme
(add-to-list 'custom-theme-load-path (concat emacs-dir "themes/"))
;(load-theme 'sds-colors t)
(load-theme 'deeper-blue)

;; other ui
;; move into the theme eventually
(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

;; font
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :height 140 :family "Monaco")
;;setup command key as meta
(setq mac-option-key-is-meta nil
mac-command-key-is-meta t
mac-command-modifier 'meta
mac-option-modifier 'none))

(if (eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :family "Lucida Sans Typewriter" :height 150 ))
(if (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :family "Lucida Sans Typewriter" :height 100 ))



;; Remove uncessary UI elements
(tool-bar-mode -1)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)

;(menu-bar-mode -1)

;; Modeline
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; tabs
(setq-default indent-tabs-mode nil)
;(setq tab-stop-list (number-sequence 2 120 2))
(setq default-tab-width 4)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
;;behavior
(fset 'yes-or-no-p 'y-or-n-p)

;; linum-mode style
(setq linum-format "%d ")

;;hl-line
;;(global-hl-line-mode)



;;turn off wrap indicator
(global-visual-line-mode t)




