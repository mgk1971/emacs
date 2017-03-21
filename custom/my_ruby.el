;; enhanced ruby mode
(use-package enh-ruby-mode
  :ensure t
  :config
  (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
  (add-to-list 'auto-mode-alist
	       '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode)
	       )
  )

(use-package robe
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'robe-mode)
  )

(use-package ruby-refactor
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'ruby-refactor-mode-launch)
  )

(use-package inf-ruby
  :config
  (setq inf-ruby-default-implementation "pry")
