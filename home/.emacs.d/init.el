(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    paredit
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    hc-zenburn-theme
    ido-ubiquitous
    smex
    projectile
    rainbow-delimiters
    tagedit
    magit
    org-plus-contrib
    ))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Disable splash screen
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)


;; org-mode config
;; Activate org-mode
(require 'org)

;; Set up useful workflow states
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; Set up keybinds
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; rainbow-delimeters-mode config
;; Activate it
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


