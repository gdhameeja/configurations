(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(beacon-color "#d54e53")
 '(blink-cursor-mode nil)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "bee0a774c597f940fbd46478b5a2b5b8f661718f8ec688e5718975678d477928" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "ea189a6b4dc936136052314926a52e4a6adc635b9f807f8302cc1627cb4b2e70" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "5057614f7e14de98bbc02200e2fe827ad897696bfd222d1bcab42ad8ff313e20" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "0d456bc74e0ffa4bf5b69b0b54dac5104512c324199e96fc9f3a1db10dfa31f3" "54f2d1fcc9bcadedd50398697618f7c34aceb9966a6cbaa99829eb64c0c1f3ca" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "02199888a97767d7779269a39ba2e641d77661b31b3b8dd494b1a7250d1c8dc1" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" default)))
 '(fci-rule-color "#383838")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(global-display-line-numbers-mode t)
 '(grep-command "grep --color -Rn ")
 '(grep-find-command
   (quote
    ("find . -type f -exec grep --color -Rn  /dev/null \\{\\} +" . 56)))
 '(grep-find-template
   "find <D> <X> -type f <F> -exec grep <C> -n --null -e <R> /dev/null \\{\\} +")
 '(grep-highlight-matches (quote auto))
 '(grep-template "grep <X> <C> -n --null -e <R> <F>")
 '(grep-use-null-device t)
 '(grep-use-null-filename-separator t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#ff6c6b")
 '(org-agenda-files (quote ("~/Documents/organizer.org")))
 '(package-selected-packages
   (quote
    (flycheck pylint spacemacs-theme auto-complete monokai-theme one-themes go-mode github-theme darkburn-theme color-theme-sanityinc-tomorrow distinguished-theme zenburn-theme dracula-theme ido-vertical-mode pdf-tools solarized-theme doom-themes borland-blue-theme monokai-alt-theme neotree projectile restclient magit elpy)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(window-divider-mode nil)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "MS  " :slant normal :weight normal :height 113 :width normal)))))

(setq inhibit-startup-screen t)

;; cua-mode
(cua-mode t)

;; lines
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))


;; projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(require 'elpy)
(define-key elpy-mode-map (kbd "<C-down>") nil)
(define-key elpy-mode-map (kbd "<C-up>") nil)
(define-key elpy-mode-map (kbd "<C-left>") nil)
(define-key elpy-mode-map (kbd "<C-right>") nil)

;; set cursor color
(set-cursor-color "#ffffff")

;; disable toolbar
(tool-bar-mode -1)

;; disable menu bar, don't really use it ;)
(menu-bar-mode -1) 


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 

;; enable syntax checking with flymake

(add-hook 'after-init-hook #'global-flycheck-mode)
