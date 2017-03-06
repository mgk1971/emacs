;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map "q" nil) 
  )

;; Evil surround
;; see https://github.com/timcharper/evil-surround

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1)
  )
