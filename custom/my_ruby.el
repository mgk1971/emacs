;; rvm
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

;; Flymake
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Projectile rails
(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; Robes mode
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
