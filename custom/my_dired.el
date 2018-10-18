;;Settings for dired

;;Enable dired-jump keyboard short cut
(require 'dired-x)

;;guess default target directory
(setq dired-dwim-target t)
(setq dired-recursive-deletes (quote always))
;; human readable size
(setq dired-listing-switches "-alh")

;;narrow dired to match filter
(use-package dired-narrow
  :ensure t
  :bind (:map dired-mode-map
              ("/" . dired-narrow))
  )

