(autoload 'verilog-mode "verilog-mode" "Verilog mode" t)
(add-to-list 'auto-mode-alist '("\\.sv\\'" . verilog-mode))
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))
(add-hook 'verilog-mode-hook 'auto-complete-mode)

;;untabify on save
(add-hook 'verilog-mode-hook '(lambda ()
  (add-hook 'write-file-functions (lambda()
      (untabify (point-min) (point-max))
      nil))))

 ;; User customization for Verilog mode
 (setq verilog-indent-level             2
       verilog-indent-level-module      2
       verilog-indent-level-declaration 2
       verilog-indent-level-behavioral  2
       verilog-indent-level-directive   2
       verilog-case-indent              2
       verilog-auto-newline             nil
       verilog-auto-indent-on-newline   t
       verilog-tab-always-indent        t
       verilog-auto-endcomments         t
       ;verilog-minimum-comment-distance 40
       verilog-indent-begin-after-if    t
       verilog-auto-lineup              'declarations
       verilog-highlight-p1800-keywords t
;       verilog-linter                   "my_lint_shell_command"
       )
