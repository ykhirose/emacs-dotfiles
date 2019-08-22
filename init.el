;; function for adding load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(format (concat "path =" path))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; Add directories and sub directories to load-path
(add-to-load-path "elisp" "conf" "public_repos")

(when (require 'auto-install nil t)
  (setq auto-install-directory "~/.emacs.d/elisp/"))

;; MELPA
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                         ("melpa" . "https://melpa.org/packages/")))

;; MELPA-stable
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Marmalade
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; Org
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; initialize
(package-initialize)

;; set default-directory
(setq default-directory "C:\\Users\\hiros\\")

;; theme
(setq custom-theme-directory "~/.emacs.d/themes/")
(load-theme 'manoj-dark t)


;; ;; theme
;; (require 'color-theme)
;; (color-theme-initialize)

;; Color
(if window-system (progn
		(set-frame-parameter nil 'alpha 95) ;透明度
    ))
;; Font
(add-to-list 'default-frame-alist '(font . "Ricty Diminished" ))

;; display line-number
(global-linum-mode t)

;; display line-number to mode-line
(line-number-mode t)

;; display column to mode-line
(column-number-mode t)

;; display file path to title bar
(setq frame-title-format "%f")

;; TAB count
(setq-default tab-width 2)

<<<<<<< HEAD
;; Highlight current line
(global-hl-line-mode t)
=======
;; highlight brackets
(show-paren-mode t)
(setq sow-paren-style 'parenthesis)

;; highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "gray20")
>>>>>>> 0ebf0ccc9c30fe597583ea085eee64a5656fab93

;; brackets highlight
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; volatile-highlights
(require 'volatile-highlights)
(volatile-highlights-mode t)

;; disable C-z minimize
(global-set-key "\C-z" nil)

;;; helm
(require 'helm)
(require 'helm-config)

(helm-mode 1)

(setq helm-idle-delay             0.1
      helm-input-idle-delay       0.1
      helm-candidate-number-limit 200)

(global-set-key "\C-x\C-f" 'helm-find-files)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(dumb-jump-mode t)
 '(package-selected-packages
	 (quote
<<<<<<< HEAD
		(cmake-mode volatile-highlights magit dumb-jump helm-gtags smartparens srefactor helm ctags color-theme auto-complete))))
=======
		(wget magit cmake-mode ripgrep dumb-jump sr-speedbar helm-gtags smartparens srefactor helm ctags color-theme auto-complete))))
>>>>>>> 0ebf0ccc9c30fe597583ea085eee64a5656fab93
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ricty Diminished for Powerline" :foundry "outline" :slant normal :weight normal :height 109 :width normal)))))

;;;; semantic
(semantic-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-completions-mode 1)
(global-semantic-decoration-mode 1)
(global-semantic-stickyfunc-mode 1)
(global-semantic-mru-bookmark-mode 1)
<<<<<<< HEAD
=======
(global-set-key (kbd "C-c h") 'helm-semantic-or-imenu)

>>>>>>> 0ebf0ccc9c30fe597583ea085eee64a5656fab93

;;;; srefactor
(require 'srefactor)
(require 'srefactor-lisp)
(define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)

<<<<<<< HEAD
;;;; dumb-jump
(require 'dumb-jump)
(setq dumb-jump-mode t)
(setq dumb-jump-selector 'helm)
(setq dumb-jump-use-prefer-searcher 'rg)

;;;; X window settings
(setq transient-mark-mode t)
(if window-system
		(progn
			(set-frame-parameter nil 'alpha 85)

      ;;;; (setq frame-alpha-lower-limit 10)
			(defun djcb-opacity-modify (&optional dec)
        "modify the transparency of the emacs frame; if DEC is t,
descreate the transparency, otherwise increase it in 10%-steps"
        (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
               (oldalpha (if alpha-or-nil alpha-or-nil 100))
               (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
          (when (and frame-alpha-lower-limit (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
            (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

      (defun toggle-transparency ()
        (interactive)
        (let* ((alpha (find 'alpha (frame-parameters nil) :key #'car))
               (transparent (if (and (consp alpha) (< (cdr alpha) 100))
                                t
                              nil)))
          (if transparent
              (set-frame-parameter nil 'alpha '100)
            (set-frame-parameter nil 'alpha '90))))

      ;; C-8 increase opacity
      ;; C-9 decrease opacity
      ;; C-0 to normal
      (global-set-key (kbd "C-x j 8") 
                      '(lambda ()
                         (interactive)
                         (djcb-opacity-modify)))

      (global-set-key (kbd "C-x j 9") 
                      '(lambda ()
                         (interactive)
                         (djcb-opacity-modify t)))

      (global-set-key (kbd "C-x j 0") 'toggle-transparency)))

;;Menu bar
(if (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

;; max-specpdl-size
(setq max-specpdl-size 10000)

;; set C-h as backspace
(keyboard-translate ?\C-h ?\C-?)
=======

;;;; dumb-jump
(require 'dumb-jump)
(setq dumb-jump-default-project "")
(setq dumb-jump-mode t)
(setq dumb-jump-selector 'helm)
(setq dumb-jump-use-prefer-searcher 'rg)
(setq ripgrep-executable "C:\Tools\ripgrep-11.0.1-i686-pc-windows-msvc\rg.exe")
(setq ripgrep-arguments '("-S"))

;;;; cmake-mode
(require 'cmake-mode)


>>>>>>> 0ebf0ccc9c30fe597583ea085eee64a5656fab93
