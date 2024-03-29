
(defvar je-dir (file-name-directory load-file-name))
(defvar je-core-dir (expand-file-name "core" je-dir))
(defvar je-modules-dir (expand-file-name "modules" je-dir))

(add-to-list 'load-path je-core-dir)
(add-to-list 'load-path je-modules-dir)

(require 'je-packages)
(require 'je-ui)
(require 'je-keybinds)
(require 'je-modules)
(require 'je-utils)

(setq make-backup-files nil)
(setq confirm-kill-emacs 'y-or-n-p)

(add-hook 'after-init-hook (lambda () (message (emacs-init-time))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "8f5a7a9a3c510ef9cbb88e600c0b4c53cdcdb502cfe3eb50040b7e13c6f4e78e" "ca70827910547eb99368db50ac94556bbd194b7e8311cfbdbdcad8da65e803be" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" default))
 '(helm-minibuffer-history-key "M-p")
 '(lsp-ocaml-lsp-server-command '("esy exec-command ocamllsp"))
 '(org-agenda-files nil)
 '(package-selected-packages
   '(pdf-tools visual-fill-column rainbow-delimiters raibow-delimiters whick-key which-key dired evil-collection counsel-projectile projectile counsel ivy general use-package evil doom-themes all-the-icons))
 '(persp-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
