;; The following line is necessary for package magit.el on windows machine
;; It sets the language to unicode
(set-language-environment "UTF-8")
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom")
(load "01org.el")
;;(load "02ruby.el")
;;(load "03auto-complete.el")
;;(load "04dsvn.el")

;; set up plantuml for use in org files
(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/custom/plantuml.jar"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(delete-selection-mode nil)
 '(dired-dwim-target t)
 '(global-auto-complete-mode t)
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".DS_Store")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(magit-repository-directories
   (quote
    (("~/.emacs.d" . 0)
     ("~/Developer/sfengservices/sf-dev3" . 0)
     ("~/Developer/sfengservices/bizxdev-hugo" . 0)
     ("C:\\Canberra\\scripts"))))
 '(mark-even-if-inactive t)
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("~/org/")))
 '(org-babel-load-languages (quote ((sh . t) (plantuml . t) (emacs-lisp . t))))
 '(org-export-backends (quote (html md)))
 '(org-mobile-files (quote ("~/Dropbox/org")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages (quote ("hugo" markdown-mode+ markdown-mode magit-gitflow)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode 1)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(url-cookie-file "c:/Users/d032297/.emacs.d/url/cookies")
 '(url-history-file "c:/Users/d032297/.emacs.d/url/history")
 '(url-proxy-services
   (quote
    (("http" . "proxy.wdf.sap.corp:8080")
     ("https" . "proxy.wdf.sap.corp:8080")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
