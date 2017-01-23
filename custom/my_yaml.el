;; Yaml Mode from https://www.emacswiki.org/emacs/YamlMode

(use-package yaml-mode
  :ensure t
  :config
  (add-hook 'yaml-mode-hook
	    (lambda ()
	      (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
  )
