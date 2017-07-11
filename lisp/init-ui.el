(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

;; 更改显示字体大小 13pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 130)

;;(setq  initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode t)

(provide 'init-ui)
