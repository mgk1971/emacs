;; The following line is necessary for package magit.el on windows machine
;; It sets the language to unicode
(set-language-environment "UTF-8")
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-global-modes (quote (not inf-ruby-mode)))
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" default)))
 '(delete-selection-mode nil)
 '(dired-dwim-target t)
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".DS_Store")))
 '(inhibit-startup-screen t)
 '(magit-repository-directories
   (quote
    (("~/.emacs.d" . 0)
     ("C:\\Canberra\\scripts"))))
 '(mark-even-if-inactive t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(url-cookie-file "c:/Users/d032297/.emacs.d/url/cookies")
 '(url-history-file "c:/Users/d032297/.emacs.d/url/history")
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))

;;;;;;;;;; Own Configurations

(add-to-list 'load-path "~/.emacs.d/custom")
(load "my_proxy")

;; use-package configuration
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(load "my_org")
(load "my_helm")
;;(load "my_evil")
;;(load "my_ido")
(load "my_projectile")
(load "my_ruby")
(load "my_yaml")

;; ag is the silver searcher
;; see http://agel.readthedocs.io
;; apt-get install silversearcher-ag
(use-package ag
  :ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode 1))

(use-package magit
  :ensure t
  )

(use-package linum-relative
  :ensure t
  :config
  (linum-relative-global-mode 1)
  (setq linum-relative-current-symbol "")
  )

