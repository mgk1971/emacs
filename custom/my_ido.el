
(use-package ido
  :config
  (setq	ido-everywhere t
	ido-use-filename-at-point 'guess)
  (ido-mode 1))

(use-package flx-ido
  :ensure t
  :config
  (flx-ido-mode 1))
