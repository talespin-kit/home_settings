(setq org-directory "~/org")
;;; if the operating system has no way to install org-mode through its package 
;;; management then download and point to that directory
;;; (setq load-path (cons (concat org-directory "/org-mode/lisp") load-path))
(require 'org-install)
;; all files ending with .org opens in org-mode as the major mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;; ?? document 
(transient-mark-mode 1)  
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-agenda-files (quote ("~/org/home.org")))
(setq org-todo-keywords (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)"))))
(setq org-refile-targets (quote ((nil :level . 1)
				 (org-agenda-files :level . 1))))
(require 'color-theme)
(if (version<= emacs-version "23.1.1")
    (setq color-theme-is-global t)
  (color-theme-initialize))

(color-theme-dark-laptop)

(column-number-mode 1) ; show (line, col) in status bar(right term ?)
(ido-mode t); switch buffers
(show-paren-mode 1) ; show the matching parenthesis
(global-visual-line-mode 1) ; ?
(mouse-avoidance-mode 'banish) ;move the cusor away to the end when typing

; org-mode buffer listing(C-cb) uses ido-mode
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(menu-bar-mode t)
 '(org-completion-use-ido t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; <f5> opens the home.org file
(global-set-key (kbd "<f5>")
		(lambda () (interactive)
		  (find-file (concat (getenv "HOME") "/org/home.org"))))
