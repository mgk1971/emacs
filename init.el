(package-initialize)
;; compile all the files .elc files which has a corresponding newer .el file 
(byte-recompile-directory "./elpa")

(add-to-list 'load-path "~/.emacs.d/custom")

(load "01org.el")
(load "02ruby.el")
;; (load "03auto-complete.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (adwaita)))
 '(global-auto-complete-mode t)
 '(grep-find-ignored-directories (quote ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".DS_Store")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("~/org/gtd.org")))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(projectile-global-mode t)
 '(projectile-mode-line-lighter " Projectile")
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
