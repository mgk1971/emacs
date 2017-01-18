;; Configruation for helm
(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-mini)
	 )
  :config
  (helm-mode 1)
  )
