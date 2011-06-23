(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(global-set-key (kbd "C-c C-j") 'clojure-jack-in)

(set-face-foreground 'vertical-border
                     (face-attribute 'vertical-border :background))

(eval-after-load 'hl-line
  '(set-face-background 'hl-line "darkseagreen2"))

(add-hook 'eshell-mode-hook
          '(lambda () (fmakunbound 'eshell/sudo)
             (fmakunbound 'eshell/su)))

(defun package-updates ()
  (interactive)
  (package-refresh-contents)
  (dolist (p '(clojure-mode slime slime-repl clojure-test-mode magit
                            paredit starter-kit starter-kit-lisp
                            scpaste idle-highlight-mode))
    (when (not (package-installed-p p))
      (package-install p))))
