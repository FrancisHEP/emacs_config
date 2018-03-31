(package-initialize)

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(custom-set-faces)

(set-background-color "gray20") ;; foreground
(set-foreground-color "gray98") ;; background
(set-face-background 'region "DeepSkyBlue4")
;; (setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)

(set-face-attribute 'default nil :height 130)
(setq make-backup-files nil)

(global-linum-mode t)

(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)  
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 1. turn on highlight current line
;; 2. set any color as the background face of the current line
;; 3. keep the syntax highlighting in the current line
(global-hl-line-mode 2)
(set-face-background 'hl-line "#3e4446")
(set-face-foreground 'highlight nil)

;; (custom-set-variables
;;  '(package-selected-packages (quote (counsel swiper company))))

;; hide tool bar and menu bar
(tool-bar-mode 0)
(menu-bar-mode 0)

;; automatically complete parenthesis
(electric-pair-mode 1)
(setq electric-pair-pairs '(
			    (?\" . ?\")
			    (?\' . ?\')
			    (?\{ . ?\))
			    (?\{ . ?\})
			    ))
