;;; dotenv-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from dotenv-mode.el

(autoload 'dotenv-mode "dotenv-mode" "\
Major mode for `.env' files.

(fn)" t)
(mapc (lambda (s) (add-to-list 'auto-mode-alist `(,s . dotenv-mode))) '("\\.env\\'" "\\.env\\.example\\'"))
(register-definition-prefixes "dotenv-mode" '("dotenv-"))

;;; End of scraped data

(provide 'dotenv-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; dotenv-mode-autoloads.el ends here