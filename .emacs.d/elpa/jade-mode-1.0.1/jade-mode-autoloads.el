;;; jade-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "jade-mode" "jade-mode.el" (0 0 0 0))
;;; Generated autoloads from jade-mode.el

(autoload 'jade-mode "jade-mode" "\
Major mode for editing jade node.js templates

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.jade\\'" . jade-mode))

(add-to-list 'auto-mode-alist '("\\.pug\\'" . jade-mode))

(register-definition-prefixes "jade-mode" '("jade-"))

;;;***

;;;### (autoloads nil "sws-mode" "sws-mode.el" (0 0 0 0))
;;; Generated autoloads from sws-mode.el

(autoload 'sws-mode "sws-mode" "\
Major mode for editing significant whitespace files

\(fn)" t nil)

(register-definition-prefixes "sws-mode" '("sws-"))

;;;***

;;;### (autoloads nil nil ("jade-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jade-mode-autoloads.el ends here
