;; rvm
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

;; Flymake for ruby
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
