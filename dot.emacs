
(add-to-list 'load-path "~/.emacs-site/")
(require 'xcscope)
(autoload 'gtags-mode "gtags" "" t)

 (setq gtags-mode-hook
   '(lambda ()
;         (define-key gtags-mode-map "\eh" 'gtags-display-browser)
;         (define-key gtags-mode-map "\C-]" 'gtags-find-tag-from-here)
;         (define-key gtags-mode-map "\C-t" 'gtags-pop-stack)
         (define-key gtags-mode-map "\el" 'gtags-find-file)
         (define-key gtags-mode-map "\eg" 'gtags-find-with-grep)
;         (define-key gtags-mode-map "\eI" 'gtags-find-with-idutils)
         (define-key gtags-mode-map "\es" 'gtags-find-symbol)
         (define-key gtags-mode-map "\er" 'gtags-find-rtag)
;         (define-key gtags-mode-map "\et" 'gtags-find-tag)
;         (define-key gtags-mode-map "\ev" 'gtags-visit-rootdir)
 ))

(add-hook 'c-mode-common-hook
  (lambda ()
    (require 'gtags)
    (gtags-mode t)))

(require 'taglist)

(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse)

