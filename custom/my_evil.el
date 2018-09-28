;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd ",,") 'evil-buffer)
  (when (package-installed-p 'projectile)
    (define-key evil-normal-state-map (kbd "\\pf") 'projectile-find-file)
    (define-key evil-normal-state-map (kbd "\\pv") 'projectile-vc)
    (define-key evil-normal-state-map (kbd "\\pp") 'helm-projectile-switch-project)
    (define-key evil-normal-state-map (kbd "\\pss") 'helm-projectile-ag)
    )

  (when (package-installed-p 'ruby-refactor)
    (define-key evil-normal-state-map (kbd "\\rem") 'ruby-refactor-extract-to-method)
    (define-key evil-normal-state-map (kbd "\\relv") 'ruby-refactor-extract-local-variable)
    (define-key evil-normal-state-map (kbd "\\rec") 'ruby-refactor-extract-constant)
    (define-key evil-normal-state-map (kbd "\\rap") 'ruby-refactor-add-parameter)
    (define-key evil-normal-state-map (kbd ",f") 'projectile-find-file)
    (define-key evil-normal-state-map (kbd ",v") 'projectile-vc)
    (define-key evil-normal-state-map (kbd ",p") 'helm-projectile-switch-project)
    (define-key evil-normal-state-map (kbd ",ss") 'helm-projectile-ag)
    )

  (define-key evil-normal-state-map (kbd "q") nil)
  (define-key evil-normal-state-map (kbd "M-.") nil)

  (define-key evil-insert-state-map (kbd "C-e") nil)
  (define-key evil-insert-state-map (kbd "C-d") nil)
  (define-key evil-insert-state-map (kbd "C-k") nil)

  )

;; Evil surround
;; see https://github.com/timcharper/evil-surround
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1)
  )

;; Evel powerline
(use-package powerline-evil
  :ensure t
  :config
  (powerline-evil-vim-color-theme)
  (display-time-mode t)
  )
