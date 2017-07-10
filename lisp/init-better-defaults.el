;;去掉顶部的声音
(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(global-linum-mode t)

(define-abbrev-table 'global-abbrev-table'(

					   ("lee" "NicodeLee")
					   
					   ))

(provide 'init-better-defaults)
