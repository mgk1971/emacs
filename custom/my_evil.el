;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map "q" nil) 
  )
