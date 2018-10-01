
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
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

