;;disable splash screen and startup message
  ;; Define and initialise package repositories
  (require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(ac-config-default)
  ;; use-package to simplify the config file
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure 't)

  ;; Configure Elfeed
  (use-package elfeed
    :ensure t
    :config
    (setq elfeed-db-directory (expand-file-name "elfeed" user-emacs-directory)
          elfeed-show-entry-switch 'display-buffer)
    :bind
    ("C-x w" . elfeed )
    ("C-x r" . elfeed-update))

;; Browser
(setq browse-url-browser-function 'eww-browse-url) ; emacs browser

;; Fringe
(set-fringe-mode '(0 . 0))

;; Font
   (set-face-attribute 'default nil
	:font "JetBrainsMono Nerd Font Bandit 8"
	:weight 'medium)
   (set-face-attribute 'variable-pitch nil
	:font "JetBrainsMono Nerd Font Bandit 8"
	:weight 'medium)
   (set-face-attribute 'fixed-pitch nil
	:font "JetBrainsMono Nerd Font Bandit 8"
	:weight 'medium)

(add-to-list 'default-frame-alist
	     '(font . "JetBrainsMono Nerd Font Bandit 12"))

;; Airline Powerline
(require 'airline-themes)
(load-theme 'airline-light t)

;; Konfigurasi Keybind
(global-set-key (kbd "C-x 8 {") 'dired)
(global-set-key (kbd "C-x d") 'dired)

;; Konfigurasi Untuk Menu, Scroll, dan Tool Bar
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'horizontal-scroll-bar-mode nil)

(global-display-line-numbers-mode 1)
(setq-default elfeed-search-filter "")
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)
(setq x-select-enable-clipboard t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("95ebf5b5e0e65d2985bd6243a4747a11b8c271a6d632b4c83aadfe69c38ecfaa" "28cf1f7cc54ab4ee1ba4a4644046bd661941be92ef8327af56909f340cb9d3d5" default))
 '(elfeed-feeds
   '("https://wilkesley.org/~ian/xah/emacs/blog.xml" "https://alirezahayati.com/feed/" "https://jielse.blog/.rss" "https://obsolete29.com/feed/feed.xml" "https://unwokenarrative.com/rss/" "https://www.phoronix.com/rss.php" "https://euphorus.medium.com/feed" "https://mikegerwitz.com/rss"))
 '(horizontal-scroll-bar-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(airline-themes powerline auto-complete bongo elfeed use-package))
 '(scroll-bar-mode nil)
 '(setq elfeed-feeds)
 '(tool-bar-mode nil))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

