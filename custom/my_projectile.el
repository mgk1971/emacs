
(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (if (package-installed-p 'helm)
      (progn
	(setq projectile-completion-system 'helm)
	(use-package helm-ag
	  :ensure t
	  )
	)
    )
  ) 

(use-package helm-projectile
  :if (package-installed-p 'helm)
  :ensure t
  :config
  (helm-projectile-on)
  ;;  (setq helm-projectile-fuzzy-match nil)
  )

