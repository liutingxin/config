;;; inflections-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "inflections" "inflections.el" (0 0 0 0))
;;; Generated autoloads from inflections.el

(autoload 'inflection-singularize-string "inflections" "\
Return the singularized version of STR.

\(fn STR)" nil nil)

(define-obsolete-function-alias 'singularize-string 'inflection-singularize-string "2.6")

(autoload 'inflection-pluralize-string "inflections" "\
Return the pluralized version of STR.

\(fn STR)" nil nil)

(define-obsolete-function-alias 'pluralize-string 'inflection-pluralize-string "2.6")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "inflections" '("define-inflectors" "inflection-")))

;;;***

;;;### (autoloads nil nil ("inflections-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; inflections-autoloads.el ends here
