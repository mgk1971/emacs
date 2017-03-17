;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd ",,") 'evil-buffer)
  (define-key evil-normal-state-map (kbd ",f") 'projectile-find-file)
  (define-key evil-normal-state-map (kbd ",v") 'projectile-vc)
  (define-key evil-normal-state-map (kbd ",p") 'helm-projectile-switch-project)
  (define-key evil-normal-state-map (kbd ",ss") 'helm-projectile-ag)
  (define-key evil-normal-state-map (kbd "q") nil)
  (define-key evil-normal-state-map (kbd "M-.") nil)

  (define-key evil-insert-state-map (kbd "C-e") nil)
  (define-key evil-insert-state-map (kbd "C-d") nil)
  (define-key evil-insert-state-map (kbd "C-k") nil)

  )

;; Evil surround
;; see https://github.com/timcharper/evil-surround

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1)
  )
