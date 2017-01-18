
(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (if (package-installed-p 'helm)
      (setq projectile-completion-system 'helm)
    )
  ) 

(if (package-installed-p 'helm)
  (use-package helm-projectile
    :ensure t
    :config
    (helm-projectile-on)
    ;;  (setq helm-projectile-fuzzy-match nil)
    )
  )
