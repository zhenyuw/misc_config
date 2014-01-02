
(add-to-list 'load-path "~/.emacs.d")

;; double check
;;(autoload 'markdown-mode "markdown-mode.el"
;;  "Major mode for editing markdown files" t)
;;(setq auto-mode-alist
;;      (cons '("\\.md" . markdown-mode) auto-mode-alist))

(blink-cursor-mode 0)

(setq inhibit-splash-screen t)

(scroll-bar-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)

(set-fill-column 70)

;; package (ELPA/MELPA)
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

	    
;; gtags
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-suggested-key-mapping t)

(add-hook 'c-mode-hook
    '(lambda ()
       (gtags-mode 1)
))

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

;; uniquify
(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse)
