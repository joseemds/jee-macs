(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  )


(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))


(use-package general)

(general-create-definer je/leader-definer
  :states '(normal insert visual emacs)
  :prefix "SPC"
  :non-normal-prefix "C-c"
  )


;; window managment keys
(je/leader-definer
 "w" '(:ignore t :wk "window")
 "wl" 'evil-window-right
 "wh" 'evil-window-left
 "wk" 'evil-window-up
 "wj" 'evil-window-down
 "wv" 'evil-window-vsplit
 "ws" 'evil-window-split
 "wq" 'evil-window-delete
 )

;;files keybinding
(je/leader-definer
  "f" '(:ignore t :wk "file")
  "ff" '(find-file :wk "Find file")
  "fs" '(save-buffer :wk "Save file")
  )

;;open keybinds
(je/leader-definer
  "o" '(:ignore t :wk "open")
  )
;;help keybinds

(je/leader-definer
  "h" '(:ignore t :wk "help")
  "hf" 'counsel-describe-function
)

;;LSP util bindings

(je/leader-definer
  "g" '(:ignore t :wk "LSP")
  "gh" 'lsp-ui-doc-glance
  )

;; Projectile keybindings
(je/leader-definer
  "p" '(:ignore t :wk "Project")
  "pp" 'projectile-switch-project
  "pf" 'projectile-find-file
  "pk" 'projectile-kill-buffers
  )


;; Buffer keybindings
(je/leader-definer
  "b" '(:ignore t :wk "Buffer")
  "bb" 'switch-to-buffer
  "bc" 'clone-indirect-buffer
  "b[" 'switch-to-prev-buffer
  "b]" 'switch-to-next-buffer
  "bk" 'kill-current-buffer
  "bs" 'save-current-buffer
  )


;; Code keybindings

(je/leader-definer
  "c" '(:ignore t :wk "Code")
  "cl" '(:ignore t :wk "LSP")
  "cll" 'lsp
  "cx" 'consult
  )





(provide 'je-keybinds)
