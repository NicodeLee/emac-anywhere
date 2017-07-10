;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
(package-initialize)

(when (>= emacs-major-version 24)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    )

(require 'cl)

;;add whatever packages you want here
(defvar zilongshanren/packages '(
				   company
				   monokai-theme
				   hungry-delete
				   swiper
				   counsel
				   smartparens
				   js2-mode
				   nodejs-repl
				   exec-path-from-shell
				   popwin
				   
				   )  "Default packages")

(setq package-selected-packages zilongshanren/packages)

(defun zilongshanren/packages-installed-p ()
    (loop for pkg in zilongshanren/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (zilongshanren/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zilongshanren/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)
;; config js2-mode for js files
(setq auto-mode-alist
	  (append
	   '(("\\.js\\'" . js2-mode))
	   auto-mode-alist))


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(global-linum-mode t)

(provide 'init-packages)

(load-theme 'monokai t)

(require 'popwin) ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)
