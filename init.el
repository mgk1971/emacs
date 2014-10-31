;; The following line is necessary for package magit.el on windows machine
;; It sets the language to unicode
(set-language-environment "UTF-8")
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom")
(load "01org.el")
;;(load "02ruby.el")
;;(load "03auto-complete.el")
(load "04dsvn.el")

;; set up plantuml for use in org files
(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/custom/plantuml.jar"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (adwaita)))
 '(delete-selection-mode nil)
 '(dired-dwim-target t)
 '(global-auto-complete-mode t)
 '(grep-find-ignored-directories (quote ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".DS_Store")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(magit-repo-dirs (quote ("~/.emacs.d")))
 '(mark-even-if-inactive t)
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("~/Mobile Docs/My Documents/org/")))
 '(org-babel-load-languages (quote ((sh . t) (plantuml . t) (emacs-lisp . t))))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode 1)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(url-proxy-services (quote (("http" . "proxy:8080")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
