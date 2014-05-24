;; Setting rbenv path
(setq rbenv-installation-dir "/usr/local") 
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))
(global-rbenv-mode)

;; Flymake
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Projectile rails
(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; Robes mode
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
