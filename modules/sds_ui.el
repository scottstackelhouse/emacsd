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
    (set-face-attribute 'default nil :height 140 :family "Monaco"))
(if (eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :family "Lucida Sans Typewriter" :height 150 ))
(if (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :family "Lucida Sans Typewriter" :height 100 ))



;; Remove uncessary UI elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode -1)
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


;;setup command key as meta
(setq mac-option-key-is-meta nil
mac-command-key-is-meta t
mac-command-modifier 'meta
mac-option-modifier 'none)

;;turn off wrap indicator
(global-visual-line-mode t)




;;readbility
(defun sds-toggle-readable-mode ()
  "Setup current window to be suitable for reading long novel/article text.
Call again to toggle back."
  (interactive)
  (if (null (get this-command 'state-on-p))
      (progn
        (setq hide-mode-line-saved-mode-line-format 
              mode-line-format mode-line-format nil)
        (setq mode-line-format nil)
        (variable-pitch-mode 0)
        (scroll-bar-mode 0)
        (setq line-spacing 0.4)
        (setq word-wrap t)
        (set-fringe-mode 200)
        (set-face-attribute 'default nil :height 200 :family "Bookman Old Style")
        (redraw-frame (selected-frame))
        (load-theme 'manoj-dark)
        (put this-command 'state-on-p t))
    (progn
      (setq mode-line-format
             hide-mode-line-saved-mode-line-format)
       (setq hide-mode-line-saved-mode-line-format nil)
      (set-face-attribute 'default nil :height 150 :family "Monaco")
      (variable-pitch-mode 0)
      (scroll-bar-mode 0)
      (set-fringe-mode 0)
      (setq line-spacing nil)
      (setq word-wrap nil)
      (load-theme 'deeper-blue)      
      (put this-command 'state-on-p nil)))
    (redraw-frame (selected-frame)))

