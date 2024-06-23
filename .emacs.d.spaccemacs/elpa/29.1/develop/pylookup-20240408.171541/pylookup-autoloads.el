;;; pylookup-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from pylookup.el

(autoload 'pylookup-lookup "pylookup" "\
Lookup SEARCH-TERM in the Python HTML indexes.

(fn SEARCH-TERM)" t)
(autoload 'pylookup-set-search-option "pylookup" "\
Set search option interactively

(fn OPTION-STRING)" t)
(autoload 'pylookup-update "pylookup" "\
Run pylookup-update and create the database at `pylookup-db-file'.

(fn SRC &optional APPEND)" t)
(autoload 'pylookup-update-all "pylookup" "\
Run pylookup-update for all sources and create the database at `pylookup-db-file'." t)
(autoload 'pylookup-lookup-at-point "pylookup" "\
Query the for string with help of word read at point and call `pylookup-lookup'" t)
(register-definition-prefixes "pylookup" '("pylookup-"))

;;; End of scraped data

(provide 'pylookup-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; pylookup-autoloads.el ends here