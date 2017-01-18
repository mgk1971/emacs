(use-package org
  ;; Add key bindings for org
  :bind
  (("C-c l" . org-store-link)
   ("C-c c" . org-capture)
   ("C-c a" . org-agenda)
   ("C-c b" . org-iswitchb)
   )
  :config
  (setq org-agenda-files (quote ("n:\\My Documents\\org\\")))
  (setq org-babel-load-languages (quote ((plantuml . t) (emacs-lisp . t))))
  (setq org-export-backends (quote (html md)))

  ;; Set to the location of your Org files on your local system
  (setq org-directory "~/org")
  )

