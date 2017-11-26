(require 'package)

;;; Standard package repositories

;; We include the org repository for completeness, but don't normally
;; use it.
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;;; Also use Melpa for most packages
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

;; plugin load path
(add-to-list 'load-path "~/.emacs.d/elpa/go-autocomplete-20170626.323/") 
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.5.1/")
(add-to-list 'load-path "~/.emacs.d/elpa/pos-tip-20150318.813/")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20160709.729/")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-complete-0.2/")
(add-to-list 'load-path "~/.emacs.d/elpa/evil-1.2.13/")
(add-to-list 'load-path "~/.emacs.d/elpa/smex-20151212.1409/")
(add-to-list 'load-path "~/.emacs.d/elpa/markdownfmt-20160609.541/")
(add-to-list 'load-path "~/.emacs.d/elpa/markdown-mode+-0.8/")
(add-to-list 'load-path "~/.emacs.d/elpa/markdown-mode-20171121.1304/")
(add-to-list 'load-path "~/.emacs.d/elpa/markdown-preview-eww-20160111.702/")
(add-to-list 'load-path "~/.emacs.d/elpa/markdown-toc-0.1.2/")


;;load theme molikai
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/molokai-theme-20151016.845/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/custom/monokai-emacs/")
;;(setq molokai-theme-kit t)
(load-theme 'monokai t)


;;alived plugin
(require 'pos-tip)
(require 'popup)
(require 'popup-complete)
(require 'go-autocomplete)
(require 'auto-complete-config)
(require 'smex)
(add-hook 'completion-at-point-functions 'go-complete-at-point)
(add-hook 'before-save-hook #'gofmt-before-save)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict/")
(ac-config-default)

;; Enable evil
(setq evil-toggle-key ""); remove default evil-toggle-key C-z, manually setup later
(setq evil-want-C-i-jump nil); don't bind [tab] to evil-jump-forward
(require 'evil)
(evil-mode 1)

;; remove all keybindings from insert-state keymap, use emacs-state when editing
(setcdr evil-insert-state-map nil)

;; ESC to switch back normal-state
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

