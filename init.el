(setq load-prefer-newer t)

(require 'package)
(setq
 package-archives
 '(("melpa-stable" . "http://stable.melpa.org/packages/")
   ("melpa" . "http://melpa.org/packages/")
   ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package smex
  :ensure t
  :bind (("M-x" . smex))
  :config (smex-initialize))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package cmake-ide
  :ensure t
  :config (cmake-ide-setup))

(use-package nix-mode
  :mode "\\.nix\\'"
  :load-path "~/.emacs.d/nix-mode/")

(setq-default indent-tabs-mode nil)
;Disable backup (file~)
;(setq backup-inhibited t)

; Put autosaves and backups (#file#, file~) in temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

; Use option key as meta
(set-keyboard-coding-system nil)
(setq mac-option-key-is-meta t)
(setq mac-command-key-is-meta nil)
(setq mac-command-modifier nil)
(setq mac-option-modifier 'meta)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
