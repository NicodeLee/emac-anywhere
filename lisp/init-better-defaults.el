;;去掉顶部的声音
(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(global-linum-mode t)

 (setq-default abbrev-mode t)
  (define-abbrev-table 'global-abbrev-table '(
                                              ;; signature
                                              ("lee" "NicodeLee")
                                              ;; emacs regex
                                              ))


;;禁止备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;;最近文件
(require 'recentf)
(recentf-mode 1)			
(setq recentf-max-menu-items 25)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-better-defaults)
