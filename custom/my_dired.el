;;Settings for dired

;;guess default target directory
(setq dired-dwim-target t)

;;narrow dired to match filter
(use-package dired-narrow
  :ensure t
  :bind (:map dired-mode-map
              ("/" . dired-narrow))
  )

