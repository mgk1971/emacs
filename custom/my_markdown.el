;; Markdown mode is availabele at:
;; http://jblevins.org/projects/markdown-mode/

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; Generate table of contents
;; https://github.com/ardumont/markdown-toc
(use-package markdown-toc
  :ensure t
  )
