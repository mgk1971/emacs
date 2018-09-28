;; Configruation for helm
(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x C-f" . helm-find-files )
	 ("C-x b" . helm-mini )
	 :map helm-map
  	      ( "<tab>" . helm-execute-persistent-action) ; rebind tab to do persistent action
  	      ( "C-i" . helm-execute-persistent-action) ; make TAB works in terminal
  	      ( "C-z" . helm-select-action) ; list actions using C-z
	      )
  :config
  (helm-mode 1)
  (add-hook 'eshell-mode-hook
          (lambda ()
              (eshell-cmpl-initialize)
              (define-key eshell-mode-map [remap eshell-pcomplete] 'helm-esh-pcomplete)
              (define-key eshell-mode-map (kbd "C-c C-l") 'helm-eshell-history)))
  )


